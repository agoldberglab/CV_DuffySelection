#!/bin/bash

sbatch -a 1-10 ~/home/CV_DuffySelection/SWIFr_sims/ancestry_sweep.sh
sbatch -a 1-5000 ~/home/CV_DuffySelection/SWIFr_sims/ancestry_neutral.sh
