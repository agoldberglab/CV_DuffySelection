#!/bin/bash
#SBATCH -p scavenger
#SBATCH -a 1-10

module load R/4.0.0

c=$SLURM_ARRAY_TASK_ID

~/home/CV_DuffySelection/run_SLiM.R --seed=${c} -N 10000\
 --mig_unif --mig_low=0.65 --mig_high=0.75 --s_unif\
 --s_low=0 --s_high=0.2 -d 0.5 --exp -r 05\
 -o /work/ih49/simulations/SWIFr/sweep/\
 --genetic_map=/hpc/home/ih49/home/CV_DuffySelection/datasets/chr1_recombinationrates.txt\
 --slim_dir=/hpc/home/ih49/home/SLiM_build/slim\
 --slim_model=/hpc/home/ih49/home/CV_DuffySelection/admixture.slim
