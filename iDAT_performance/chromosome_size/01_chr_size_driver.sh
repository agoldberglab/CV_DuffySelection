#!/bin/bash

mkdir -p /work/ih49/simulations/{\
chr1_s-0/,\
chr7_s-0/,\
chr15_s-0/,\
chr22_s-0/,\
chr1_s-05/,\
chr7_s-05/,\
chr15_s-05/,\
chr22_s-05/\
}

sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/chr_size/SLiM_chr1_s-0.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/chr_size/SLiM_chr1_s-05.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/chr_size/SLiM_chr7_s-0.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/chr_size/SLiM_chr7_s-05.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/chr_size/SLiM_chr15_s-0.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/chr_size/SLiM_chr15_s-05.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/chr_size/SLiM_chr22_s-0.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/chr_size/SLiM_chr22_s-05.sh
