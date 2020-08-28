#! /usr/bin/env python

import msprime, pyslim
import numpy as np
import pandas as pd
import re
import sys

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

breaks = np.zeros(ts.num_trees + 1)
ancestry = np.zeros(ts.num_trees + 1)

for tree in ts.trees(sample_counts=True):
	subpop_sum, subpop_weights = 0, 0
	for root in tree.roots:
		leaves_count = tree.num_samples(root) - 1
		subpop_sum += tree.population(root) * leaves_count
		subpop_weights += leaves_count
	breaks[tree.index] = tree.interval[0]
	ancestry[tree.index] = subpop_sum / subpop_weights

breaks[-1] = ts.sequence_length
ancestry[-1] = ancestry[-2]

#transform arrays to pandas dataframe
ancestry_arr = np.stack((breaks, ancestry), axis = -1)
ancestry_df = pd.DataFrame(ancestry_arr, columns = ["GenomicPosition", "P2AncestryProportion"])

outname = f"{outfile}_ancestryproportions_sample.csv"

#save to csv file
ancestry_df.to_csv(outname)
