# -*- coding: utf-8 -*-
"""
Created on Fri Oct  8 17:19:55 2021

@author: TianYF
"""

import math
import numpy as np

def Pascal_triangle(n):
    array1 = np.zeros(n+1)
    for k in range(0,n+1):
        array1[k] = math.factorial(n) / (math.factorial(k)*math.factorial(n-k))
    return array1

print(Pascal_triangle(100))
print(Pascal_triangle(200))
