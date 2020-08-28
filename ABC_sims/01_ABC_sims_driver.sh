#!/bin/bash

mkdir -p /work/ih49/simulations/ABC/{\
dominant,\
additive,\
recessive\
}

sbatch -a 1-1000 ~/home/CV_DuffySelection/ABC_sims/SLiM_CV_ABC_additive.sh
sbatch -a 1-1000 ~/home/CV_DuffySelection/ABC_sims/SLiM_CV_ABC_dominant.sh
sbatch -a 1-1000 ~/home/CV_DuffySelection/ABC_sims/SLiM_CV_ABC_recessive.sh
