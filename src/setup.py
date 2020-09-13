from setuptools import setup, Extension
from Cython.Build import cythonize
extensions = [
    Extension("sdp_admm_py", ["sdp_admm_py.pyx", "sdp_admm.cpp"],
        include_dirs=['/usr/lib/R/site-library/RcppArmadillo/include',
                      '/usr/lib/R/site-library/Rcpp/include',
                      '/usr/share/R/include'])]
setup(
    ext_modules=cythonize(extensions)
)


