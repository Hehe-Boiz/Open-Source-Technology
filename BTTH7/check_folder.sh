#!/bin/bash
# bài 1 

# -e kiem tra file hoac thu muc 
# -f kiem tra file
# -d kiem tra thu muc 
if [ -z "$1" ]; then
	echo "Ten folder khong duoc de trong. Vui long nhap lai"
elif [ -d "$1" ]; then
	echo "Thu muc da ton tai"
else
	echo "Thu muc khong ton tai"
fi
