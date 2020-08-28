#!/bin/bash

mkdir -p /work/ih49/Rstats/ABC/{\
additive,\
dominant,\
recessive\
}

sbatch -a 1-1000 ~/home/CV_DuffySelection/ABC_sims/calcstats_combined.sh 
#sbatch -a 1-1000 ~/home/CV_DuffySelection/ABC_sims/calcstats_additive.sh
