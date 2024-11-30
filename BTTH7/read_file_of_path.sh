#!/bin/bash
# bài 9 

read -p "Moi ban nhap duong dan: " path

if [ ! -f "$path" ]; then
	echo "File khong ton tai."
	exit 1
fi

cat $path
