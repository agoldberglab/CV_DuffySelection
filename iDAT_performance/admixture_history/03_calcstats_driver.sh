#!/bin/bash

mkdir -p /work/ih49/Rstats/{\
gen-10_mig-10_s-0/,\
gen-10_mig-50_s-0/,\
gen-10_mig-90_s-0/,\
gen-10_mig-10_s-01/,\
gen-10_mig-50_s-01/,\
gen-10_mig-90_s-01/,\
gen-10_mig-10_s-05/,\
gen-10_mig-50_s-05/,\
gen-10_mig-90_s-05/,\
gen-10_mig-10_s-1/,\
gen-10_mig-50_s-1/,\
gen-10_mig-90_s-1/,\
gen-100_mig-10_s-0/,\
gen-100_mig-50_s-0/,\
gen-100_mig-90_s-0/,\
gen-100_mig-10_s-01/,\
gen-100_mig-50_s-01/,\
gen-100_mig-90_s-01/,\
gen-100_mig-10_s-05/,\
gen-100_mig-50_s-05/,\
gen-100_mig-90_s-05/,\
gen-100_mig-10_s-1/,\
gen-100_mig-50_s-1/,\
gen-100_mig-90_s-1/,\
gen-1000_mig-10_s-0/,\
gen-1000_mig-50_s-0/,\
gen-1000_mig-90_s-0/,\
gen-1000_mig-10_s-01/,\
gen-1000_mig-50_s-01/,\
gen-1000_mig-90_s-01/,\
gen-1000_mig-10_s-05/,\
gen-1000_mig-50_s-05/,\
gen-1000_mig-90_s-05/,\
gen-1000_mig-10_s-1/,\
gen-1000_mig-50_s-1/,\
gen-1000_mig-90_s-1/\
}

#sbatch --mem=10G -a 1-100 ~/home/CV_DuffySelection/Revisions/calcstats_gen-10_mig_10.sh
#sbatch --mem=10G -a 1-100 ~/home/CV_DuffySelection/Revisions/calcstats_gen-10_mig_50.sh
#sbatch --mem=10G -a 1-100 ~/home/CV_DuffySelection/Revisions/calcstats_gen-10_mig_90.sh
#sbatch --mem=10G -a 1-100 ~/home/CV_DuffySelection/Revisions/calcstats_gen-100_mig_10.sh
#sbatch --mem=10G -a 1-100 ~/home/CV_DuffySelection/Revisions/calcstats_gen-100_mig_50.sh
#sbatch --mem=10G -a 1-100 ~/home/CV_DuffySelection/Revisions/calcstats_gen-100_mig_90.sh
sbatch --mem=10G -a 1-100 ~/home/CV_DuffySelection/Revisions/calcstats_gen-1000_mig_10.sh
sbatch --mem=10G -a 1-100 ~/home/CV_DuffySelection/Revisions/calcstats_gen-1000_mig_50.sh
sbatch --mem=10G -a 1-100 ~/home/CV_DuffySelection/Revisions/calcstats_gen-1000_mig_90.sh
