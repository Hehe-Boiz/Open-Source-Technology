#!/bin/bash

read -p "Mời bạn nhập tên, năm sinh, sex: " name year sex
old=$(($(date +%Y) - year))
echo "Xin chào $name. Năm nay bạn $old tuổi"

kind="Chưa thành niên"
if [[ "$old" -ge 18 && "$old" -le 30 ]]; then
	kind="Thanh niên"
elif [[ "$old" -ge 31 && "$old" -le 50 ]]; then
	kind="Trung niên"
else
	kind="Người cao tuổi"
fi

echo "Bạn thuộc nhóm: $kind" 
