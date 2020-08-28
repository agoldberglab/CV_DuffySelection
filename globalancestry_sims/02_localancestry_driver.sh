#!/bin/bash

sbatch -a 1-50 ~/home/CV_DuffySelection/SWIFr_sims/ancestry_whole-autosome.sh
sbatch -a 1-50 ~/home/CV_DuffySelection/SWIFr_sims/ancestry_two-chromosome.sh
sbatch -a 1-50 ~/home/CV_DuffySelection/SWIFr_sims/ancestry_ABC-accepted.sh
