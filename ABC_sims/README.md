# ABC simulations

SLURM bash scripts used for running analyses on compute cluster. **Directories will need to be changed to run these scripts.**

_WARNING: Generating many .trees files may take up multiple terabytes of storage space._

Includes:

job scripts:

* **SLiM_CV_ABC\*.sh** - scripts to run 10 SLiM simulations on a single node. Calls ../run_SLiM.R one time. 

  Demographic model:
    
    <table>
     <thead>
         <tr>
             <th align="center">initial population size (N)</th>
             <th align="center">population growth model</th>
             <th align="center">population growth rate (per gen)</th>
             <th align="center">admixture type</th>
             <th align="center">proportion of new migrants (per gen)</th>
             <th align="center">P1 initial ancestry contribution</th>
             <th align="center">selection coefficient (s)</th>
         </tr>
     </thead>
     <tbody>
         <tr>
             <td align="center">10000</td>
             <td align="center">exponential</td>
             <td align="center">0.05</td>
             <td align="center">single-pulse</td>
             <td align="center">-</td>
             <td align="center">m~U(0.1,0.9)</td>
             <td align="center">s~U(0,0.2)</td>
         </tr>
     </tbody>
  </table>
  
  Duffy-null SNP is modeled as dominant, additive, or recessive.
  
* **ancestry_\*.sh** - scripts to extract ancestry information from 10 .trees files output from SLiM simulations. Calls ../localancestry_proportions.py and ../localancestry_tracts.py 10 times each.

* **calcstats_\*.sh** - scripts to calculate ancestry-based statistics for 10 simulations. Calls ../ancestryanalysis_CV.R 10 times.

driver scripts:

- wrappers to submit jobs that simulate and analyze 10000 dominant, additive, and recessive simulations, each. Numbered in order. 04_make_df.sh will combine output stats for the 10000 simulations into one .txt file for each of the three models.
