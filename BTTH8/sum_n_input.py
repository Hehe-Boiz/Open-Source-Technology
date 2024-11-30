#!/usr/bin/env python3
# bài 6 

n = int(input("Moi ban nhap so luong phan tu: "))
sum=0

for i in range(n):
    x = int(input(f"Moi ban nhap so luong phan tu thu {i+1}: "))
    if x < 100 or x > 999:
        print("Ban can phai nhap gia tri tu khoang (100-999)!")
        break
    sum+=x
print(f"Tong gia tri {n} phan tu: {sum}")
