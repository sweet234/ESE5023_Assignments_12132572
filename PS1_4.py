# -*- coding: utf-8 -*-
"""
Created on Fri Oct  8 17:20:11 2021

@author: TianYF
"""
L = [[1], [2]]

def Least_moves(x):
    if 2 < x <= 100:
        for i in range(2, x):
            list_i_double = list(map(lambda x: x * 2, L[i - 1]))
            list_i_add = list(map(lambda x: x + 1, L[i - 1]))
            list_i = list_i_double + list_i_add
            L.append(list_i)
            for i, nested in enumerate(L):
                if x in nested:
                    print(i)
                    break
            else:
                continue
            break
    elif x == 2:
        print('1')
    else:
        print('0')


Least_moves(5)

