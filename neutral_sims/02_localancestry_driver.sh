#!/bin/bash

sbatch -a 1-100 ~/home/CV_DuffySelection/neutral_sims/ancestry_const-Ne.sh
sbatch -a 1-100 ~/home/CV_DuffySelection/neutral_sims/ancestry_exp-Ne.sh
