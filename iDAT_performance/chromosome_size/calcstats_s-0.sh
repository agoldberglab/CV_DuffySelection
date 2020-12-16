#!/bin/bash
#SBATCH -p scavenger
#SBATCH --job-name="chrsize_s0"
#SBATCH -a 1-100
#SBATCH -o "s-0"

module load R/4.0.0

c=$SLURM_ARRAY_TASK_ID

declare -i c10="${c}0"

for i in {0..9};
do

c_array[$i]=$((c10 - i))

done

for i in "${c_array[@]}"
do
filename=$(ls /work/ih49/simulations/chr1_s-0/*_seed-${i}_ancestryproportions.csv | head -n 1)
~/home/CV_DuffySelection/Revisions/chr_size/ancestryanalysis_CV_chr_size.R $filename /hpc/home/ih49/home/CV_DuffySelection/Revisions/chr_size/chr1_coords_chr_size.RData 249904549 > /work/ih49/Rstats/chr1_s-0/Rstats_${i}.out

filename=$(ls /work/ih49/simulations/chr7_s-0/*_seed-${i}_ancestryproportions.csv | head -n 1)
~/home/CV_DuffySelection/Revisions/chr_size/ancestryanalysis_CV_chr_size.R $filename /hpc/home/ih49/home/CV_DuffySelection/Revisions/chr_size/chr7_coords_chr_size.RData 159321559 > /work/ih49/Rstats/chr7_s-0/Rstats_${i}.out

filename=$(ls /work/ih49/simulations/chr15_s-0/*_seed-${i}_ancestryproportions.csv | head -n 1)
~/home/CV_DuffySelection/Revisions/chr_size/ancestryanalysis_CV_chr_size.R $filename /hpc/home/ih49/home/CV_DuffySelection/Revisions/chr_size/chr15_coords_chr_size.RData 102531392 > /work/ih49/Rstats/chr15_s-0/Rstats_${i}.out

filename=$(ls /work/ih49/simulations/chr22_s-0/*_seed-${i}_ancestryproportions.csv | head -n 1)
~/home/CV_DuffySelection/Revisions/chr_size/ancestryanalysis_CV_chr_size.R $filename /hpc/home/ih49/home/CV_DuffySelection/Revisions/chr_size/chr22_coords_chr_size.RData 51304566 > /work/ih49/Rstats/chr22_s-0/Rstats_${i}.out
done
