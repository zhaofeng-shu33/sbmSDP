# distutils: language = c++
from sdp_admm cimport List, mat, set_value, sdp1_admm

def sdp1_admm_py(pyMat, K):
    cdef List empty_list, result_list
    cdef mat _m
    n_rows, n_cols = pyMat.shape()
    _m.set_size(n_rows, n_cols)
    for i in range(n_rows):
        for j in range(n_cols):
            set_value(_m, i, j, pyMat[n_rows, n_cols])
    result_list = sdp1_admm(_m, K, empty_list)
    return