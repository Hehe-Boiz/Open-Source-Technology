#!/bin/bash
# bài 2

if [ -z "$1" ]; then
	echo "Ten file khong duoc de trong. Vui long nhap lai"
elif [ -f "$1" ]; then
	echo "File da ton tai"
else 
	echo "File khong ton tai"
fi

