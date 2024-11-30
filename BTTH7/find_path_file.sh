#!/bin/bash
# bài 3

# find [thư mục_bắt_đầu] [tùy chọn] [điều kiện]
# iname teen file gần đúng (không phân biệt chữ hoa, chữ thường)
# -name "*substring*substring": chuỗi con trong tên 
# -size +100M: file lớn hơn 100mb

read -p "Nhap ten file can tim: " filename

if [ -z "$filename" ]; then
	echo "Ten file khong duoc de trong"
	exit 1
fi

echo "Dang tim kiem file '$filename':..."

# 2>/dev/null: chuyển luồng lỗi chuẩn vào thiết bị rỗng (mọi dữ liệu được gửi đến đây thì sẽ bị hủy bỏ"
result=$(find /home/heheboiz -type f -name "$filename" 2>/dev/null)

if [ -z "$result" ]; then
	echo "Khong tim thay '$filename' tren he thong"
else
	echo "File '$filename' duoc tim thay tai: $result"
fi

