#!/bin/bash

mkdir -p /work/ih49/Rstats/SWIFr/{\
sweep,\
neutral\
}

sbatch -a 1-10 ~/home/CV_DuffySelection/SWIFr_sims/calcstats_sweep.sh 
sbatch -a 1-5000 ~/home/CV_DuffySelection/SWIFr_sims/calcstats_neutral.sh
