#!/bin/bash
#SBATCH -p scavenger
#SBATCH --job-name="Rstats"
#SBATCH -a 1-100
#SBATCH -o "const-Ne_neutral.out"

module load R/4.0.0

c=$SLURM_ARRAY_TASK_ID

declare -i c10="${c}0"

for i in {0..9};
do

c_array[$i]=$((c10 - i))

done

for i in "${c_array[@]}"
do
filename=$(ls /work/ih49/simulations/const-1000_single-pulse/*_seed-${i}_ancestryproportions.csv | head -n 1)
~/home/CV_DuffySelection/ancestryanalysis_CV.R $filename > /work/ih49/Rstats/const-1000_single-pulse/Rstats_${i}.out

filename=$(ls /work/ih49/simulations/const-1000_cont-adm/*_seed-${i}_ancestryproportions.csv | head -n 1)
~/home/CV_DuffySelection/ancestryanalysis_CV.R $filename > /work/ih49/Rstats/const-1000_cont-adm/Rstats_${i}.out

filename=$(ls /work/ih49/simulations/const-10000_single-pulse/*_seed-${i}_ancestryproportions.csv | head -n 1)
~/home/CV_DuffySelection/ancestryanalysis_CV.R $filename > /work/ih49/Rstats/const-10000_single-pulse/Rstats_${i}.out

filename=$(ls /work/ih49/simulations/const-10000_cont-adm/*_seed-${i}_ancestryproportions.csv | head -n 1)
~/home/CV_DuffySelection/ancestryanalysis_CV.R $filename > /work/ih49/Rstats/const-10000_cont-adm/Rstats_${i}.out
done

