#!/bin/bash
#SBATCH -p scavenger
#SBATCH --job-name="localancestry"
#SBATCH -a 1-100

c=$SLURM_ARRAY_TASK_ID

declare -i c10="${c}0"


for i in {0..9};
do

c_array[$i]=$((c10 - i))

done

for i in "${c_array[@]}"
do

filename=$(ls /work/ih49/simulations/const-1000_single-pulse/*_seed-$i.trees | head -n 1)
~/home/CV_DuffySelection/localancestry_tracts_sample.py $filename
~/home/CV_DuffySelection/localancestry_proportions_sample.py $filename

filename=$(ls /work/ih49/simulations/const-1000_cont-adm/*_seed-$i.trees | head -n 1)
~/home/CV_DuffySelection/localancestry_tracts_sample.py $filename
~/home/CV_DuffySelection/localancestry_proportions_sample.py $filename

filename=$(ls /work/ih49/simulations/const-10000_single-pulse/*_seed-$i.trees | head -n 1)
~/home/CV_DuffySelection/localancestry_tracts_sample.py $filename
~/home/CV_DuffySelection/localancestry_proportions_sample.py $filename

filename=$(ls /work/ih49/simulations/const-10000_cont-adm/*_seed-$i.trees | head -n 1)
~/home/CV_DuffySelection/localancestry_tracts_sample.py $filename
~/home/CV_DuffySelection/localancestry_proportions_sample.py $filename

done
