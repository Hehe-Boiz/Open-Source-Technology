#!/bin/bash
# bài 12

while true; do
	read -p "Nhap ten file de luu noi dung: " filename
	if [ -z "$filename" ]; then
		echo "Ten file khong duoc de trong. Vui long dang nhap lai."
	elif [ -e "$filename" ]; then
		echo "File '$filename' da ton tai. Vui long nhap ten khac."
	else 
		break
	fi
done
echo "Nhap doan van (Nhan Ctrl+D de ket thuc): "

cat > "$filename"

echo "Doan van da duoc luu vao file: $filename"
