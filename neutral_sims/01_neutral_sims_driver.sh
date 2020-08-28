#!/bin/bash

mkdir -p /work/ih49/simulations/{\
const-1000_single-pulse,const-1000_cont-adm,\
const-10000_single-pulse,const-10000_cont-adm,\
exp-05-1000_single-pulse,exp-05-1000_cont-adm,\
exp-05-10000_single-pulse,exp-05-10000_cont-adm\
}

sbatch -a 1-100 ~/home/CV_DuffySelection/neutral_sims/SLiM_CV_neutral_const-1000_single-pulse.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/neutral_sims/SLiM_CV_neutral_const-10000_single-pulse.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/neutral_sims/SLiM_CV_neutral_const-1000_cont-adm.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/neutral_sims/SLiM_CV_neutral_const-10000_cont-adm.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/neutral_sims/SLiM_CV_neutral_exp-05-1000_single-pulse.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/neutral_sims/SLiM_CV_neutral_exp-05-10000_single-pulse.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/neutral_sims/SLiM_CV_neutral_exp-05-1000_cont-adm.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/neutral_sims/SLiM_CV_neutral_exp-05-10000_cont-adm.sh
