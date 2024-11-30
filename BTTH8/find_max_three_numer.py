#!/usr/bin/env python3
# bài 4 

so1 = int(input("Moi ban nhap so dau tien: "))
so2 = int(input("Moi ban nhap so thu 2: "))
so3 = int(input("Moi ban nhap so thu 3: "))

max = so1

if max < so2:
    max = so2
if max < so3:
    max = so3

print(f"So lon nhat la so: {max}")
