#!/bin/bash

read -p "Mời bạn nhập tên và năm sinh: " name year

current_year=$(date +%Y)
echo "Xin chào $name. Năm nay bạn $(($current_year - $year))"
