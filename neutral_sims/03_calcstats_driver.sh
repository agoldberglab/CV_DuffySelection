#!/bin/bash

mkdir -p /work/ih49/Rstats/{\
const-1000_single-pulse,const-1000_cont-adm,\
const-10000_single-pulse,const-10000_cont-adm,\
exp-05-1000_single-pulse,exp-05-1000_cont-adm,\
exp-05-10000_single-pulse,exp-05-10000_cont-adm\
}

sbatch -a 1-100 ~/home/CV_DuffySelection/neutral_sims/calcstats_const-Ne.sh 
sbatch -a 1-100 ~/home/CV_DuffySelection/neutral_sims/calcstats_exp-Ne.sh
