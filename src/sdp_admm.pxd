cdef extern from "RcppArmadillo.h" namespace "arma":
    cdef cppclass mat:
        mat()
        void set_size(int, int)
cdef extern from "Rcpp.h" namespace "Rcpp":
    cdef cppclass List:
        List()
    cdef cppclass NumericMatrix:
        NumericMatrix()
        double operator()(int, int)
cdef extern from "helper.h":
    cdef void set_value(mat, int, int, double)
    cdef List sdp1_admm(mat, int, List)
    cdef List sdp1_admm_si(mat, List)
    cdef void get_mat(NumericMatrix, List)
    cdef void initialize_r()
    cdef void deinitialize_r()
    cdef void set_list_value(List, double, int, double, int)