#!/bin/bash
# bài 14

while true; do
	read -p "Nhap ten thu muc: " folder
	if [ -z "$folder" ]; then
		echo "Vui long truyen ten thu muc duoi dang doi so. Vui long nhap lai."
	elif [ -d "$folder" ]; then
		echo "Thu muc '$folder' da ton tai. Vui long nhap lai"
	else
		break
	fi
done
mkdir "$folder"
echo "Thu muc '$folder' da duoc tao."

