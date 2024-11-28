#!/bin/bash

read -p "Moi ban nhap so thu nhat: " so1
read -p "Moi ban nhap so thu hai: " so2
read -p "Moi ban nhap so thu ba: " so3

sum=$((so1 + so2 + so3))
# do mọi thứ đọc từ read thì đều là chuỗi 
# khi đặt thành " " thì bash sẽ tự chuyển lại thành số (ở đây cho gặp -lt, -gt, -ge,...)
if [[ "so1" -lt 10 || "so1" -gt 99 || "so2" -lt 10 || "so2" -gt 99 || "so3" -lt 10 || "so3" -gt 99 ]]; then
	echo "Xay ra loi"
else 
	echo "Ket qua la: $sum"
fi
