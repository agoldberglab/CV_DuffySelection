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

#S-0

echo -e "seed\ts\tlength\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/chr1_s-0_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/chr1_s-0/Rstats_*.out >> ~/work/out/chr1_s-0_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tlength\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/chr7_s-0_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/chr7_s-0/Rstats_*.out >> ~/work/out/chr7_s-0_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tlength\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/chr15_s-0_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/chr15_s-0/Rstats_*.out >> ~/work/out/chr15_s-0_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tlength\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/chr22_s-0_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/chr22_s-0/Rstats_*.out >> ~/work/out/chr22_s-0_const-00-10000_single-pulse.txt &

#S-05

echo -e "seed\ts\tlength\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/chr1_s-05_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/chr1_s-05/Rstats_*.out >> ~/work/out/chr1_s-05_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tlength\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/chr7_s-05_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/chr7_s-05/Rstats_*.out >> ~/work/out/chr7_s-05_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tlength\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/chr15_s-05_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/chr15_s-05/Rstats_*.out >> ~/work/out/chr15_s-05_const-00-10000_single-pulse.txt &

echo -e "seed\ts\tlength\tm\tbene_rank\tbene_prop\tmean_global\tvar_prop\tvar_prop_10Mb\tq95_prop\tmedian_tract\tmean_tract\t\
var_tract\tq95_tract\tlength_75_prop\tlength_95_prop\tanc_switches\tglobal_75_prop\tiDAT_score_25\tiDAT_score_125\t\
iDAT_score_0625\tiDAT_score_01" >\
~/work/out/chr22_s-05_const-00-10000_single-pulse.txt
cat /work/ih49/Rstats/chr22_s-05/Rstats_*.out >> ~/work/out/chr22_s-05_const-00-10000_single-pulse.txt &


wait

