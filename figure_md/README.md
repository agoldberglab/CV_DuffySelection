# Figure markdowns

The current directory includes markdown files with scripts used to perform the main analyses of this study and to reproduce figures. With the exception of local ancestry data, most input and output data can be found in [../datasets/](../datasets/)

## Markdown files

1. **CV_EmpiricalAnalyses.md**
  
    Code and results for calculating ancestry-based statistics for Cabo Verde islands, including _iDAT_ score (Figures 1, 2, 2-figure supplement 1).

2. **NeutralSims.md**
  
    Code and results for comparing observed ancestry-based statistics ([../datasets/CV_stats.txt](../datasets/CV_stats.txt)) to neutral simulations for eight different demographic models (see [../neutral_sims/](../neutral_sims/)). Includes comparisons to statistics calculated for the entire simulated populations as well as random samples of 172 individuals from each simulated population (Figure 2-figure supplement 2). Also includes comparisons to statistics calculated when using alternate genetic maps (Figure 2-figure supplement 3).

3. **SWIFr_validation.md**
  
    Code and results for precision-recall analysis of SWIF(r) classification for test set of 1000 neutral and 1000 positive selection simulations (see [../SWIFr_sims/](../SWIFr_sims/)) (Figure 6). Also includes code to generate confusion matrix and scatterplot to visualize SWIF(r) predictions across classes and the range of selection strength and initial admixture proportion (Figure 6-figure supplement 1).

4. **ABC.md**

    Code and results for ABC estimation of selection strength and initial admixture contribution when modeling Duffy-null as additive, dominant, or recessive (Figure 4-figure supplement 1) (see [../ABC_sims/](../ABC_sims/)). Also includes code to analyze preformance of leave-one-out cross-validation from simulated additive dataset (Figure 4-figure supplement 2).

5. **iDAT_performance.md**

  Code and results for testing performance of _iDAT_ under demographic histories not related to Cabo Verde see [../iDAT_performance/](../iDAT_performance/) (Figure 2-figure supplements 4 & 5).

6. **SelectionStrength.md**
  
    Code and results for estimating selection strength for Duffy-null on Santiago based on two methods: a deterministic population genetic model and ABC estimation (additive model; see [../ABC_sims/](../ABC_sims/)) (Figure 4).
  
5. **GlobalAncestry.md**
  
    Code and results for effect of selection strength on global ancestry (see [../globalancestry_sims/](../globalancestry_sims/)). Includes ANCOVA to test whether simulation model (two-chromosome with human genetic map vs whole-autosome with uniform recombination rate) has a significant affect on the relationship between selection strength and global ancestry (Figure 5-figure supplement 1). Also includes result of ABC estimation of initial admixture contribution (additive model) and the simulated change in global ancestry after 20 generations, using intial admixture contribution and selection strength from accepted ABC simulations as input parameters (Figure 5).
    
## Local Ancestry Data

Raw local ancestry data can be found at https://doi.org/10.5281/zenodo.4021277. We calculated proportion of source population ancestries at each SNP position by island from the RFMix Viterbi output. We also used following script to collapse ancestry into bed files for each chromosome: https://github.com/armartin/ancestry_pipeline/blob/master/collapse_ancestry.py<sup>1</sup>.

<sup>1</sup>Martin, et al. Human demographic history impacts genetic risk prediction across diverse populations. AJHG, 2017. (http://www.cell.com/ajhg/abstract/S0002-9297(17)30107-6)
