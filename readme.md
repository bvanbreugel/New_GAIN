# ReGain

This project offers a GAN-based imputation method for missing data. It uses on the GAIN framework extensively, as introduced in:

Reference: J. Yoon, J. Jordon, M. van der Schaar, "GAIN: Missing Data Imputation using Generative Adversarial Nets," ICML, 2018.
[Paper](http://medianetlab.ee.ucla.edu/papers/ICML_GAIN.pdf)
[Appendix](http://medianetlab.ee.ucla.edu/papers/ICML_GAIN_Supp.pdf)
Contact: Jinsung Yoon, jsyoon0823@g.ucla.edu

Code is forked from GAIN's repository https://bitbucket.org/mvdschaar/mlforhealthlabpub/src/master/alg/gain/, or see https://github.com/jsyoon0823/GAIN/blob/master/gain.py, both written by Jinsung Yoon.

Contact: Boris van Breugel, boris.breugel.19@ucl.ac.uk

## Example usage:

```
    python3 create_missing.py --dataset bc -o missing.csv --oref ref.csv --istarget 1 --normalize01 1
    python3 regain.py -i missing.csv -o imputed.csv --target target
    python3 regain_ana.py -i missing.csv --ref ref.csv --imputed imputed.csv -o result.json --target target
```
or just:
```
    bash run.sh
```

