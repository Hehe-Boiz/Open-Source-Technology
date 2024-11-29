#!/bin/bash
# bài 10 

user=$USER

# những gì bỏ trong $(_) thì sẽ được xem là lệnh của linux và nó sẽ thực hiện lệnh nó mà không phải cú pháp bash 
# thường được dùng để lấy đầu ra và gán vào 1 biến 
name_computer=$(hostname)

echo "Xin chao $user"
echo "Ban dang su dung may tinh $name_computer"
