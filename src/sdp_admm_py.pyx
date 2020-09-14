# distutils: language = c++
from sdp_admm cimport List, mat, NumericMatrix
from sdp_admm cimport set_value, sdp1_admm, get_mat, initialize_r, deinitialize_r, set_list_value
import numpy as np
def sdp1_admm_py(pyMat, K, rho=0.1, T=10000, tol=1e-5, report_interval=100):
    cdef List* param_list
    cdef List* result_list
    cdef mat* _m
    cdef NumericMatrix* _m_r
    initialize_r() # necessary to initialize global R object
    param_list = new List()
    result_list = new List()
    set_list_value(param_list[0], rho, T, tol, report_interval)
    _m = new mat()
    _m_r = new NumericMatrix()
    n_rows, n_cols = pyMat.shape
    _m[0].set_size(n_rows, n_cols)
    for i in range(n_rows):
        for j in range(n_cols):
            set_value(_m[0], i, j, pyMat[i, j])
    result_list[0] = sdp1_admm(_m[0], K, param_list[0])
    get_mat(_m_r[0], result_list[0])
    py_result_mat = np.zeros([n_rows, n_cols])
    for i in range(n_rows):
        for j in range(n_cols):
            py_result_mat[i, j] = _m_r[0](i, j)
    del param_list
    del result_list
    del _m
    del _m_r
    deinitialize_r()
    return py_result_mat