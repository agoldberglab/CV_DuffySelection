# Chromosome-size simulations

_WARNING: Generating many .trees files may take up multiple terabytes of storage space._

Current directory contains scripts for generating SLiM simulations for various chromosome sizes and calculating ancestry-based statistics. In particular, these simulations were used to assess _iDAT_ performance using different _DAT_ cut-off values.

* **CV_chr_size.slim** - programmable SLiM script for single-chromosome simulations with one variant (can be neutral or under selection) at a position 80% of the length of the chromosome. Must specify chromosome length. Assumes a constant population size of N=10000, a single pulse of admixture 20 generations in the past, with P1 admixture proprtion _m_ = 0.73, following Santiago's population history. Must provid genetic map and chromosome length.

    * Example usage:
     ```
     /path/to/SLiM_build/slim -d L=249904549 \
     -d s=0 -d ratesfile='"/path/to/chr1_genetic_map.txt"' \
     -d out='"/path/to/out/directory/filename_seed-"' \
     -d seed=1 /path/to/CV_chr_size.slim
     ```
* **ancestryanalysis_CV_chr_size.R** - Rscript to calculate ancestry statistics from simulation_name_ancestryproportions.csv and simulation_name_tractlengths.txt files. Same usage as [../../ancestryanalysis_CV.R](../../ancestryanalysis_CV.R), but will take into account chromosome name and size. Requires use of chr*_coords_chr_size.RData files to calculate iDAT according to SNPs in our empirical dataset (provided here). This will output the following parameters and statistics (in order):
    * seed
    * selection coefficient
    * chromosome length
    * P1 initial admixture contribution
    * percentile rank of P1 local ancestry proportion at the variant of interest
    * P1 local ancestry proportion at the variant of interest
    * mean chromosome-wide P1 ancestry
    * variance in P1 local ancestry proportion along the chromosome
    * variance in P1 local ancestry proportion in the 10Mb window surrounding the site of interest
    * the 95% quantile for P1 local ancestry proportion
    * median P1 ancestry tract spanning the locus of interest
    * mean P1 ancestry tract spanning the locus of interest
    * variance in P1 ancestry tract length spanning the locus of interest
    * 95% quantile of P1 ancestry tract length spanning locus of interest
    * proportion of individuals with P1 local ancestry tract spanning more than 75% of the chromosome
    * proportion of individuals with P1 local ancestry tract spanning more than 95% of the chromosome
    * average number of ancestry switches along the chromosome
    * proportion of individuals with proportion of P1 ancestry along the entire chromosome 1 greater than 75%
    * _iDAT_ score w/ _DAT_ <span>&#8805;</span> 0.25
    * _iDAT_ score w/ _DAT_ <span>&#8805;</span> 0.125
    * _iDAT_ score w/ _DAT_ <span>&#8805;</span> 0.0625
    * _iDAT_ score w/ _DAT_ <span>&#8805;</span> 0.01


Current directory also includes job and wrapper scripts. **Directories will need to be changed to run these scripts.**

job scripts:

* **SLiM_\*.sh** - scripts to run 10 SLiM simulations on a single node. Calls [./CV_chr_size.slim](./CV_chr_size.slim) 10 times. Scripts include neutral (s-0) and selection simulations (s-0.05) for each of human chromosomes 1, 7, 15, and 22.
  
* **ancestry_\*.sh** - scripts to extract local ancestry proportion across genome from 10 .trees files output from SLiM simulations. Calls [../../localancestry_proportions.py](../../localancestry_proportions.py) and [../../localancestry_tracts.py](../../localancestry_tracts.py) 10 times.

* **calcstats_\*.sh** - scripts to calculate ancestry statistics for 10 simulations. Calls [./ancestryanalysis_CV_chr_size.R](./ancestryanalysis_CV_chr_size.R) 10 times.

driver scripts:

- wrappers to submit jobs that simulate and analyze 1000 simulations for each chromosome size and selective model. Numbered in order. 04_make_df.sh will combine output stats for the 1000 simulations into one .txt file for each of the 8 simulation sets.
