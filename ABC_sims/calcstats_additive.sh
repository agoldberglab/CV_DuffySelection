#!/bin/bash
#SBATCH -p scavenger
#SBATCH --job-name="Rstats"
#SBATCH -a 1-1000
#SBATCH --mem=5G
#SBATCH -o "ABC_additive.out"

module load R/4.0.0

c=$SLURM_ARRAY_TASK_ID

declare -i c10="${c}0"

for i in {0..9};
do

c_array[$i]=$((c10 - i))

done

for i in "${c_array[@]}"
do

filename=$(ls /work/ih49/simulations/ABC/additive/*_seed-${i}_ancestryproportions.csv | head -n 1)
~/home/CV_DuffySelection/ancestryanalysis_CV.R $filename > /work/ih49/Rstats/ABC/additive/Rstats_${i}.out

done
