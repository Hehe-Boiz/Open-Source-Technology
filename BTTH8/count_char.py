#!/usr/bin/env python3
# bài 10

chuoi = input("Nhap mot chuoi: ")

so_chu=0
for i in chuoi:
    if i.isalpha():
        so_chu+=1

so_ky_tu = len(chuoi)

print(f"So luong chu cai: {so_chu}")
print(f"So luong ky tu: {so_ky_tu}")
