#!/bin/bash
# bài 6

while true; do
	echo "CHUONG TRINH BE LAM TOAN"
	echo "1- Be lam toan cong"
	echo "2-Be lam toan tru"
	echo "3-Be lam toan nhan"
	echo "4-Be lam toan chia"
	echo "0-Thoat chuong trinh"
	read -p "Moi ban nhap lua chon: " choice
	if [ "$choice" -ne 0 ]; then
		read -p "Moi ban nhap 2 so muon tinh: " so1 so2
	fi
	case $choice in
		1)
			echo "Ket qua la: $(($so1 + $so2))"
			;;
		2)
			echo "Ket qua la: $(($so1 - $so2))"
			;;
		3)
			echo "Ket qua la: $(($so1 * $so2))"
			;;
		4)
			echo "Ket qua la: $(($so1 / $so2))"
			;;
		0)
			echo "Ban da thoat chuong trinh"
			break
			;;
	esac
done
