#!/bin/bash

while true; do
	echo "QUẢN LÝ THƯ MỤC"
	echo "1. Tạo thư mục"
	echo "2. Xóa thư mục"
	echo "3. Kiểm tra thư mục tồn tại"
	echo "4. Liệt kê các tập tin trong thư mục"
	echo "5. Thoát chương trình"
	read -p "Mời bạn nhập lựa chọn: " choice
	if [ "$choice" -eq 5 ]; then
		echo "Bạn đã thoát chương trình"
		break
	fi
	read -p "Mời bạn nhập tên thư mục: " name
	if [ -z "$name" ]; then
		while true; do
			read -p "Bạn cần nhập tên thư mục" name
			# -n: Kiểm tra xem độ dài > 0 không
			if [ -n "$name" ]; then
				break
			fi
		done
	fi

	case $choice in
		1)
			mkdir "$name"
			if [ -d "$name" ]; then
				echo "Đã tạo thư mục thành công"
			else
				echo "Tạo thất bại"
			fi
			;;
		2)
			rm -r "$name"
			if [ ! -d "$name" ]; then
				echo "Đã xóa thành công"
			else
				echo "Xóa thất bại"
			fi
			;;
		3)
			if [ -d "$name" ]; then
				echo "Thư mục đã tồn tại"
			else
				echo "Thư mục không tồn tại"
			fi
			;;
		4)
			if [ ! -d "$name" ]; then
				echo "Thư mục không tồn tại"
			fi
			ls "$name"
			;;
	esac
done
