#!/bin/bash

# validate parameter count
if [ $# -ne 2 ]; then
    echo "사용법: $0 <row> <column>"
    echo "예시: $0 5 3"
    exit 1
fi


rows=$1
cols=$2

# validate number 
if ! [[ "$rows" =~ ^[1-9][0-9]*$ ]] || ! [[ "$cols" =~ ^[1-9][0-9]*$ ]]; then
    echo "오류: 양의 정수만 입력해주세요."
    exit 1
fi

# print multiplication 
for ((i=1; i<=rows; i++)); do
    for ((j=1; j<=cols; j++)); do
        result=$((i * j))
        printf "${i}*${j}=${result}"
        
        if [ $j -lt $cols ]; then
            printf "\t"
        fi
    done
    echo
done
