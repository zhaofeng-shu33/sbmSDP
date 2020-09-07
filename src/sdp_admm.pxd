cdef extern from "RcppArmadillo.h" namespace "arma":
    cdef cppclass mat
cdef extern from "Rcpp.h" namespace "Rcpp":
    cdef cppclass List:
        List()
