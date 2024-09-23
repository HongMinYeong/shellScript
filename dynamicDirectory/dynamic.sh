#!/bin/sh

if [ "$#" -ne 3 ]
then
    echo "디렉토리 이름, 시작 index, 끝 index 순으로 3개의 데이터 입력해 주세요"
    exit 1  # 강제종료
fi

dir_name=$1
start_number=$2
end_number=$3

for ((i=start_number; i<=end_number; i++)); 
do
    mkdir "$dir_name$i"  #fisa1   
done

echo "디렉토리 생성 완료"