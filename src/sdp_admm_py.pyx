# distutils: language = c++
# distutils: include_dirs = /home/zhaofeng/R/x86_64-pc-linux-gnu-library/3.5/Rcpp/include, /home/zhaofeng/R/x86_64-pc-linux-gnu-library/3.5/RcppArmadillo/include, /usr/share/R/include
from sdp_admm cimport List, mat
def sdp1_admm_py(pyList, pyMat):
    cdef List a
    a = List()
    return
