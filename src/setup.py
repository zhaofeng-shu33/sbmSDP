from setuptools import setup, Extension
from Cython.Build import cythonize
extensions = [
    Extension("sdp_admm_py", ["sdp_admm_py.pyx", "sdp_admm.cpp"],
        include_dirs=['/home/zhaofeng/R/x86_64-pc-linux-gnu-library/3.5/RcppArmadillo/include',
                      '/home/zhaofeng/R/x86_64-pc-linux-gnu-library/3.5/Rcpp/include',
                      '/usr/share/R/include'])]
setup(
    ext_modules=cythonize(extensions)
)


