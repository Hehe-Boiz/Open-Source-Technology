#!/usr/bin/env python3

import csv

# sử dụng with để có thể tự đóng file 

with open('test/sinhvien.csv', 'r') as f:
    reader = csv.reader(f)
    for col in reader:
        print(col)

