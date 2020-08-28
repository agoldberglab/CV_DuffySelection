#!/usr/bin/env Rscript

suppressMessages(library(tidyverse))
suppressMessages(library(magrittr))

infile <- commandArgs(trailingOnly=TRUE)[1]

chrom_1_length <- 249904549
whole_genome_length <- 2883468901
rest_genome_length <- whole_genome_length - chrom_1_length
bene_locus <- 159174683

#get seed number, m and s
pattern <- "^.+/.+_m-(\\d.*\\d*)_s-(\\d.*\\d*)_seed-(\\d+)_"
pattern_match <- str_match(infile, pattern)
seed <- pattern_match[,4]
s <- pattern_match[,3]
m <- pattern_match[,2]

#ANCESTRY PROPORTION STATS
ancestry_prop <- read.csv(infile, header = TRUE)
ancestry_prop$P1AncestryProportion <- 1 - ancestry_prop$P2AncestryProportion

#mean global ancestry (weighted by interval size)
ancestry_prop$interval <- suppressWarnings(ancestry_prop$GenomicPosition[-1] - ancestry_prop$GenomicPosition)
ancestry_prop <- ancestry_prop[-c(nrow(ancestry_prop)),]
mean_globalancestry <- sum(ancestry_prop$P1AncestryProportion*ancestry_prop$interval/whole_genome_length)

ancestry_prop_chr1 <- ancestry_prop[which(ancestry_prop$GenomicPosition <= chrom_1_length),]
ancestry_prop_restgenome <- ancestry_prop[which(ancestry_prop$GenomicPosition > chrom_1_length),]

mean_chr1_ancestry <- sum(ancestry_prop_chr1$P1AncestryProportion*ancestry_prop_chr1$interval/chrom_1_length)
mean_restgenome_ancestry <- sum(ancestry_prop_restgenome$P1AncestryProportion*ancestry_prop_restgenome$interval/rest_genome_length)


cat(seed, s, m, mean_globalancestry, mean_chr1_ancestry, paste0(mean_restgenome_ancestry, "\n"), sep="\t")
