#!/bin/bash
#SBATCH -p scavenger
#SBATCH --job-name="Rstats"
#SBATCH -a 1-50
#SBATCH --mem=10G
#SBATCH -o "globalancestry_whole-autosome.out"

module load R/4.0.0

c=$SLURM_ARRAY_TASK_ID

declare -i c10="${c}0"

for i in {0..9};
do

c_array[$i]=$((c10 - i))

done

for i in "${c_array[@]}"
do

filename=$(ls /work/ih49/simulations/globalancestry/whole_autosome/*_seed-${i}_ancestryproportions.csv | head -n 1)
~/home/CV_DuffySelection/globalancestry_sims/globalancestry_whole-autosome.R $filename >\
 /work/ih49/Rstats/globalancestry/whole_autosome/Rstats_${i}.out

done
