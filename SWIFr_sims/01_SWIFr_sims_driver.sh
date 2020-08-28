#!/bin/bash

#TO GENERATE TRAIN SET

mkdir -p /work/ih49/simulations/SWIFr/{\
neutral,\
sweep\
}

sbatch -a 1-10 ~/home/CV_DuffySelection/SWIFr_sims/SLiM_CV_SWIFr_sweep.sh
sbatch -a 1-5000 ~/home/CV_DuffySelection/SWIFr_sims/SLiM_CV_SWIFr_neutral.sh

#TO GENERATE TEST SIMULATIONS

#mkdir -p /work/ih49/simulations/SWIFr/{\
#neutral,\
#sweep\
#}

#sbatch -a 1-100 ~/home/CV_DuffySelection/SWIFr_sims/SLiM_CV_SWIFr_sweep.sh
#sbatch -a 1-100 ~/home/CV_DuffySelection/SWIFr_sims/SLiM_CV_SWIFr_neutral.sh
