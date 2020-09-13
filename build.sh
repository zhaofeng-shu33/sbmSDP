#!/bin/bash
# system level
cd src
export LD_LIBRARY_PATH=/usr/lib/R/site-library/Rcpp/libs/:/usr/lib/R/site-library/RcppArmadillo/libs/:/usr/lib/R/site-library/RInside/lib/
# prepare to import the py-dynamic-lib after install
python3 setup.py install
python3 test.py