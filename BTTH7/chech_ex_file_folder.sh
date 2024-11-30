#!/bin/bash

read -p "Moi ban nhap ten file hoac folder: " path

if [ ! -e "$path" ]; then
	echo "File hoac folder khong ton tai"
fi

# awk được xem là công cụ xử lí văn bản nhanh, $1 cột 1 của đầu vào 
line=$(ls -l $path | awk '{print substr($1, 10, 1)}')
if [ "$line" == "-" ]; then
	echo "Chua duoc dat quyen ex"
	chmod o+x $path
	echo "Dat lai thanh cong"
else 
	echo "Da dat roi"
fi

