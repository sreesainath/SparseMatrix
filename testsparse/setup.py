from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext

setup(
  name = 'test',
  ext_modules=[
    Extension("sparse",
              sources=["wrapper.pyx", "Sparse_matrix.h"], # Note, you can link against a c++ library instead of including the source
              include_dirs=["."],
              language="c++"),
    ],
  cmdclass = {'build_ext': build_ext},

)
