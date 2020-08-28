#!/usr/bin/env Rscript

suppressMessages(library(tidyverse))
suppressMessages(library(optparse))

runSLiM <- function(seed, s, m, model_name, slim_model, map=NULL)
{
  out <- paste0(model_name, "_m-", m, "_s-", s, "_seed-", seed)
  if(is.null(map)) {
    output <- system2(slim_build, c(
      "-d", paste0("s=", s),
      "-d", paste0("mig=", m),
      "-d", paste0("out='\"", out, "\"'"),
      slim_model))
  } else {
    output <- system2(slim_build, c(
      "-d", paste0("ratesfile='\"", map, "\"'"), 
      "-d", paste0("s=", s),
      "-d", paste0("mig=", m),
      "-d", paste0("out='\"", out, "\"'"),
      slim_model))
  }
}

option_list <- list(
  make_option("--seed", type="character", default=1,
              help="seed start, from 1 [default %default]"),
  make_option("--ABC", action="store_true", default=FALSE,
              help="draw P1 admixture proportions and selection coefficient from ABC results [default %default]"),
  make_option("--accepted", type="character", default=NULL,
              help="path/to/accepted_sims.RData, when --ABC=TRUE"),
  make_option(c("-m", "--mig"), type="character", default=0.65,
              help="P1 admixture contribution, when --ABC=FALSE [default %default]"),
  make_option("--s_low", type="character", default=0,
              help="lower bound for selection coefficient, when --ABC=FALSE [default %default]"),
  make_option("--s_high", type="character", default=0.2,
              help="upper bound for selection coefficient, when --ABC=FALSE [default %default]"),
  make_option("--unif_recomb", action="store_true", default=FALSE,
              help="uniform recombination rate set to 1e-8 [default %default]"),
  make_option("--genetic_map", type="character", default=NULL,
              help="path/to/genetic_map.txt, when --unif_recomb=FALSE"),
  make_option(c("-o","--out"), type="character", default="./",
              help="path/to/out_directory/ [default %default]"),
  make_option("--slim_dir", type="character", default=NULL,
              help="path/to/slim"),
  make_option("--slim_model", type="character", default=NULL,
              help="path/to/slim_model.slim")
)

opt_parser = OptionParser(option_list=option_list);
opt = parse_args(opt_parser);

if (is.null(opt$slim_dir)){
  print_help(opt_parser)
  stop("Must supply path to SLiM simulation build (--slim_dir).n", call.=FALSE)
}

if (is.null(opt$slim_model)){
  print_help(opt_parser)
  stop("Must supply path to SLiM simulation script (--slim_model).n", call.=FALSE)
}

if (opt$unif_recomb==FALSE & is.null(opt$genetic_map)){
  print_help(opt_parser)
  stop("Must supply path to genetic map file (--genetic_map).n", call.=FALSE)
} 

slim_build <- opt$slim_dir

seed <- as.numeric(opt$seed)
seed_high <- seed*10
seed_vector <- c(seed_high, (seed_high - seq(1,9,1)))
seed_len <- length(seed_vector)

slim_model <- opt$slim_model

if(opt$ABC) {
  load(file=opt$accepted)
  s <- accepted_sims$additive_s[seed_vector]
  m <- accepted_sims$additive_m[seed_vector]
} else {
  m <- as.numeric(opt$mig)
  s_low <- as.numeric(opt$s_low)
  s_high <- as.numeric(opt$s_high)
  s <- runif(seed_len, min=s_low, max=s_high)
}

if (opt$unif_recomb) {
  genome_type <- "whole-autosome"
  model_name <- paste0(opt$out, "exp-05-10000_single-pulse_", genome_type)
  mapply(seed=seed_vector, FUN = runSLiM, s=s, m=m, model_name=model_name, slim_model=slim_model)
} else {
  genome_type <- "two-chromosome"
  map <- opt$genetic_map
  model_name <- paste0(opt$out, "exp-05-10000_single-pulse_", genome_type)
  mapply(seed=seed_vector, FUN = runSLiM, s=s, m=m, model_name=model_name, slim_model=slim_model, map=map)
}

