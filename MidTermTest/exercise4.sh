#!/bin/bash

while true; do
	read -p "Mời bạn nhập đường dẫn: " path
	if [ -z "$path" ]; then
		echo "Vui lòng nhập tên file"
	elif [ -d "$path" ]; then
		echo "Vui lòng nhập tên file mà không phải thư mục"
	elif [ ! -e "$path" ]; then
		echo "file không tồn tại"
	else
		break
	fi
done

if [ ! -x "$path" ]; then
	chmod +x "$path"
	if [ -x "$path" ]; then
		echo "đã cấp quyền thành công"
	else
		echo "cấp quyền thất bại"
	fi
fi

