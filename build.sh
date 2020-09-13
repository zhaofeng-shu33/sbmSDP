#!/bin/bash
# system level
cd src
python3 setup.py build_ext -lR -lRInside -l:Rcpp.so -l:RcppArmadillo.so -L/usr/lib/R/site-library/Rcpp/libs/ -L/usr/lib/R/site-library/RcppArmadillo/libs/ -L/usr/lib/R/site-library/RInside/lib/
export LD_LIBRARY_PATH=/usr/lib/R/site-library/Rcpp/libs/:/usr/lib/R/site-library/RcppArmadillo/libs/
# prepare to import the py-dynamic-lib after install