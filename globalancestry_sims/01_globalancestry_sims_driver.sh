#!/bin/bash

mkdir -p /work/ih49/simulations/globalancestry/{\
two_chromosome,\
whole_autosome,\
ABC_accepted\
}

sbatch -a 1-50 ~/home/CV_DuffySelection/neutral_sims/SLiM_CV_whole-autosome.sh
sbatch -a 1-50 ~/home/CV_DuffySelection/neutral_sims/SLiM_CV_two-chromosome.sh
sbatch -a 1-50 ~/home/CV_DuffySelection/neutral_sims/SLiM_CV_ABC-accepted.sh
