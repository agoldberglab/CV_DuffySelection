#!/bin/bash

mkdir -p /work/ih49/Rstats/globalancestry/{\
whole_autosome,\
two_chromosome,\
ABC_accepted\
}

sbatch -a 1-50 ~/home/CV_DuffySelection/globalancestry_sims/calcstats_whole-autosome.sh
sbatch -a 1-50 ~/home/CV_DuffySelection/globalancestry_sims/calcstats_two-chromosome.sh
sbatch -a 1-50 ~/home/CV_DuffySelection/globalancestry_sims/calcstats_ABC-accepted.sh
