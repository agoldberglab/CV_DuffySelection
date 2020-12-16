#!/bin/bash

mkdir -p ~/work/out


#GEN 10 MIG 10
echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-10_mig-10_s-0_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-10_mig-10_s-0/Rstats_*.out >> ~/work/out/gen-10_mig-10_s-0_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-10_mig-10_s-0.01_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-10_mig-10_s-01/Rstats_*.out >> ~/work/out/gen-10_mig-10_s-0.01_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-10_mig-10_s-0.05_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-10_mig-10_s-05/Rstats_*.out >> ~/work/out/gen-10_mig-10_s-0.05_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-10_mig-10_s-0.1_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-10_mig-10_s-1/Rstats_*.out >> ~/work/out/gen-10_mig-10_s-0.1_const-00-10000_single-pulse.txt &

#GEN 10 MIG 50

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-10_mig-50_s-0_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-10_mig-50_s-0/Rstats_*.out >> ~/work/out/gen-10_mig-50_s-0_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-10_mig-50_s-0.01_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-10_mig-50_s-01/Rstats_*.out >> ~/work/out/gen-10_mig-50_s-0.01_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-10_mig-50_s-0.05_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-10_mig-50_s-05/Rstats_*.out >> ~/work/out/gen-10_mig-50_s-0.05_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-10_mig-50_s-0.1_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-10_mig-50_s-1/Rstats_*.out >> ~/work/out/gen-10_mig-50_s-0.1_const-00-10000_single-pulse.txt &

#GEN 10 MIG 90

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-10_mig-90_s-0_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-10_mig-90_s-0/Rstats_*.out >> ~/work/out/gen-10_mig-90_s-0_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-10_mig-90_s-0.01_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-10_mig-90_s-01/Rstats_*.out >> ~/work/out/gen-10_mig-90_s-0.01_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-10_mig-90_s-0.05_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-10_mig-90_s-05/Rstats_*.out >> ~/work/out/gen-10_mig-90_s-0.05_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-10_mig-90_s-0.1_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-10_mig-90_s-1/Rstats_*.out >> ~/work/out/gen-10_mig-90_s-0.1_const-00-10000_single-pulse.txt &

#GEN 100 MIG 10

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-100_mig-10_s-0_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-100_mig-10_s-0/Rstats_*.out >> ~/work/out/gen-100_mig-10_s-0_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-100_mig-10_s-0.01_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-100_mig-10_s-01/Rstats_*.out >> ~/work/out/gen-100_mig-10_s-0.01_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-100_mig-10_s-0.05_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-100_mig-10_s-05/Rstats_*.out >> ~/work/out/gen-100_mig-10_s-0.05_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-100_mig-10_s-0.1_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-100_mig-10_s-1/Rstats_*.out >> ~/work/out/gen-100_mig-10_s-0.1_const-00-10000_single-pulse.txt &

#GEN 100 MIG 50

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-100_mig-50_s-0_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-100_mig-50_s-0/Rstats_*.out >> ~/work/out/gen-100_mig-50_s-0_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-100_mig-50_s-0.01_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-100_mig-50_s-01/Rstats_*.out >> ~/work/out/gen-100_mig-50_s-0.01_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-100_mig-50_s-0.05_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-100_mig-50_s-05/Rstats_*.out >> ~/work/out/gen-100_mig-50_s-0.05_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-100_mig-50_s-0.1_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-100_mig-50_s-1/Rstats_*.out >> ~/work/out/gen-100_mig-50_s-0.1_const-00-10000_single-pulse.txt &

#GEN 100 MIG 90

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-100_mig-90_s-0_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-100_mig-90_s-0/Rstats_*.out >> ~/work/out/gen-100_mig-90_s-0_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-100_mig-90_s-0.01_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-100_mig-90_s-01/Rstats_*.out >> ~/work/out/gen-100_mig-90_s-0.01_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-100_mig-90_s-0.05_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-100_mig-90_s-05/Rstats_*.out >> ~/work/out/gen-100_mig-90_s-0.05_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-100_mig-90_s-0.1_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-100_mig-90_s-1/Rstats_*.out >> ~/work/out/gen-100_mig-90_s-0.1_const-00-10000_single-pulse.txt &

#GEN 1000 MIG 10

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-1000_mig-10_s-0_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-1000_mig-10_s-0/Rstats_*.out >> ~/work/out/gen-1000_mig-10_s-0_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-1000_mig-10_s-0.01_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-1000_mig-10_s-01/Rstats_*.out >> ~/work/out/gen-1000_mig-10_s-0.01_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-1000_mig-10_s-0.05_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-1000_mig-10_s-05/Rstats_*.out >> ~/work/out/gen-1000_mig-10_s-0.05_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-1000_mig-10_s-0.1_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-1000_mig-10_s-1/Rstats_*.out >> ~/work/out/gen-1000_mig-10_s-0.1_const-00-10000_single-pulse.txt &

#GEN 1000 MIG 50

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-1000_mig-50_s-0_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-1000_mig-50_s-0/Rstats_*.out >> ~/work/out/gen-1000_mig-50_s-0_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-1000_mig-50_s-0.01_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-1000_mig-50_s-01/Rstats_*.out >> ~/work/out/gen-1000_mig-50_s-0.01_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-1000_mig-50_s-0.05_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-1000_mig-50_s-05/Rstats_*.out >> ~/work/out/gen-1000_mig-50_s-0.05_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-1000_mig-50_s-0.1_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-1000_mig-50_s-1/Rstats_*.out >> ~/work/out/gen-1000_mig-50_s-0.1_const-00-10000_single-pulse.txt &

#GEN 1000 MIG 90

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-1000_mig-90_s-0_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-1000_mig-90_s-0/Rstats_*.out >> ~/work/out/gen-1000_mig-90_s-0_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-1000_mig-90_s-0.01_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-1000_mig-90_s-01/Rstats_*.out >> ~/work/out/gen-1000_mig-90_s-0.01_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-1000_mig-90_s-0.05_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-1000_mig-90_s-05/Rstats_*.out >> ~/work/out/gen-1000_mig-90_s-0.05_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tgen\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/gen-1000_mig-90_s-0.1_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/gen-1000_mig-90_s-1/Rstats_*.out >> ~/work/out/gen-1000_mig-90_s-0.1_const-00-10000_single-pulse.txt &

wait

