#!/bin/bash
# bài 11 

# Lấy tên máy tính hiện tại
current_hostname=$(hostname)

# Yêu cầu người dùng nhập tên máy tính mới
read -p "Nhap ten may tinh moi: " new_hostname

# Xác nhận việc đổi tên
read -p "Ban co chac chan muon doi ten may tinh tu '$current_hostname' thành '$new_hostname'? (Yes/No): " confirmation

if [[ "$confirmation" == "Yes" || "$confirmation" == "yes" ]]; then
    # Đổi tên máy tính
    echo "$new_hostname" | sudo tee /etc/hostname > /dev/null
    sudo hostnamectl set-hostname "$new_hostname"

    echo "Da doi ten thanh '$new_hostname'."
    echo "Khuyen cao: Ban nen khoi dong lai may tinh de thay doi co hieu luc."

    # Hỏi người dùng có muốn khởi động lại không
    read -p "Ban co muon khoi dong lai bay gio khong? (Yes/No): " reboot_confirmation

    if [[ "$reboot_confirmation" == "Yes" || "$reboot_confirmation" == "yes" ]]; then
        echo "Khoi dong lai may tinh..."
        sudo reboot
    else
        echo "Ban da chon khong khoi dong lai. Ten may tinh se duoc thay doi sau lan khoi dong tiep theo."
    fi
else
    echo "Ten may tinh la: '$current_hostname'."
fi
