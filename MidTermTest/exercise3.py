#!/usr/bin/env python3

with open("sinhvien.csv", 'r') as file:
	lines = file.readlines()[1:]
	# bỏ qua dòng đầu tiên 
	# next(file)
for line in lines:
	line = line.strip()
	words = line.split(',')
	print(f"MSSV: {words[0]}, HoTen: {words[1]}, NgaySinh: {words[2]}, Khoa: {words[3]}")
