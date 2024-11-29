#!/bin/bash
# bài 9 

read -p "Moi ban nhap 3 so: " so1 so2 so3

if [[ "$so1" == "" || "$so2" == "" || "$so3" == "" ]]; then
	echo "Xay ra loi"
else 
	# if [ $so1 -lt $so2 ]; then
	# 	if [ $so2 -lt $so3 ]; then 
	# 		echo "So $so3 la so lon nhat"
	# 	else 
	# 		echo "So $so2 la so lon nhat"
	# 	fi
	# else 
	# 	if [ $so1 -lt $so3 ]; then
	# 		echo "So $so3 la so lon nhat"
	# 	else 
	# 		echo "So $so1 la so lon nhat"
	# 	fi
	# fi

	max=$so1
	if [ $so2 -gt $max ]; then
		max=$so2
	fi
	if [ $so3 -gt $max ]; then
		max=$so3
	fi
	echo "So lon nhat la: $max"
fi

