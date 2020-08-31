# CV_DuffySelection

## Overview

## Contents
1. Datasets
2. Neutral simulations
3. SWIF(r) simulations
4. ABC simulations
5. Global ancestry simulations
6. Figure markdowns
7. General use simulation scripts

##  Software used
### SLiM

SLiM v3.4 https://messerlab.org/slim/

### Python libraries for manipulating trees files

pyslim v0.401 https://github.com/tskit-dev/pyslim

msprime v0.7.4 https://msprime.readthedocs.io/

### R package for ABC

abc v2.1 https://cran.r-project.org/web/packages/abc/index.html

### SWIF(r)

SWIF(r) Version 1 https://github.com/ramachandran-lab/SWIFr

## 1. Datasets

Directory containing simulated datasets used for analyses, chr1 and chr2 genetic maps (from IMPUTE2: https://mathgen.stats.ox.ac.uk/impute/1000GP_Phase3.html) reformatted for SLiM, and observed ancestry-based stats calculated for Cabo Verde islands.

## 2. Neutral simulations

Directory containing bash scripts used to generate neutral simulations from 8 different demographic scenarios (see README), extract ancestry information from output files, and calculate ancestry-based statistics used in other analyses.

## 3. SWIF(r) implementation

Directory containing bash scripts used to generate neutral and sweep simulations, extracting ancestry information, and calculate ancestry-based statistics for training SWIF(r).

## 4. ABC estimation

Directory containing bash scripts used to generate sweep simulations, extracting ancestry information, and calculate ancestry-based statistics for ABC estimation of starting admixture proportion and selection coefficient.

## 5. Global ancestry simulations

Directory containing bash scripts used to generate whole autosome and two chromosome simulations, extract ancestry information, and calculate global ancestry statistics.

## 6. Figure markdowns

Directory containing markdowns including Rscripts to generate all figures. Also includes Rscript for calculating observed ancestry-based statistics from empirical data.

## 7. General use simulation scripts

Current directory contains scripts for generating and analyzing SLiM simulations.

* **admixture.slim** - programmable SLiM script for single-chromosome (modeled after human chromosome 1), two-way admixture simulations with one variant (can be neutral or under selection) at the Duffy-null SNP position (chr1:159174683; GRCh37 coordinates in accordance with genetic map).
  * Example usage: 
  ```
  /path/to/SLiM_build/slim -d s=0.01 -d mig=0.65 \
  -d N=10000 -d h=0.5 -d rate='"05"' -d cont_adm=F \
  -d ratesfile='"/path/to/genetic_map.txt"' \
  -d out='"/path/to/out_directory/name_of_file"' \
  /path/to/admixture.slim
  ```
  This will output a "name_of_file.trees" file in the designated out_directory for a 20 generation simulation with single-pulse admixture at generation 1, a P1 (source population fixed for tracked variant) ancestry contribution of 0.65, initial admixed population size of 10000 with exponential growth at a rate of 0.05 per generation. Variant is non-neutral, modeled with an additive selection model and a selection coefficient of 0.01.
  
* **run_SLiM.R** - Rscript to run 10 replicates of SLiM simulations. Can randomly draw admixture contribution and selection coefficient from uniform distribution or set at constant value.
  * Example usage:
  ```
  /path/to/run_SLiM.R --seed=1 -N 10000 \
  --mig_unif --mig_low=0.1 --mig_high=0.9 --s_unif \
  --s_low=0 --s_high=0.2 -d 0.5 --exp -r 05 \
  -o /path/to/out_directory/ \
  --genetic_map=/path/to/genetic_map.txt \
  --slim_dir=/path/to/SLiM_build/slim \
  --slim_model=/path/to/admixture.slim
  ```
  This will output 10 .trees files (seeds 1-10) for single-pulse admixture, a P1 ancestry contribution randomly drawn from the uniform distribution from 0.1 to 0.9, an additive selective model with selection coefficient randomly drawn from the uniform distribution from 0 to 0.2. Admixed population has initial N=10000 with exponential growth at rate 0.05 per generation. The output names will be "/path/to/out_directory/exp-05-10000_single-pulse_h-0.5_m-X.X_s-X.X_seed-X.trees" with X representing the parameters for that specific run.
  
* **localancestry_proportions.py** - Python script to calculate local ancestry proportion across the simulated genome from .trees files from two-way admixture simulations. Based on Python script for tracking P2 local ancestry along the simulated genome that is provided in recipe 17.5 of SLiM manual. (http://benhaller.com/slim/SLiM_Manual.pdf).
  * Example usage:
  ```
  /path/to/localancestry_proportions.py /path/to/simulation_name.trees
  ```
  This will output a simulation_name_ancestryproportions.csv file in the same directory as the simulation_name.trees with P2 local ancestry proportion along the genome.
  
  * **localancestry_proportions_sample.py** first samples 172 random individuals before calculating local ancestry along the genome. Usage is the same.
  
* **localancestry_tracts.py** - Python script to extract tract length-based features from .trees files from two-way admixture simulations. This script assumes only one chromosome and one variant was simulated in the SLiM simulation.
  * Example usage:
  ```
  /path/to/localancestry_tracts.py /path/to/simulation_name.trees
  ```
  This will output a simulation_name_tractlengths.txt file in the same directory as the simulation_name.trees. The output file will include for each simulated chromosome in the population: the length of the ancestry tract spanning the variant of interest (tract_length), the start and end positions of that tract (tract_start, tract_end), the source population (P1 or P2) ancestry for that tract (anc), the number of ancestry switches across the chromosome (switches), the total proportion of P1 or P2 ancestry for the chromosome depending on which source population contributed ancestry at the site of interest (global_ancestry), and the ID corresponding to that simulated chromosome (child).
  
  * **localancestry_tracts_sample.py** first samples 172 random individuals before extracting tract length-based features for the 344 sampled chromosomes. Usage is the same.
  
* **ancestry_analysis.R** - Rscript to calculate ancestry-based statistics from simulation_name_ancestryproportions.csv and simulation_name_tractlengths.txt files. Assumes simulations were modeled after human chromosome 1, with a single variant at the Duffy-null SNP position. Requires both ancestry proportion and tract length files to be in the same directory following the same naming scheme. Will calculate statistics and print to stdout.
  * Example usage:
  ```
  /path/to/ancestry_analysis.R /path/to/simulation_name_ancestryproportions.csv
  ```
  This will output the following parameters and statistics (in order): seed, selection coefficient, P1 initial admixture contribution, percentile rank of P1 local ancestry proportion at the variant of interest, P1 local ancestry proportion at the variant of interest, mean chromosome-wide P1 ancestry, variance in P1 local ancestry proportion along the chromosome, variance in P1 local ancestry proportion in the 10Mb window surrounding the site of interest, the 95% quantile for P1 local ancestry proportion, median P1 ancestry tract spanning the locus of interest, mean P1 ancestry tract spanning the locus of interest, variance in P1 ancestry tract length spanning the locus of interest, 95% quantile of P1 ancestry tract length spanning locus of interest, proportion of individuals with P1 local ancestry tract spanning more than 75% of the chromosome, proportion of individuals with P1 local ancestry tract spanning more than 95% of the chromosome, average number of ancestry switches along the chromosome, proportion of individuals with proportion of P1 ancestry along the entire chromosome 1 greater than 75%, iDAT score.
  
  * **ancestry_analysis_sample.R** is the same script, but assumes the name of the ancestry proportions and tract lengths files include \_sample before the file extension. Usage is the same.
