# Global ancestry simulations

**Directories will need to be changed to run these scripts.**

_WARNING: Generating many .trees files may take up multiple terabytes of storage space._

Current directory contains scripts for generating SLiM whole-autosome and two-chromosome simulations and calculating global ancestry.

* **exp-05-10000_single-pulse_\*.slim** - programmable SLiM script for whole-autosome (modeled after the 22 human autosomes) and two-chromosome (modeled after human chromosomes 1 and 2) two-way admixture simulations with one variant (can be neutral or under selection) at the Duffy-null SNP position (chr1:159174683; GRCh37 coordinates in accordance with genetic map). Whole-autosome simulation assumes uniform within-chromosome recombination rate of 10<sup>-8 </sup>. Two-chromosome simulation requires chr1 and chr2 genetic maps 
  * Example whole-autosome usage:
  ```
  /path/to/SLiM_build/slim -d s=0.01 -d mig=0.65 \
  -d out='"/path/to/out_directory/name_of_file"' \
  /path/to/exp-05-10000_single-pulse_whole-autosome.slim
  ```  
  * Example two-chromosome usage: 
  ```
  /path/to/SLiM_build/slim -d s=0.01 -d mig=0.65 \
  -d ratesfile='"/path/to/genetic_map.txt"' \
  -d out='"/path/to/out_directory/name_of_file"' \
  /path/to/exp-05-10000_single-pulse_two-chromosome.slim
  ```
* **run_SLiM_globalancestry.R** - Rscript to run 10 replicates of SLiM simulations. Can specify initial admixture contribution and randomly draw selection coefficient from uniform distribution OR can use --ABC flag to draw admixture contributions and selection coefficient from ABC results. If --ABC, must provide .RData file with _m_ and _s_ parameters from accepted ABC simulations. Must specify recombination rate as unif (--unif_recomb) for whole-autosome simulations. Otherwise provide a --genetic_map file.
  * Example whole-autosome usage:
  ```
  /path/to/run_SLiM_globalancestry.R --seed=1 \
  --m 0.65 --s_low=0 --s_high=0.2 --unif_recomb \
  -o /path/to/out_directory/ \
  --slim_dir=/path/to/SLiM_build/slim \
  --slim_model=/path/to/exp-05-10000_single-pulse_whole-autosome.slim
  ```
  * Example two-chromosome usage:
  ```
  /path/to/run_SLiM_globalancestry.R --seed=1 \
  --m 0.65 --s_low=0 --s_high=0.2 \
  --genetic_map=/path/to/genetic_map.txt \
  -o /path/to/out_directory/ \
  --slim_dir=/path/to/SLiM_build/slim \
  --slim_model=/path/to/exp-05-10000_single-pulse_whole-autosome.slim
  ```
  * Example ABC-accepted usage:
  ```
  /path/to/run_SLiM_globalancestry.R --seed=1 \
  --ABC --accepted=/path/to/accepted_sims.RData \
  --unif_recomb -o /path/to/out_directory/ \
  --slim_dir=/path/to/SLiM_build/slim \
  --slim_model=/path/to/exp-05-10000_single-pulse_whole-autosome.slim
  ```
* **globalancestry_\*.R** - Rscript to calculate global ancestry statistics from simulation_name_ancestryproportions.csv and simulation_name_tractlengths.txt files. globalancestry_two-chromsome.R assumes simulations were modeled after human chromosome 1 and 2, while globalancestry_whole-autosome.R assumse simulations were modeled after 22 human autosomes. Will calculate statistics and print to stdout.
  * Example usage:
  ```
  /path/to/globalancestry_two-chromosome.R /path/to/two-chromosome_simulation_name_ancestryproportions.csv
  ```
  This will output the following parameters and statistics (in order): seed, selection coefficient, P1 initial admixture contribution, mean genome-wide P1 ancestry, mean chromosome 1 P1 ancestry, mean P1 ancestry for the rest of the simulated genome excluding chromosome 1.


Current direcotry also includes:

job scripts:

* **SLiM_CV_\*.sh** - scripts to run 10 SLiM simulations on a single node. Calls ./run_SLiM_globalancestry.R one time. Demographic model is single-pulse admixture 20 generations in the past with P1 admixture contribution either at 0.65 or drawn from accepted parameters from ABC analysis (.RData must be provided; see ../figure_md/ABC.md and ../figure_md/GlobalAncestry.md). Admixed population has initial N=10000, exponential growth at rate of 0.05 per generation. The Duffy-null variant either has selection coefficient randomly drawn from uniform distirbution from 0 to 0.2, or drawn from accepted parameters from ABC analysis (.RData must be provided).
  
* **ancestry_\*.sh** - scripts to extract local ancestry proportion across genome from 10 .trees files output from SLiM simulations. Calls ../localancestry_proportions.py 10 times.

* **calcstats_\*.sh** - scripts to calculate global ancestry statistics for 10 simulations. Calls ./globalancestry_two-chromosme.R  or ./globalancestry_whole-autosome.R 10 times.

driver scripts:

- wrappers to submit jobs that simulate and analyze 500 simulations for whole-autosome, two-chromosome, and ABC-accepted each. Numbered in order. 04_make_df.sh will combine output stats for the 500 simulations into one .txt file for each of the three simulation sets.
