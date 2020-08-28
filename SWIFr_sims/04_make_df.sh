#!/bin/bash

mkdir -p ~/work/out

echo -e "seed\ts\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score" >\
~/work/out/CV_SWIFr_neutral_train.txt
cat /work/ih49/Rstats/SWIFr/neutral/Rstats_*.out >> ~/work/out/CV_SWIFr_neutral_train.txt &

echo -e "seed\ts\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score" >\
~/work/out/CV_SWIFr_sweep_train.txt
cat /work/ih49/Rstats/SWIFr/sweep/Rstats_*.out >> ~/work/out/CV_SWIFr_sweep_train.txt &

wait
