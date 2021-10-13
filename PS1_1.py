# -*- coding: utf-8 -*-
"""
Created on Fri Oct  8 17:19:09 2021

@author: TianYF
"""

def Print_values(a,b,c):
    if a > b:
        if b > c:
            print(a,b,c)
        elif a > c:
            print(a,c,b)
        else:
            print(c,a,b)
    elif b > c:
        print(c,a,b)
    else:
        print(c,b,a)

Print_values(1,3,2)

