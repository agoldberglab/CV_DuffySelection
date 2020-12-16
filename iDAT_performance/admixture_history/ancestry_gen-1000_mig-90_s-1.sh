#!/bin/bash
#SBATCH -p scavenger
#SBATCH --job-name="gen1000mig90s1"
#SBATCH -a 1-100

c=$SLURM_ARRAY_TASK_ID

filename=$(ls /work/ih49/simulations/gen-1000_mig-90_s-1/*_seed-$c.trees | head -n 1)
~/home/CV_DuffySelection/localancestry_tracts.py $filename
~/home/CV_DuffySelection/localancestry_proportions.py $filename
