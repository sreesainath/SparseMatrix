from sys import argv
from distutils.core import setup, Extension
from Cython.Distutils import build_ext

##############################################################################

if __name__ == "__main__":
    setup(
        name='sparse',
        version='0.1',
        description='',
        author='',
        author_email='',
        license='TBD',
        cmdclass = {'build_ext': build_ext},
        ext_modules = [
            Extension(
                "headers.wrapper",
                sources=["headers/wrapper.pyx"],
                language="c++",
            )
        ],
        packages=['headers']
    )

