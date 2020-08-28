#!/bin/bash

mkdir -p ~/work/out

echo -e "seed\ts\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score" >\
~/work/out/CV_ABC_additive.txt
cat /work/ih49/Rstats/ABC/additive/Rstats_*.out >> ~/work/out/CV_ABC_additive.txt &

echo -e "seed\ts\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score" >\
~/work/out/CV_ABC_dominant.txt
cat /work/ih49/Rstats/ABC/dominant/Rstats_*.out >> ~/work/out/CV_ABC_dominant.txt &

echo -e "seed\ts\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score" >\
~/work/out/CV_ABC_recessive.txt
cat /work/ih49/Rstats/ABC/recessive/Rstats_*.out >> ~/work/out/CV_ABC_recessive.txt &

wait
