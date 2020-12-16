#!/bin/bash

mkdir -p ~/work/simulations/{\
gen-10_mig-10_s-0/,\
gen-10_mig-50_s-0/,\
gen-10_mig-90_s-0/,\
gen-10_mig-10_s-01/,\
gen-10_mig-50_s-01/,\
gen-10_mig-90_s-01/,\
gen-10_mig-10_s-05/,\
gen-10_mig-50_s-05/,\
gen-10_mig-90_s-05/,\
gen-10_mig-10_s-1/,\
gen-10_mig-50_s-1/,\
gen-10_mig-90_s-1/,\
gen-100_mig-10_s-0/,\
gen-100_mig-50_s-0/,\
gen-100_mig-90_s-0/,\
gen-100_mig-10_s-01/,\
gen-100_mig-50_s-01/,\
gen-100_mig-90_s-01/,\
gen-100_mig-10_s-05/,\
gen-100_mig-50_s-05/,\
gen-100_mig-90_s-05/,\
gen-100_mig-10_s-1/,\
gen-100_mig-50_s-1/,\
gen-100_mig-90_s-1/,\
gen-1000_mig-10_s-0/,\
gen-1000_mig-50_s-0/,\
gen-1000_mig-90_s-0/,\
gen-1000_mig-10_s-01/,\
gen-1000_mig-50_s-01/,\
gen-1000_mig-90_s-01/,\
gen-1000_mig-10_s-05/,\
gen-1000_mig-50_s-05/,\
gen-1000_mig-90_s-05/,\
gen-1000_mig-10_s-1/,\
gen-1000_mig-50_s-1/,\
gen-1000_mig-90_s-1/\
}

sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_neutral_gen-10_mig-10.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_neutral_gen-10_mig-10.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_neutral_gen-10_mig-50.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_neutral_gen-10_mig-90.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_neutral_gen-100_mig-10.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_neutral_gen-100_mig-50.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_neutral_gen-100_mig-90.sh
sbatch --mem=20G -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_neutral_gen-1000_mig-10.sh
sbatch --mem=20G -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_neutral_gen-1000_mig-50.sh
sbatch --mem=20G -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_neutral_gen-1000_mig-90.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-01_gen-10_mig-10.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-01_gen-10_mig-50.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-01_gen-10_mig-90.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-01_gen-100_mig-10.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-01_gen-100_mig-50.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-01_gen-100_mig-90.sh
sbatch --mem=20G -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-01_gen-1000_mig-10.sh
sbatch --mem=20G -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-01_gen-1000_mig-50.sh
sbatch --mem=20G -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-01_gen-1000_mig-90.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-05_gen-10_mig-10.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-05_gen-10_mig-50.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-05_gen-10_mig-90.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-05_gen-100_mig-10.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-05_gen-100_mig-50.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-05_gen-100_mig-90.sh
sbatch --mem=20G -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-05_gen-1000_mig-10.sh
sbatch --mem=20G -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-05_gen-1000_mig-50.sh
sbatch --mem=20G -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-05_gen-1000_mig-90.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-1_gen-10_mig-10.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-1_gen-10_mig-50.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-1_gen-10_mig-90.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-1_gen-100_mig-10.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-1_gen-100_mig-50.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-1_gen-100_mig-90.sh
sbatch --mem=20G -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-1_gen-1000_mig-10.sh
sbatch --mem=20G -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-1_gen-1000_mig-50.sh
sbatch --mem=20G -a 1-100 ~/home/CV_DuffySelection/Revisions/SLiM_s-1_gen-1000_mig-90.sh
