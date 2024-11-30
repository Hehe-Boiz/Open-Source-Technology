#!/usr/bin/env python3
# bài 8

list=[23, 76, 12, 1, 97, 26, 31]

sum=0
for i in range(len(list)):
    if i % 2 == 0:
        sum+=list[i]

print(f"Tong cac so o vi tri chan la: {sum}")
