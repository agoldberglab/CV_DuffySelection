#!/bin/bash

sbatch --mem=10G -a 1-100 ~/home/CV_DuffySelection/Revisions/ancestry_gen-10_mig-10.sh
sbatch --mem=10G -a 1-100 ~/home/CV_DuffySelection/Revisions/ancestry_gen-10_mig-50.sh
sbatch --mem=10G -a 1-100 ~/home/CV_DuffySelection/Revisions/ancestry_gen-10_mig-90.sh
sbatch --mem=10G -a 1-100 ~/home/CV_DuffySelection/Revisions/ancestry_gen-100_mig-10.sh
sbatch --mem=10G -a 1-100 ~/home/CV_DuffySelection/Revisions/ancestry_gen-100_mig-50.sh
sbatch --mem=10G -a 1-100 ~/home/CV_DuffySelection/Revisions/ancestry_gen-100_mig-90.sh
sbatch --mem=20G -a 1-1000 ~/home/CV_DuffySelection/Revisions/ancestry_gen-1000_mig-10_s-0.sh
sbatch --mem=20G -a 1-1000 ~/home/CV_DuffySelection/Revisions/ancestry_gen-1000_mig-50_s-0.sh
sbatch --mem=20G -a 1-1000 ~/home/CV_DuffySelection/Revisions/ancestry_gen-1000_mig-90_s-0.sh
sbatch --mem=20G -a 1-1000 ~/home/CV_DuffySelection/Revisions/ancestry_gen-1000_mig-10_s-01.sh
sbatch --mem=20G -a 1-1000 ~/home/CV_DuffySelection/Revisions/ancestry_gen-1000_mig-50_s-01.sh
sbatch --mem=20G -a 1-1000 ~/home/CV_DuffySelection/Revisions/ancestry_gen-1000_mig-90_s-01.sh
sbatch --mem=20G -a 1-1000 ~/home/CV_DuffySelection/Revisions/ancestry_gen-1000_mig-10_s-05.sh
sbatch --mem=20G -a 1-1000 ~/home/CV_DuffySelection/Revisions/ancestry_gen-1000_mig-50_s-05.sh
sbatch --mem=20G -a 1-1000 ~/home/CV_DuffySelection/Revisions/ancestry_gen-1000_mig-90_s-05.sh
sbatch --mem=20G -a 1-1000 ~/home/CV_DuffySelection/Revisions/ancestry_gen-1000_mig-10_s-1.sh
sbatch --mem=20G -a 1-1000 ~/home/CV_DuffySelection/Revisions/ancestry_gen-1000_mig-50_s-1.sh
sbatch --mem=20G -a 1-1000 ~/home/CV_DuffySelection/Revisions/ancestry_gen-1000_mig-90_s-1.sh
