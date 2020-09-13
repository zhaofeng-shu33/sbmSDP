#!/bin/bash
# system level
cd src
python3 setup.py build_ext
export LD_LIBRARY_PATH=/usr/lib/R/site-library/Rcpp/libs/:/usr/lib/R/site-library/RcppArmadillo/libs/:/usr/lib/R/site-library/RInside/lib/
# prepare to import the py-dynamic-lib after install