#!/bin/bash
#SBATCH -p scavenger
#SBATCH -a 1-100

module load R/4.0.0

c=$SLURM_ARRAY_TASK_ID

~/home/CV_DuffySelection/Revisions/run_SLiM_admixture_history.R --seed=${c} -N 10000\
 --mig=0.5 -s 0.05 -d 0.5 -t 100\
 -o /work/ih49/simulations/gen-100_mig-50_s-05/\
 --genetic_map=/hpc/home/ih49/home/CV_DuffySelection/datasets/chr1_recombinationrates.txt\
 --slim_dir=/hpc/home/ih49/home/SLiM_build/slim\
 --slim_model=/hpc/home/ih49/home/CV_DuffySelection/Revisions/admixture_history.slim
