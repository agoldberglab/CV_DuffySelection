# Admixture history simulations

_WARNING: Generating many .trees files may take up multiple terabytes of storage space._

Current directory contains scripts for generating SLiM simulations for various admixture histories and calculating ancestry-based statistics.

* **admixture_history.slim** - programmable SLiM script for single-chromosmoe (modeled after the human chromosome 1) with one variant (can be neutral or under selection) at the Duffy-null SNP position (chr1:159174683; GRCh37 coordinates in accordance with genetic map). Modified from [../../admixture.slim](../../admixture.slim) to include option for generation time (include -d tend=_X_ for desired _X_ number of generations to simulate).

* **run_SLiM_admixture_history.R** - Rscript to run 10 replicates of SLiM simulations. Modified from [../../run_SLiM.R/](../../run_SLiM.R) to include option for generation time. Include -t _X_ for desired _X_ number of generations to simulate. 
 
* **ancestryanalysis_admixture_history.R** - Rscript to calculate ancestry statistics from simulation_name_ancestryproportions.csv and simulation_name_tractlengths.txt files. Same usage as [../../ancestryanalysis_CV.R](../../ancestryanalysis_CV.R), but will also print generation time (from the input filename) to stdout. This will output the following parameters and statistics (in order):
    * seed
    * selection coefficient
    * number of generations simulated
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

* **SLiM_\*.sh** - scripts to run 10 SLiM simulations on a single node. Calls [./run_SLiM_admixture_history.R](./run_SLiM_admixture_history.R) one time. Demographic models are below.

   * 10 generation simulations
      * P1 admixture proportion _m_ = 0.1
         * Duffy-null selection coefficient _s_ = 0
         * Duffy-null selection coefficient _s_ = 0.01
         * Duffy-null selection coefficient _s_ = 0.05
         * Duffy-null selection coefficient _s_ = 0.1
      * P1 admixture proportion _m_ = 0.5
         * Duffy-null selection coefficient _s_ = 0
         * Duffy-null selection coefficient _s_ = 0.01
         * Duffy-null selection coefficient _s_ = 0.05
         * Duffy-null selection coefficient _s_ = 0.1
      * P1 admixture proportion _m_ = 0.9
         * Duffy-null selection coefficient _s_ = 0
         * Duffy-null selection coefficient _s_ = 0.01
         * Duffy-null selection coefficient _s_ = 0.05
         * Duffy-null selection coefficient _s_ = 0.1
   * 100 generation simulations
      * P1 admixture proportion _m_ = 0.1
         * Duffy-null selection coefficient _s_ = 0
         * Duffy-null selection coefficient _s_ = 0.01
         * Duffy-null selection coefficient _s_ = 0.05
         * Duffy-null selection coefficient _s_ = 0.1
      * P1 admixture proportion _m_ = 0.5
         * Duffy-null selection coefficient _s_ = 0
         * Duffy-null selection coefficient _s_ = 0.01
         * Duffy-null selection coefficient _s_ = 0.05
         * Duffy-null selection coefficient _s_ = 0.1
      * P1 admixture proportion _m_ = 0.9
         * Duffy-null selection coefficient _s_ = 0
         * Duffy-null selection coefficient _s_ = 0.01
         * Duffy-null selection coefficient _s_ = 0.05
         * Duffy-null selection coefficient _s_ = 0.1
   * 1000 generation simulations
      * P1 admixture proportion _m_ = 0.1
         * Duffy-null selection coefficient _s_ = 0
         * Duffy-null selection coefficient _s_ = 0.01
         * Duffy-null selection coefficient _s_ = 0.05
         * Duffy-null selection coefficient _s_ = 0.1
      * P1 admixture proportion _m_ = 0.5
         * Duffy-null selection coefficient _s_ = 0
         * Duffy-null selection coefficient _s_ = 0.01
         * Duffy-null selection coefficient _s_ = 0.05
         * Duffy-null selection coefficient _s_ = 0.1
      * P1 admixture proportion _m_ = 0.9
         * Duffy-null selection coefficient _s_ = 0
         * Duffy-null selection coefficient _s_ = 0.01
         * Duffy-null selection coefficient _s_ = 0.05
         * Duffy-null selection coefficient _s_ = 0.1
  
* **ancestry_\*.sh** - scripts to extract local ancestry proportion across genome from 10 .trees files output from SLiM simulations. For memory and time purposes, in the case of 1000 generation simulations, scripts run on only 1 .trees file. Calls [../../localancestry_proportions.py](../../localancestry_proportions.py) and [../../localancestry_tracts.py](../../localancestry_tracts.py) 10 (or 1) times.

* **calcstats_\*.sh** - scripts to calculate ancestry statistics for 10 simulations. Calls [./ancestryanalysis_admixture_history.R](./ancestryanalysis_admixture_history.R) 10 times.

driver scripts:

- wrappers to submit jobs that simulate and analyze 1000 simulations for each demographic and selective model as described above. Numbered in order. 04_make_df.sh will combine output stats for the 1000 simulations into one .txt file for each of the 36 simulation sets.
