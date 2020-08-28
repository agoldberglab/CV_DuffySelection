#!/bin/bash
#SBATCH -p scavenger
#SBATCH --job-name="Rstats"
#SBATCH -a 1-50
#SBATCH --mem=5G
#SBATCH -o "globalancestry_two-chromosome.out"

module load R/4.0.0

c=$SLURM_ARRAY_TASK_ID

declare -i c10="${c}0"

for i in {0..9};
do

c_array[$i]=$((c10 - i))

done

for i in "${c_array[@]}"
do

filename=$(ls /work/ih49/simulations/globalancestry/two_chromosome/*_seed-${i}_ancestryproportions.csv | head -n 1)
~/home/CV_DuffySelection/globalancestry_sims/globalancestry_two-chromosome.R $filename >\
 /work/ih49/Rstats/globalancestry/two_chromosome/Rstats_${i}.out

done
