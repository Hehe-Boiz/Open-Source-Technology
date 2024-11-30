#!/bin/bash
# bài 4 

while true; do
	read -p "Nhap ten file can tim (bao gom ca phan mo rong): " filename

	if [ -z "$filename" ]; then
		echo "Ten file khong duoc de trong. Vui long nhap lai"
		continue
	elif  [[ "$filename" != *.* || "$filename" == *. ]]; then
		echo "Ten file phai bao gom phan mo rong hop le"
		continue
	fi

	break
done

echo "Dang tim kiem file "$filename" tren he thong..."

result=$(find /home/heheboiz -type f -name "$filename" 2>/dev/null)

if [ -z "$result" ]; then
	echo "Khong tim thay file "$filename" tren he thong"
else 
	# echo "File '$filename' duoc tim thay tai: "
	# # |: chuyển đầu ra của echo vào vòng lăp while, -r sẽ làm \ đoc là ký tự bình thường 
	# echo "$result" | while read -r line; do
	# 	echo "$line"
	# done
	echo "File '$filename' duoc tim thay tai: "
	echo "$result"
fi
