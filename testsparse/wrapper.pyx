"""
  Sparse Matrix/Tensor Library
"""

import math

# Import declarations from .h file 
cdef extern from "Sparse_matrix.h" namespace "sparse":
    cdef cppclass Sparse_matrix:
        Sparse_matrix()
        getdata()
        printdata()
      
cdef class SparseTensor:
    """ Actual python class visible to user """
    cdef Sparse_matrix *cpp_sp_mtx 

    def __init__(self):
        self.cpp_sp_mtx = new Sparse_matrix()

    def getdata(self):
        self.cpp_sp_mtx.getdata()

    def printdata(self):
        self.cpp_sp_mtx.printdata()
       #self.some = new SomeClass()
        #cdef SomeClass *some = new SomeClass()
        #del some
#some.method1()
#del test
