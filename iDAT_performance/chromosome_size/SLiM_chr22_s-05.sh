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

/hpc/home/ih49/home/SLiM_build/slim -d L=51304566 -d s=0.05 -d ratesfile='"/work/ih49/1000GP_Phase3/chr22_recombinationrates.txt"' -d out='"/work/ih49/simulations/chr22_s-05/chr22_L-50_const_00_10000_single-pulse_h-0.5_m-0.734_s-0.05_seed-"' -d seed=$i ~/home/CV_DuffySelection/Revisions/CV_chr_size/chr_size.slim

done
