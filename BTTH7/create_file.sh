#!/bin/bash
# bài 6

read -p "Moi ban nhap so luong file: " number
read -p "Moi ban nhap ten file: " filename

# $() được sử dụng để chạy 1 lệnh và lấy đầu ra của lệnh đó
for i in $(seq 1 $number); do
	touch "$filename$i.txt"
done
