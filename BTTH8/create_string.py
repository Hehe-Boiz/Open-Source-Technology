#!/usr/bin/env python3
# bài 11

Chuoi1 = "Tri tue nhan tao ngay nay co the thay the con nguoi trong mot so cong viec nhat dinh."
Chuoi2 = "con nguoi ngay nay"

tu_bi_loai = Chuoi2.split()

chuoi_moi=""

for i in Chuoi1.split():
    if i in tu_bi_loai:
        continue
    chuoi_moi+=i+" "
    
with open("ketqua.txt", "w", encoding="utf-8") as file:
    file.write(chuoi_moi)

print("Chuoi sau khi loai bo cac tu trong Chuoi2:")
print(chuoi_moi)
