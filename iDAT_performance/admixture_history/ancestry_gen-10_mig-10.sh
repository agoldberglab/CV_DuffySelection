#!/bin/bash
#SBATCH -p scavenger
#SBATCH --job-name="gen10mig10"
#SBATCH -a 1-100

c=$SLURM_ARRAY_TASK_ID

declare -i c10="${c}0"


for i in {0..9};
do

c_array[$i]=$((c10 - i))

done

for i in "${c_array[@]}"
do

filename=$(ls /work/ih49/simulations/gen-10_mig-10_s-0/*_seed-$i.trees | head -n 1)
~/home/CV_DuffySelection/localancestry_tracts.py $filename
~/home/CV_DuffySelection/localancestry_proportions.py $filename

filename=$(ls /work/ih49/simulations/gen-10_mig-10_s-01/*_seed-$i.trees | head -n 1)
~/home/CV_DuffySelection/localancestry_tracts.py $filename
~/home/CV_DuffySelection/localancestry_proportions.py $filename

filename=$(ls /work/ih49/simulations/gen-10_mig-10_s-05/*_seed-$i.trees | head -n 1)
~/home/CV_DuffySelection/localancestry_tracts.py $filename
~/home/CV_DuffySelection/localancestry_proportions.py $filename

filename=$(ls /work/ih49/simulations/gen-10_mig-10_s-1/*_seed-$i.trees | head -n 1)
~/home/CV_DuffySelection/localancestry_tracts.py $filename
~/home/CV_DuffySelection/localancestry_proportions.py $filename

done
