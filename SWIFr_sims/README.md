# SWIF(r) simulations

SLURM bash scripts used for running analyses on compute cluster. **Directories will need to be changed to run these scripts.**

_WARNING: Generating many .trees files will take up multiple terabytes of storage space._

Includes:

job scripts:

* **SLiM_CV_SWIFr\*.sh** - scripts to run 10 SLiM simulations on a single node. Calls ../run_SLiM.R one time. Demographic model is single-pulse admixture 20 generations in the past with P1 admixture contribution randomly drawn from a uniform distribution from 0.65 to 0.75. Admixed population has initial N=10000, exponential growth at rate of 0.05 per generation. The Duffy-null variant either has selection coefficient s=0 (neutral) or has selection coefficient randomly drawn from uniform distirbution from 0 to 0.2 (sweep).
  
* **ancestry_\*.sh** - scripts to extract ancestry information from 10 .trees files output from SLiM simulations. Calls ../localancestry_proportions.py and ../localancestry_tracts.py 10 times each.

* **calcstats_\*.sh** - scripts to calculate ancestry-based statistics for 10 simulations. Calls ../ancestryanalysis_CV.R 10 times.

driver scripts:

- wrappers to submit jobs that simulate and analyze 50000 neutral simulations, and 100 sweep simulations. Numbered in order. 04_make_df.sh will combine output stats for the 50000 neutral simulations into one .txt file, and the 100 sweep simulations into another .txt file.
