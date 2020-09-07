# distutils: language = c++
from sdp_admm cimport List, mat, NumericMatrix
from sdp_admm cimport set_value, sdp1_admm, get_mat
import numpy as np
def sdp1_admm_py(pyMat, K):
    cdef List empty_list, result_list
    cdef mat _m
    cdef NumericMatrix _m_r
    n_rows, n_cols = pyMat.shape()
    _m.set_size(n_rows, n_cols)
    for i in range(n_rows):
        for j in range(n_cols):
            set_value(_m, i, j, pyMat[n_rows, n_cols])
    result_list = sdp1_admm(_m, K, empty_list)
    get_mat(_m_r, result_list)
    py_result_mat = np.zeros([n_rows, n_cols])
    for i in range(n_rows):
        for j in range(n_cols):
            py_result_mat[i, j] = _m_r(i, j)
    return py_result_mat