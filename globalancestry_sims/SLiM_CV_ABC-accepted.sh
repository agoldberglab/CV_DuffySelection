#!/bin/bash
#SBATCH -p scavenger
#SBATCH -a 1-50
#SBATCH --mem=10G

module load R/4.0.0

c=$SLURM_ARRAY_TASK_ID

~/home/CV_DuffySelection/globalancestry_sims/run_SLiM_globalancestry.R --seed=${c}\
 --ABC --accepted=/hpc/home/ih49/home/CV_DuffySelection/datasets/accepted_sims_additive_5stats.RData\
 --unif_recomb -o /work/ih49/simulations/globalancestry/ABC_accepted/\
 --slim_dir=/hpc/home/ih49/home/SLiM_build/slim\
 --slim_model=/hpc/home/ih49/home/CV_DuffySelection/globalancestry_sims/exp-05-10000_single-pulse_whole-autosome.slim
