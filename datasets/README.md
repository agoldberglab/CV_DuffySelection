# Datasets

## Ancestry-based statistics calculated from SLiM simulations:

* **Neutral Cabo Verde simulations** (see [../neutral_sims/](../neutral_sims/) for code to generate these sets)
  * CV_neutral_const-10000_cont-adm.txt
  * CV_neutral_const-10000_single-pulse.txt
  * CV_neutral_const-1000_cont-adm.txt
  * CV_neutral_const-1000_single-pulse.txt
  * CV_neutral_exp-05-10000_cont-adm.txt
  * CV_neutral_exp-05-10000_single-pulse.txt
  * CV_neutral_exp-05-1000_cont-adm.txt
  * CV_neutral_exp-05-1000_single-pulse.txt
  
  Files that end in _sample.txt are ancestry based statistics from 172 randomly sampled indvidual for each simulated population. For these, and most simulations in this project, human genetic maps are from IMPUTE2 (https://mathgen.stats.ox.ac.uk/impute/1000GP_Phase3.html; Delaneau et al. 2013), modified for SLiM format.
  
  * **Simulations using alternate genetic maps**
     * AA_rates_CV_neutral_exp-05-10000_single-pulse_SAMPLE.txt - used chr1 genetic map from Hinch et al., 2011
     * GWD_rates_CV_neutral_exp-05-10000_single-pulse_SAMPLE.txt - used GWD chr1 genetic map from Spence and Song, 2019
     * IBS_rates_CV_neutral_exp-05-10000_single-pulse_SAMPLE.txt - used IBS chr1 genetic map from Spence and Song, 2019

* **iDAT performance simulations** (see [../iDAT_performance/](../iDAT_performance/) for code to generate these sets)
  * Demographic Simulations
    * 10 generation simulations:
      * gen-10_mig-10_s-0_const-00-10000_single-pulse.txt
      * gen-10_mig-10_s-0.01_const-00-10000_single-pulse.txt
      * gen-10_mig-10_s-0.05_const-00-10000_single-pulse.txt
      * gen-10_mig-10_s-0.1_const-00-10000_single-pulse.txt
      * gen-10_mig-50_s-0_const-00-10000_single-pulse.txt
      * gen-10_mig-50_s-0.01_const-00-10000_single-pulse.txt
      * gen-10_mig-50_s-0.05_const-00-10000_single-pulse.txt
      * gen-10_mig-50_s-0.1_const-00-10000_single-pulse.txt
      * gen-10_mig-90_s-0_const-00-10000_single-pulse.txt
      * gen-10_mig-90_s-0.01_const-00-10000_single-pulse.txt
      * gen-10_mig-90_s-0.05_const-00-10000_single-pulse.txt
      * gen-10_mig-90_s-0.1_const-00-10000_single-pulse.txt
    * 100 generation simulations:
      * gen-100_mig-10_s-0_const-00-10000_single-pulse.txt
      * gen-100_mig-10_s-0.01_const-00-10000_single-pulse.txt
      * gen-100_mig-10_s-0.05_const-00-10000_single-pulse.txt
      * gen-100_mig-10_s-0.1_const-00-10000_single-pulse.txt
      * gen-100_mig-50_s-0_const-00-10000_single-pulse.txt
      * gen-100_mig-50_s-0.01_const-00-10000_single-pulse.txt
      * gen-100_mig-50_s-0.05_const-00-10000_single-pulse.txt
      * gen-100_mig-50_s-0.1_const-00-10000_single-pulse.txt
      * gen-100_mig-90_s-0_const-00-10000_single-pulse.txt
      * gen-100_mig-90_s-0.01_const-00-10000_single-pulse.txt
      * gen-100_mig-90_s-0.05_const-00-10000_single-pulse.txt
      * gen-100_mig-90_s-0.1_const-00-10000_single-pulse.txt
    * 1000 generation simulations:
      * gen-1000_mig-10_s-0_const-00-10000_single-pulse.txt
      * gen-1000_mig-10_s-0.01_const-00-10000_single-pulse.txt
      * gen-1000_mig-10_s-0.05_const-00-10000_single-pulse.txt
      * gen-1000_mig-10_s-0.1_const-00-10000_single-pulse.txt
      * gen-1000_mig-50_s-0_const-00-10000_single-pulse.txt
      * gen-1000_mig-50_s-0.01_const-00-10000_single-pulse.txt
      * gen-1000_mig-50_s-0.05_const-00-10000_single-pulse.txt
      * gen-1000_mig-50_s-0.1_const-00-10000_single-pulse.txt
      * gen-1000_mig-90_s-0_const-00-10000_single-pulse.txt
      * gen-1000_mig-90_s-0.01_const-00-10000_single-pulse.txt
      * gen-1000_mig-90_s-0.05_const-00-10000_single-pulse.txt
      * gen-1000_mig-90_s-0.1_const-00-10000_single-pulse.txt
   
  * Chromosome-Size Simulations
    * chr1_s-0_const-00-10000_single-pulse.txt
    * chr1_s-05_const-00-10000_single-pulse.txt
    * chr7_s-0_const-00-10000_single-pulse.txt
    * chr7_s-05_const-00-10000_single-pulse.txt
    * chr15_s-0_const-00-10000_single-pulse.txt
    * chr15_s-05_const-00-10000_single-pulse.txt
    * chr22_s-0_const-00-10000_single-pulse.txt
    * chr22_s-05_const-00-10000_single-pulse.txt
    
* **SWIF(r) simulations** (see [../SWIFr_sims/](../SWIFr_sims/) for code to generate these sets)
  * CV_SWIFr_neutral_train.txt - 50000 neutral simulations used to train SWIF(r)
  * CV_SWIFr_sweep_train.txt - 100 positive selection simulations used to train SWIF(r)
  * CV_SWIFr_1keach_prior002_5stats_test.txt - 1000 neutral and 1000 positive selection simulations used to test SWIF(r) accuracy. Includes posterior probabilities for selection and neutral classifications returned by SWIF(r).

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
  
## Citations

Delaneau, O., Zagury, J.-F., & Marchini, J. (2013). Improved whole-chromosome phasing for disease and population genetic studies. Nature Methods, 10(1), 5–6. https://doi.org/10.1038/nmeth.2307

Hinch, A. G., Tandon, A., Patterson, N., Song, Y., Rohland, N., Palmer, C. D., Chen, G. K., Wang, K., Buxbaum, S. G., Akylbekova, E. L., Aldrich, M. C., Ambrosone, C. B., Amos, C., Bandera, E. V., Berndt, S. I., Bernstein, L., Blot, W. J., Bock, C. H., Boerwinkle, E., … Myers, S. R. (2011). The landscape of recombination in African Americans. Nature, 476(7359), 170–175. https://doi.org/10.1038/nature10336

Spence, J. P., & Song, Y. S. (2019). Inference and analysis of population-specific fine-scale recombination maps across 26 diverse human populations. Science Advances, 5(10), eaaw9206. https://doi.org/10.1126/sciadv.aaw9206

