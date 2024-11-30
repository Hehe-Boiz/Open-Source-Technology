#!/bin/bash
# bài 5

read -p "Nhap duong dan thu muc can liet ke: " dir

if [ ! -d "$dir" ]; then
	echo "Loi: thu muc '$dir' khong ton tai"
	exit 1
fi

# echo "Cac tap tin trong thu muc '$dir' la: "
# find "$dir" -type f

echo "Các tập tin trong thư mục '$dir' là (dùng ls -l | grep):"

# grep [tùy chọn] <pattern>
# -v: sẽ hiện các dòng không khớp, '^d': biểu thức chính quy: ^ bắt đầu dòng
ls -l "$dir" | grep -v '^d'
