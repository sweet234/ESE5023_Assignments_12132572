# -*- coding: utf-8 -*-
"""
Created on Fri Oct  8 17:19:38 2021

@author: TianYF
"""
# 2.1
import numpy as np

M1=np.random.randint(0,50,(5,10))#(,)Represents the matrix size
M2=np.random.randint(0,50,(10,5))#(,)Represents the matrix size
print(M1)
print(M2)

# 2.2
def Matrix_multip(M1,M2):
    r1, c1 = M1.shape
    r2, c2 = M2.shape
    result = np.zeros((r1, c2))
    for i in range(r1):
        for j in range(c2):
            for k in range(c1):
                result[i][j] += M1[i][k] * M2[k][j]
    print(result)
    return(result)

Matrix_multip(M1,M2)



