from setuptools import setup
from Cython.Build import cythonize

setup(
    ext_modules=cythonize(input("Enter the python filename to compile: ")),
)


