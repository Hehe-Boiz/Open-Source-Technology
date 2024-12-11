#!/bin/bash

while true; do
	echo "CHƯƠNG TRÌNH TÍNH TOÁN"
	echo "1. Phép cộng"
	echo "2. Phép trừ"
	echo "3. Phép nhân"
	echo "4. Phép chia"
	echo "0. Thoát chương trình"
	read -p "Mời bạn nhập lựa chọn: " choice
	if [ "$choice" -ne 0 ]; then
		read -p "Mời bạn nhập 2 số muốn tính: " so1 so2
	fi
	case $choice in
		1)
			echo "Kết quả là: $((so1 + so2))"
			;;
		2)
			echo "Kết quả là: $((so1 - so2))"
			;;
		3)
			echo "Kết quả là: $((so1 * so2))"
			;;
		4)
			echo "Kết quả là: $((so1 / so2))"
			;;
		0)
			echo "Bạn đã thoát chương trình"
			break
			;;
	esac
done 
