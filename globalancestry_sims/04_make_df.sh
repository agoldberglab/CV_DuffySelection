#!/bin/bash

mkdir -p ~/work/out

echo -e "seed\ts\tm\tmean_global\tmean_chr1\tmean_restgenome" >\
~/work/out/globalancestry_whole-autosome.txt
cat /work/ih49/Rstats/globalancestry/whole_autosome/Rstats_*.out >> ~/work/out/globalancestry_whole-autosome.txt &

echo -e "seed\ts\tm\tmean_global\tmean_chr1\tmean_restgenome" >\
~/work/out/globalancestry_two-chromosome.txt
cat /work/ih49/Rstats/globalancestry/two_chromosome/Rstats_*.out >> ~/work/out/globalancestry_two-chromosome.txt &

echo -e "seed\ts\tm\tmean_global\tmean_chr1\tmean_restgenome" >\
~/work/out/globalancestry_ABC-accepted.txt
cat /work/ih49/Rstats/globalancestry/ABC_accepted/Rstats_*.out >> ~/work/out/globalancestry_ABC-accepted.txt &

wait
