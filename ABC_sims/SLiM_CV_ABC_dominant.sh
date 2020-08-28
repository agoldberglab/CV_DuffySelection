#!/bin/bash
#SBATCH -p scavenger
#SBATCH -a 1-1000

module load R/4.0.0

c=$SLURM_ARRAY_TASK_ID

~/home/CV_DuffySelection/run_SLiM.R --seed=${c} -N 10000\
 --mig_unif --mig_low=0.1 --mig_high=0.9 --s_unif\
 --s_low=0 --s_high=0.2 -d 1 --exp -r 05\
 -o /work/ih49/simulations/ABC/dominant/\
 --genetic_map=/hpc/home/ih49/home/CV_DuffySelection/datasets/chr1_recombinationrates.txt\
 --slim_dir=/hpc/home/ih49/home/SLiM_build/slim\
 --slim_model=/hpc/home/ih49/home/CV_DuffySelection/admixture.slim
