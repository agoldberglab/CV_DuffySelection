#!/usr/bin/env Rscript

suppressMessages(library(tidyverse))
suppressMessages(library(optparse))

runSLiM <- function(seed, s, m, N, h, rate, cont_adm, map, model_name, slim_model)
{
  out <- paste0(model_name, "_h-",h, "_m-",m, "_s-", s, "_seed-", seed)
  output <- system2(slim_build, c(
    "-d", paste0("s=", s),
    "-d", paste0("mig=", m),
    "-d", paste0("N=", N),
    "-d", paste0("h=", h),
    "-d", paste0("rate='\"", rate, "\"'"),
    "-d", paste0("cont_adm=", cont_adm),
    "-d", paste0("ratesfile='\"", map, "\"'"), 
    "-d", paste0("out='\"", out, "\"'"),
    slim_model))
}

option_list <- list(
  make_option(c("-v", "--verbose"), action="store_true", default=FALSE,
              help="print model description [default %default]"),
  make_option("--seed", type="character", default=1,
              help="seed start, from 1 [default %default]"),
  make_option(c("-N", "--pop_size"), type="character", default=10000,
              help="population size [default %default]"),
  make_option("--exp", action="store_true", default=FALSE,
              help="exponential growth [default %default]"),
  make_option(c("-r","--growth_rate"), type="character", default="05",
              help="population growth rate per generation (e.g. 05 for 5%) [default %default]"),
  make_option("--mig_unif", action="store_true", default=FALSE,
              help="draw P1 admixture proportions from uniform distribution [default %default]"),
  make_option("--mig_low", type="character", default=0.65,
              help="lower bound for P1 migration, when --mig_unif=TRUE [default %default]"),
  make_option("--mig_high", type="character", default=0.75,
              help="upper bound for P1 migration, when --mig_unif=TRUE [default %default]"),
  make_option(c("-m", "--mig"), type="character", default=0.70,
              help="P1 admixture contribution, when --mig_unif=FALSE [default %default]"),
  make_option("--cont_adm", action="store_true", default=FALSE,
              help="continuous admixture model [default %default]"),
  make_option("--s_unif", action="store_true", default=FALSE,
              help="draw selection coefficient from uniform distribution [default %default]"),
  make_option("--s_low", type="character", default=0,
              help="lower bound for selection coefficient, when --s_unif=TRUE [default %default]"),
  make_option("--s_high", type="character", default=0.2,
              help="upper bound for selection coefficient, when --s_unif=TRUE [default %default]"),
  make_option(c("-s", "--s_coeff"), type="character", default=0,
              help="selection coefficient, when --s_unif=FALSE [default %default]"),
  make_option(c("-d", "--dom_coeff"), type="character", default=0.5,
              help="dominance coefficient (1.0 = dominant in SLiM) [default %default]"),
  make_option("--genetic_map", type="character", default=NULL,
              help="path/to/genetic_map.txt"),
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

if (is.null(opt$genetic_map)){
  print_help(opt_parser)
  stop("Must supply path to genetic map file (--genetic_map).n", call.=FALSE)
}

slim_build <- opt$slim_dir
  
seed <- as.numeric(opt$seed)
seed_high <- seed*10
seed_vector <- c(seed_high, (seed_high - seq(1,9,1)))
seed_len <- length(seed_vector)

N <- as.numeric(opt$pop_size)
h <- as.numeric(opt$dom_coeff)
slim_model <- opt$slim_model
map <- opt$genetic_map

if(opt$exp) {
  rate <- opt$growth_rate
  model_growth <- paste0("exp_", rate, "_", N)
} else {
  rate <- "00"
  model_growth <- paste0("const_", rate, "_", N)
}

if(opt$mig_unif) {
  m_low <- as.numeric(opt$mig_low)
  m_high <- as.numeric(opt$mig_high)
  m <- runif(seed_len, min=m_low, max=m_high)
} else {
  m <- as.numeric(opt$mig)
}

if(opt$cont_adm) {
  cont_adm <- "T"
  model_adm <- "cont-adm"
} else {
  cont_adm <- "F"
  model_adm <- "single-pulse"
}

if(opt$s_unif) {
  s_low <- as.numeric(opt$s_low)
  s_high <- as.numeric(opt$s_high)
  s <- runif(seed_len, min=s_low, max=s_high)
} else {
  s <- as.numeric(opt$s_coeff)
}

model_name <- paste0(opt$out, model_growth, "_", model_adm)

if(opt$verbose) {
  cat("trees files prefix:", model_name, "\n")
  cat("from seed:", seed, "\n")
  cat("migration rate(s):", m, "\n")
  cat("selection coefficient(s):", s, "\n")
  cat("dominance coefficient:", h, "\n\n")
}
  
mapply(seed=seed_vector, FUN = runSLiM, s=s, map=map, m=m, N=N, h=h, rate=rate,
       cont_adm=cont_adm, model_name=model_name, slim_model=slim_model)
