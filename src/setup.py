from setuptools import setup
from Cython.Build import cythonize

setup(
    ext_modules = cythonize("sdp_admm.pyx", include_path=["/home/zhaofeng/R/x86_64-pc-linux-gnu-library/3.5/Rcpp/include",
        "/home/zhaofeng/R/x86_64-pc-linux-gnu-library/3.5/RcppArmadillo/include"])
)


