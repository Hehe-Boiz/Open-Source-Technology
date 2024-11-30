#!/usr/bin/env python3
# bài 5 

n = int(input("Moi ban nhap vao n: "))

list = []
for i in range(n):
    x = int(input(f"Moi ban nhap vao so thu {i+1}: "))
    list.append(x)

max=list[0]
for i in range(n):
    if max < list[i]:
        max = list[i]

print(f"So lon nhat trong {n} so: {max}")

