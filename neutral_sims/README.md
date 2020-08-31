# Neutral simulations

SLURM bash scripts used for running analyses on compute cluster. **Directories will need to be changed to run these scripts.** 

_WARNING: Generating many .trees files will take up multiple terabytes of storage space._

Includes:

job scripts:

* **SLiM_CV_neutral\*.sh** - scripts to run 10 SLiM simulations on a single node. Calls ../run_SLiM.R one time. 

  * Demographic models are:
  
<table>
    <thead>
        <tr>
            <th align="center">initial population size (N)</th>
            <th align="center">population growth model</th>
            <th align="center">population growth rate (per gen)</th>
            <th align="center">admixture type</th>
            <th align="center">proportion of new migrants (per gen)</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td rowspan=4 align="center">1000</td>
            <td rowspan=2 align="center">constant size</td>
            <td rowspan=2 align="center">-</td>
            <td align="center">single-pulse</td>
            <td align="center">-</td>
        </tr>
        <tr>
            <td align="center">continuous</td>
            <td align="center">0.01</td>
        </tr>
        <tr>
            <td rowspan=2 align="center">exponential</td>
            <td rowspan=2 align="center">0.05</td>
            <td align="center">single-pulse</td>
            <td align="center">-</td>
        </tr>
        <tr>
            <td align="center">continuous</td>
            <td align="center">0.01</td>
        </tr>
                <tr>
            <td rowspan=4 align="center">10000</td>
            <td rowspan=2 align="center">constant size</td>
            <td rowspan=2 align="center">-</td>
            <td align="center">single-pulse</td>
            <td align="center">-</td>
        </tr>
        <tr>
            <td align="center">continuous</td>
            <td align="center">0.01</td>
        </tr>
        <tr>
            <td rowspan=2 align="center">exponential</td>
            <td rowspan=2 align="center">0.05</td>
            <td align="center">single-pulse </td>
            <td align="center">-</td>
        </tr>
        <tr>
            <td align="center">continuous</td>
            <td align="center">0.01</td>
        </tr>
    </tbody>
</table>
  
* **ancestry_\*.sh** - scripts to extract ancestry information from 10 .trees files output from SLiM simulations. Calls ../localancestry_proportions.py and ../localancestry_tracts.py 10 times each. *_SAMPLE.sh files run ../localancestry_proportions_sample.py and ../localancestry_tracts_sample.py.

* **calcstats_\*.sh** - scripts to calculate ancestry-based statistics for 10 simulations for each of the constant N and exponential growth models. Calls ../ancestryanalysis_CV.R 10 times. *_SAMPLE.sh files run ../ancestryanalysis_CV_sample.R.

driver scripts:

- wrappers to submit jobs that simulate and analyze 1000 neutral simulations for each demographic model. Numbered in order. 04_make_df.sh will combine output stats for the 1000 simulations into one txt file for each demographic model.
