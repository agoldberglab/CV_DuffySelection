#! /usr/bin/env python

import msprime, pyslim
import numpy as np
import pandas as pd
import math
import sys
import re

def batchList(samples_length, step_size, num_batches):
	'''
	Returns lists of indices for batches of samples to be passed to map_ancestors.
	'''
	first=[0]
	last=[0]
	for i in range(num_batches):
		if i==0:
			first[i] = 0
			last[i] = first[i]+(step_size)
		elif i==(num_batches-1):
			first.append(last[i-1])
			last.append(samples_length)
		else:
			first.append(last[i-1])
			last.append(first[i]+step_size)
	return (first, last)

def dumpTracts(samples, anc_start, anc_end):
	'''
	Returns EdgeTable mapping P1 or P2 ancestry across all chromosomes
	'''
	tablecoll = ts.tables
	ancestor_map = tablecoll.map_ancestors(samples, range(anc_start, anc_end))
	return ancestor_map

def getChildTracts(child, EdgeTable):
	'''
	Returns array of tract starts and ends for one chromosome
	'''
	indices = np.argwhere(EdgeTable.child==child)
	child_arr =[]
	for index in indices:
		child_arr.append([EdgeTable[int(index)].left, EdgeTable[int(index)].right])
		child_arr.sort(key = lambda x: x[0])
	return child_arr

def getMergedTracts(child_arr):
	'''
	Returns merged tracts for one chromosome
	'''
	tracts = []
	start = -1
	max = -1
	for i in range(len(child_arr)):
		t = child_arr[i]
		if t[0] > max:
			if i != 0:
				tracts.append([start, max])
			max = t[1]
			start = t[0]
		else:
			if t[1] >= max:
				max = t[1]
	if max != -1 and [start,max] not in tracts:
		tracts.append([start,max])
	return tracts

def globalAncestry(merged_tracts, chrom_length):
	'''
	Returns mean ancestry proportion for one chromosome
	'''
	merged_tracts = np.asarray(merged_tracts)
	interval = merged_tracts[:,1] - merged_tracts[:,0]
	global_ancestry = interval.sum()/chrom_length
	return global_ancestry

def beneTract(merged_tracts, locus):
	'''
	Returns tract length, start, and end for tract spanning a locus
	'''
	for i in merged_tracts:
		tract_start=i[0]
		tract_end=i[1]
		if np.logical_and(tract_start<=locus, locus<=tract_end):
			tract_length = tract_end - tract_start
			return (tract_start, tract_end, tract_length)

def numSwitches(tracts, left, right):
	'''
	Returns number of ancestry switches along one chromosome from start to end provided
	'''
	num_switches = 0
	if len(tracts) == 1:
		if tracts[0][0] == 0 and tracts[0][1] == chrom_length:
			num_switches = 0
		elif tracts[0][0] == 0 and tracts[0][1] != chrom_length:
			if left <= tracts[0][1] and tracts[0][1] <= right:
				num_switches+=1
		elif tracts[0][1] == chrom_length and tracts[0][0] != 0:
			if left <= tracts[0][0] and tracts [0][0] <= right:
				num_switches+=1
		elif left <= tracts[0][0] and tracts[0][1] <= right:
			num_switches = 2
	else:
		for i in range(len(tracts)):
			t = tracts[i]
			if left <= t[0] and t[1] <= right:
				if t[1] == chrom_length or t[0] == 0:
					num_switches += 1
				else:
					num_switches += 2
			elif left >= t[0] and t[1] >= right:
				num_switches += 0
			elif right >= t[0] and t[1] >= right:
				num_switches += 1
			elif left >= t[0] and t[1] >= left:
				num_switches += 1
	return num_switches

if __name__=="__main__":
	infile = sys.argv[1]
	outfile = re.search("(.*).trees", infile).group(1)

	ts1 = pyslim.load(infile).simplify()

	sample_high = ts1.num_samples

	rng = np.random.default_rng()
	sample1 = rng.choice(range(4, sample_high, 2), size=172, replace=False)
	sample2 = sample1 + 1
	roots_sample = np.array([0,1,2,3])
	sample3 = np.concatenate([roots_sample, sample1, sample2])

	ts = ts1.simplify(sample3)

	chrom_length = ts.sequence_length
	bene_locus = [site.position for site in ts.sites()][0]
	bene_tree = ts.at(bene_locus)

	#get samples with P1 ancestry at bene_locus
	bene_samples = []

	for root in bene_tree.roots:
		if bene_tree.population(root)==0:
			for sample in bene_tree.samples(root):
				if sample >= 4:
					bene_samples.append(sample)

	#get samples with P2 ancestry at bene_locus
	non_bene_samples = []

	for root in bene_tree.roots:
		if bene_tree.population(root)==1:
			for sample in bene_tree.samples(root):
				if sample >= 4:
					non_bene_samples.append(sample)

	with open(f"{outfile}_tractlengths_sample.txt", 'w') as out:
		out.write("tract_length\tstart\tend\tanc\tswitches\tglobal_ancestry\tchild\n")
		
		for anc in ["P1", "P2"]:
			if anc == "P1":
				anc_start = 0
				anc_end = 2
				samples = bene_samples
			elif anc == "P2":
				anc_start = 2
				anc_end = 4
				samples = non_bene_samples
			if len(samples) == 0:
				continue
			elif len(samples) <= 1000:
				batch_size = len(samples)
				batch_num = 1
			else:
				batch_size = 1000
				batch_num = math.ceil(len(samples) / batch_size)
			batch_first, batch_last = batchList(len(samples), batch_size, batch_num)
			for i in range(batch_num):
				anc_map = dumpTracts(samples[batch_first[i]:batch_last[i]], anc_start, anc_end)
				for child in samples[batch_first[i]:batch_last[i]]:
					child_tracts = getMergedTracts(getChildTracts(child, anc_map))
					tract_start, tract_end, tract_length = beneTract(child_tracts, bene_locus)
					switches = numSwitches(child_tracts, 0, chrom_length)
					global_ancestry = globalAncestry(child_tracts, chrom_length)
					out.write(f"{tract_length}\t{tract_start}\t{tract_end}\t{anc}\t{switches}\t{global_ancestry}\t{child}\n")
