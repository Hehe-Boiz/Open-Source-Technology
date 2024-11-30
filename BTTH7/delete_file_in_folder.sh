#!/bin/bash
# bài 7 

read -p "Nhap duong dan thu muc: " dir
read -p "Nhap loai file can xoa: " exten

if [ ! -d "$dir" ]; then
	echo "Thu muc khong ton tai"
	exit 1
fi

files=$(find "$dir" -type f -name "*.$exten" 2>/dev/null)
if [ -z "$files" ]; then
    echo "Không có file .$exten trong thư mục '$dir'."
    exit 0
fi

for i in "$dir"/*; do
	# [[]] có thể giúp so sánh pattern mà [] không làm đươc 
	if [[ $i == *.$exten && -f "$i" ]]; then
		rm "$i"
	fi
done

