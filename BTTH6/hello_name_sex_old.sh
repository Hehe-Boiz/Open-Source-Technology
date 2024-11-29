#!/bin/bash
# bài 3 

read -p "Nhap ten, nam sinh va gioi tinh: " name old sex

if [ $old -ge 20 ] && [ $old -le 45 ]; then
	# thêm ngoặc kép để tránh biến rỗng nếu biến rỗng thì sẽ = chuỗi rỗng 
	if [ "$sex" == "nam" ]; then
		xungho="anh"
	else
		xungho="chi"
	fi
elif [ $old -gt 45 ]; then
	if [ "$sex" == "nam" ]; then
		xungho="chu"
	else
		xungho="co"
	fi
else
	xungho="ban"
fi

echo "Xin chao $xungho $name"
echo "Nam nay $xungho $(($(date +%Y) - old ))"
