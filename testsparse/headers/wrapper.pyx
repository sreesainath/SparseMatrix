"""
  Sparse Matrix/Tensor Library
"""

import math

# Import declarations from .h file 
cdef extern from "Sparse_matrix.h" namespace "sparse":
    cdef cppclass Sparse_matrix:
        Sparse_matrix()
        void getdata()
        void printdata()
        void getshape()
        double max()
        double min()
        double mean()
        void sort()
        void square()
      
cdef class SparseTensor:
    """ Actual python class visible to user """
    cdef Sparse_matrix *cpp_sp_mtx 

    def __init__(self):
        self.cpp_sp_mtx = new Sparse_matrix()

    def getdata(self):
        self.cpp_sp_mtx.getdata()

    def printdata(self):
        self.cpp_sp_mtx.printdata()

    def getshape(self):
        self.cpp_sp_mtx.getshape()

    def max(self):
        cdef double maxi
        maxi = self.cpp_sp_mtx.max()
        return maxi
    
    def min(self):
        cdef double mini
        mini = self.cpp_sp_mtx.min()
        return mini

    def mean(self):
        cdef double meanie
        meanie = self.cpp_sp_mtx.mean()
        return meanie
    
    def sort(self):
        self.cpp_sp_mtx.sort()

    def square(self):
        self.cpp_sp_mtx.square()
        
    
