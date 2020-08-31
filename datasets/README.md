# Datasets

## Ancestry-based statistics calculated from SLiM simulations:

* **Neutral simulations** (see [../neutral_sims/](../neutral_sims/) for code to generate these sets)
  * CV_neutral_const-10000_cont-adm.txt
  * CV_neutral_const-10000_single-pulse.txt
  * CV_neutral_const-1000_cont-adm.txt
  * CV_neutral_const-1000_single-pulse.txt
  * CV_neutral_exp-05-10000_cont-adm.txt
  * CV_neutral_exp-05-10000_single-pulse.txt
  * CV_neutral_exp-05-1000_cont-adm.txt
  * CV_neutral_exp-05-1000_single-pulse.txt
  
  Files that end in _sample.txt are ancestry based statistics from 172 randomly sampled indvidual for each simulated population.
  
* **SWIF(r) simulations** (see [../SWIFr_sims/](../SWIFr_sims/) for code to generate these sets)
  * CV_SWIFr_neutral_train.txt - 50000 neutral simulations used to train SWIF(r)
  * CV_SWIFr_sweep_train.txt - 100 sweep simulations used to train SWIF(r)
  * CV_SWIFr_1keach_prior002_5stats_test.txt - 1000 neutral and 1000 sweep simulations used to test SWIF(r) accuracy. Includes posterior probabilities for sweep and neutral classifications returned by SWIF(r).

* **ABC simulations** (see [../ABC_sims/](../ABC_sims/) for code to generate these sets)
  * CV_ABC_additive.txt
  * CV_ABC_dominant.txt
  * CV_ABC_recessive.txt
  
* **Global ancestry simulations** (see [../globalancestry_sims/](../globalancestry_sims/) for code to generate these sets)
  * globalancestry_whole-autosome.txt
  * globalancestry_two-chromosome.txt
  * globalancestry_ABC-accepted.txt

## Output data from calculating ancestry-based statistics for Cabo Verde islands

See [../figure_md/CV_EmpiricalAnalyses.md](../figure_md/CV_EmpiricalAnalyses.md) for code to generate these data

Raw local ancestry calls can be found at _**dryad DOI**_

  * **CV_stats.txt** - ancestry-based statistics calculated for each island
  * **genome-wide iDAT scores**
    * CV_sample_chr.RData - list of chromosomes corresponding to 10000 randomly sampled genomic positions
    * CV_sample_coords.RData - list of 10000 randomly sampled genomic positions
    * Fogo_iDAT_vector_abs.RData - list of unstandardized iDAT scores for 10000 randomly sampled positions, Fogo
    * NWcluster_iDAT_vector_abs.RData - list of unstandardized iDAT scores for 10000 randomly sampled positions, NW cluster
    * Santiago_iDAT_vector_abs.RData - list of unstandardized iDAT scores for 10000 randomly sampled positions, Santiago
    * manhattan_windowiDAT_df.RData - windowed iDAT scores calculated by averaging standardized iDAT for 20 Mb sliding windows across the genome (step size of 1 Mb), by island
  * **ABC parameters for accepted simulations**
    * accepted_sims_additive_5stats.RData
    * accepted_sims_dominant_5stats.RData
    * accepted_sims_recessive_5stats.Rdata
  * **ABC cross-validation**
    * ABC_cv_accuracy_5stats.xlsx - Results of leave-one-out cross validation for various methods and hyperparameters (see [../ABC_sims/abc_crossval_example.R](../ABC_sims/abc_crossval_example.R) for example script). Includes R<sup>2</sup> and RMSE for estimation of selection coefficient (s) and initial admixture proportion (m). Highlighted row indicates method and hyperparameters used for final analyses.
    * CV_ms-nn_5stats_size2_tol.RData - results of leave-on-out cross-validation for "neuralnet" method with 'sizenet=2'. This was the method used for final ABC estimation.
 
##  Genetic maps used for SLiM simulations

Human genetic maps are from IMPUTE2 (https://mathgen.stats.ox.ac.uk/impute/1000GP_Phase3.html), modified for SLiM.
  * chr1_recombinationrates.txt - genetic map for chr1 only
  * chr1-2_recombinationrates.txt - genetic map for chr1 and chr2
