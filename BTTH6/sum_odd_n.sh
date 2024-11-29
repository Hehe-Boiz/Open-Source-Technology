#!/bin/bash
# bài 8 

read  -p "Moi ban nhap so n: " n
if [[ "$n" -lt 10 || "$n" -gt 50 ]]; then
	echo "Xay ra loi"
else 
	sum=0
	for i in $(seq 1 $n); do
		if [ $((i % 2)) -ne 0 ]; then 
			((sum+=i))
		fi
	done
	echo "Tong cac so le la: $sum"
fi
