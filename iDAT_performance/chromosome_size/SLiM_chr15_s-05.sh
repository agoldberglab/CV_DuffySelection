#!/bin/bash
#SBATCH --mem=10G

#!/bin/bash
#SBATCH -p scavenger
#SBATCH -a 1-100

c=$SLURM_ARRAY_TASK_ID

declare -i c10="${c}0"


for i in {0..9};
do

c_array[$i]=$((c10 - i))

done

for i in "${c_array[@]}"
do

/hpc/home/ih49/home/SLiM_build/slim -d L=102531392 -d s=0.05 -d ratesfile='"/work/ih49/1000GP_Phase3/chr15_recombinationrates.txt"' -d out='"/work/ih49/simulations/chr15_s-05/chr15_L-100_const_00_10000_single-pulse_h-0.5_m-0.734_s-0.05_seed-"' -d seed=$i ~/home/CV_DuffySelection/Revisions/chr_size/CV_chr_size.slim

done
