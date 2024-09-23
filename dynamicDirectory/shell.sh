#!/bin/bash

# 인수값 확인
#만약 인수의 개수가 1보다 적다면, 스크립트 사용법 출력
if [ "$#" -lt 1 ]; then
    echo "사용법: $0 <디렉토리 이름> [<디렉토리 이름> ...]... 디렉토리 갯수를 1개이상 입력해주세요 "
    exit 1
fi

# 현재 날짜와 시간 형식
current_time=$(date +"%Y%m%d_%H%M%S")

# 인수로 받은 각 디렉토리 이름에 대해 반복
for dir_name in "$@"; do
    # 날짜와 시간을 포함한 디렉토리 이름 생성
    new_dir_name="${dir_name}_${current_time}"
    
    # 디렉토리 생성
    mkdir "$new_dir_name"
    
    echo "생성된 디렉토리: $new_dir_name"
done