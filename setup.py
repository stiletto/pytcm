from distutils.core import setup
from Cython.Build import cythonize

setup(
    name = "PyTCM",
    ext_modules = cythonize('pytcm.pyx'),
)

