cdef extern from "RcppArmadillo.h" namespace "arma":
    cdef cppclass mat:
        mat()
        void set_size(int, int)
cdef extern from "Rcpp.h" namespace "Rcpp":
    cdef cppclass List:
        List()
cdef extern from "helper.h":
    cdef void set_value(mat, int, int, double)
    cdef List sdp1_admm(mat, int, List)