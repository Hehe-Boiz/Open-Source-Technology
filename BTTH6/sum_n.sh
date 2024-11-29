#!/bin/bash
# bài 7

read -p "Moi ban nhap so n: " n

sum=0
# for i in {1..n}; do
for i in $(seq 1 $n); do 
	# ((_)) dùng để thực hiện phép tính mà không trả về giá trị để gán hay in ra màn hình 
	((sum+=i))
done
echo "Ket qua la: $sum"

