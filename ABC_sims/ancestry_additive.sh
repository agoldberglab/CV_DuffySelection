#!/bin/bash
#SBATCH -p scavenger
#SBATCH --job-name="localancestry"
#SBATCH -a 1-1000
#SBATCH --mem=5G

c=$SLURM_ARRAY_TASK_ID

declare -i c10="${c}0"


for i in {0..9};
do

c_array[$i]=$((c10 - i))

done

for i in "${c_array[@]}"
do

filename=$(ls /work/ih49/simulations/ABC/additive/*_seed-$i.trees | head -n 1)
~/home/CV_DuffySelection/localancestry_tracts.py $filename
~/home/CV_DuffySelection/localancestry_proportions.py $filename

done
