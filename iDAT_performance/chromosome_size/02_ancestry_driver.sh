#!/bin/bash

sbatch --mem=10G -a 1-100 ~/home/CV_DuffySelection/Revisions/chr_size/ancestry_s-05.sh
sbatch --mem=10G -a 1-100 ~/home/CV_DuffySelection/Revisions/chr_size/ancestry_s-0.sh
