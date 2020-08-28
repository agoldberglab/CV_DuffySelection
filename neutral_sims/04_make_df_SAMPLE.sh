#!/bin/bash

mkdir -p ~/work/out

echo -e "seed\ts\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score" >\
~/work/out/CV_neutral_exp-05-1000_single-pulse_sample.txt
cat /work/ih49/Rstats/exp-05-1000_single-pulse/Rstats_sample_*.out >> ~/work/out/CV_neutral_exp-05-1000_single-pulse_sample.txt &

echo -e "seed\ts\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score" >\
~/work/out/CV_neutral_exp-05-10000_single-pulse_sample.txt
cat /work/ih49/Rstats/exp-05-10000_single-pulse/Rstats_sample_*.out >> ~/work/out/CV_neutral_exp-05-10000_single-pulse_sample.txt &

echo -e "seed\ts\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score" >\
~/work/out/CV_neutral_exp-05-1000_cont-adm_sample.txt
cat /work/ih49/Rstats/exp-05-1000_cont-adm/Rstats_sample_*.out >> ~/work/out/CV_neutral_exp-05-1000_cont-adm_sample.txt &

echo -e "seed\ts\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score" >\
~/work/out/CV_neutral_exp-05-10000_cont-adm_sample.txt
cat /work/ih49/Rstats/exp-05-10000_cont-adm/Rstats_sample_*.out >> ~/work/out/CV_neutral_exp-05-10000_cont-adm_sample.txt &

echo -e "seed\ts\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score" >\
~/work/out/CV_neutral_const-1000_single-pulse_sample.txt
cat /work/ih49/Rstats/const-1000_single-pulse/Rstats_sample_*.out >> ~/work/out/CV_neutral_const-1000_single-pulse_sample.txt &

echo -e "seed\ts\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score" >\
~/work/out/CV_neutral_const-10000_single-pulse_sample.txt
cat /work/ih49/Rstats/const-10000_single-pulse/Rstats_sample_*.out >> ~/work/out/CV_neutral_const-10000_single-pulse_sample.txt &

echo -e "seed\ts\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score" >\
~/work/out/CV_neutral_const-1000_cont-adm_sample.txt
cat /work/ih49/Rstats/const-1000_cont-adm/Rstats_sample_*.out >> ~/work/out/CV_neutral_const-1000_cont-adm_sample.txt &

echo -e "seed\ts\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score" >\
~/work/out/CV_neutral_const-10000_cont-adm_sample.txt
cat /work/ih49/Rstats/const-10000_cont-adm/Rstats_sample_*.out >> ~/work/out/CV_neutral_const-10000_cont-adm_sample.txt &

wait
