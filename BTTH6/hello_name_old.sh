#!/bin/bash
read -p "Nhap ten va nam sinh cua ban: " name year
echo "Xin chao ban $name"
echo "Nam nay ban $(( $(date +%Y) - $year ))"
