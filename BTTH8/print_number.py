#!/usr/bin/env python3
# bài 9

while True:
    n = int(input("Moi ban nhap so n: "))
    if 10 < n < 99:
        break
    else:
        print("So nhap vao khong hop le. Vui long nhap lai")

print("Day so la: ", end=" ")
for i in range(10):
    print(n, end=" ")
    n+=3
    if i == 9:
        print("\n")

