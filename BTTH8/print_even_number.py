#!/usr/bin/env python3
# bài 7 

numbers = input("Nhap vao cac so, cach nhau boi dau cach: ").split()

# list comprehension: [<biểu thức> for <biến> in <iterable>] 
numbers = [int(num) for num in numbers]

print("Cac so chan la: ")
for num in numbers:
    if num % 2 == 0:
        print(num)
