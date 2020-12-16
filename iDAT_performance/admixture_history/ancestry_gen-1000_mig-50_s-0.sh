#!/bin/bash
#SBATCH -p scavenger
#SBATCH --job-name="gen1000mig50s0"
#SBATCH -a 1-1000
#SBATCH --mem=20G

c=$SLURM_ARRAY_TASK_ID

filename=$(ls /work/ih49/simulations/gen-1000_mig-50_s-0/*_seed-$c.trees | head -n 1)
~/home/CV_DuffySelection/localancestry_tracts.py $filename
~/home/CV_DuffySelection/localancestry_proportions.py $filename
