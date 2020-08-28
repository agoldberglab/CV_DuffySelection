#! /usr/bin/env Rscript

suppressMessages(library(abc))

ms_simulations <- read.table("CV_DuffySelection/datasets/CV_ABC_additive.txt", header=TRUE)

ms_parameters <- ms_simulations[,c("s", "m")]
ms_statistics <- ms_simulations[,c("bene_prop", "var_prop", "median_tract", "mean_tract", "iDAT_score")]

cv.nn.ms_5stats_2_tols <- cv4abc(param=ms_parameters, sumstat=ms_statistics, nval=1000,
tols=.05, method="neuralnet", sizenet=2)

save(cv.nn.ms_5stats_2_tols, file = "CV_ms-nn_5stats_size2_tol05.RData")
