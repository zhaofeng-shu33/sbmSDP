#!/bin/bash
# system level
cd src
export LD_LIBRARY_PATH=/usr/lib/R/site-library/Rcpp/libs/:/usr/lib/R/site-library/RcppArmadillo/libs/:/usr/lib/R/site-library/RInside/lib/
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/feng/.conda/envs/r_env/lib/R/library/Rcpp/libs/:/home/feng/.conda/envs/r_env/lib/R/library/RcppArmadillo/libs/:/home/feng/.conda/envs/r_env/lib/R/library/RInside/lib/:/home/feng/.conda/envs/r_env/lib/R/lib/
# prepare to import the py-dynamic-lib after install
python3 setup.py install
python3 test.py