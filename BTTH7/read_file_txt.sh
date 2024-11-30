#!/bin/bash
# bài 8 

read -p "Nhap ten file ban muon doc: " filename

if [ ! -f "$filename" ]; then
	echo "File khong ton tai"
fi

# đặt IFS thành trống để không xóa khoảng trắng ở đầu dòng hoặc cuối dòng
# < "$filename" chỉ định file input cho vòng lặp while 
# while IFS= read -r line; do
#     echo "Dòng: $line"
# done < "$filename"

cat $filename 
