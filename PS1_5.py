# -*- coding: utf-8 -*-
"""
Created on Fri Oct  8 17:20:27 2021

@author: TianYF
"""


# 5.1

def Find_expression(x):
    operator = ['+', '-', '']

    def backtrack(current, next_digits):
        if len(next_digits) == 1:
            combination.append(current + next_digits[0])
            return combination
        else:
            for op in operator:
                backtrack(current + next_digits[0] + op, next_digits[1:])

    combination = []
    backtrack('', digits)
    print('Total expressions:\n', combination)

    global dic
    dic = dict.fromkeys(range(1, 101), [])
    for expression in combination:
        value = eval(expression)
        if 1 <= value <= 100:
            dic[value] = dic.get(value) + [expression]
    print('Expressions whose values between 1 to 100:\n', dic)

    for expression in dic[x]:
        print('%s %s %d' % (expression, '=', x))


digits = '123456789'
x = int(input('Please input an integer between 1 and 100:'))
Find_expression(x)

# 5.2
Total_solutions = []

for i in range(1, 101):
    Total_solutions.append(len(dic[i]))
print('Total solutions for integers from 1 to 100:\n', Total_solutions)

max_number = [i + 1 for i, value in enumerate(Total_solutions) if value == max(Total_solutions)]
min_number = [i + 1 for i, value in enumerate(Total_solutions) if value == min(Total_solutions)]

print(max_number[:], 'yields the maximum of Total_solutions.')
print(min_number[:], 'yields the minimum of Total_solutions.')

