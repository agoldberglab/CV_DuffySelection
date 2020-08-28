#!/bin/bash
#SBATCH -p scavenger
#SBATCH -a 1-100

module load R/4.0.0

c=$SLURM_ARRAY_TASK_ID

~/home/CV_DuffySelection/run_SLiM.R --seed=${c} -N 1000\
 --mig_unif --mig_low=0.65 --mig_high=0.75 -s 0 -d 0.5\
 -o /work/ih49/simulations/const-1000_single-pulse/\
 --genetic_map=/hpc/home/ih49/home/CV_DuffySelection/datasets/chr1_recombinationrates.txt\
 --slim_dir=/hpc/home/ih49/home/SLiM_build/slim\
 --slim_model=/hpc/home/ih49/home/CV_DuffySelection/admixture.slim
