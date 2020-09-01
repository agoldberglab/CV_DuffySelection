# Figure markdowns

The current directory includes markdown files with scripts used to perform the main analyses of this study and to reproduce figures. With the exception of local ancestry data, most input and output data can be found in [../datasets/](../datasets/) 

1. **CV_EmpiricalAnalyses.md**
  
    Code and results for calculating ancestry-based statistics for Cabo Verde islands, including _iDAT_ score (Figures 1 & 2, Figure S1).

2. * **NeutralSims.md**
  
    Code and results for comparing observed ancestry-based statistics ([../datasets/CV_stats.txt](../datasets/CV_stats.txt)) to neutral simulations for eight different demographic models (see [../neutral_sims/](../neutral_sims/)). Includes comparisons to statistics calculated for the entire simulated populations as well as random samples of 172 individuals from each simulated population (Figure S2).

3. * **SWIFr_validation.md**
  
    Code and results for precision-recall analysis of SWIF(r) classification for test set of 1000 neutral and 1000 sweep simulations (see [../SWIFr_sims/](../SWIFr_sims/)) (Figure S4). Also includes code to generate confusion matrix and scatterplot to visualize SWIF(r) predictions across classes and the range of selection strength and initial admixture proportion (Figure S5).

4. **ABC.md**

    Code and results for ABC estimation of selection strength and initial admixture contribution when modeling Duffy-null as additive, dominant, or recessive (Figure S3) (see [../ABC_sims/](../ABC_sims/)). Also includes code to analyze preformance of leave-one-out cross-validation from simulated additive dataset (Figure S6).


4. **SelectionStrength.md**
  
    Code and results for estimating selection strength for Duffy-null on Santiago based on two methods: a deterministic population genetic model and ABC estimation (additive model; see [../ABC_sims/](../ABC_sims/)) (Figure 3).
  
5. **GlobalAncestry.md**
  
    Code and results for effect of selection strength on global ancestry (see [../globalancestry_sims/](../globalancestry_sims/)). Includes ANCOVA to test whether simulation model (two-chromosome with human genetic map vs whole-autosome with uniform recombination rate) has a significant affect on the relationship between selection strength and global ancestry (Figure S7). Also includes result of ABC estimation of initial admixture contribution (additive model) and the simulated change in global ancestry after 20 generations, using intial admixture contribution and selection strength from accepted ABC simulations as input parameters (Figure 4).
