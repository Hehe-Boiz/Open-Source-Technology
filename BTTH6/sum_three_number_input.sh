#!/bin/bash

if [[ "$1" == "" || "$2" == "" || "$3" == "" ]]; then
	echo "Xay ra loi"
else
	echo "Ket qua la: $(($1 + $2 + $3))"
fi
