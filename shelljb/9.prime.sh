#!/bin/bash

function Usage(){
    echo "Usage : $0 start_num end_num"
    exit
}

function is_prime(){
    num=$1
    local i
    for (( i=2; i<${num}; i++ ));do
        if [[ $[ ${num} % $i ] -eq 0 ]];then
            return 1
        fi
        
    done
    return 0;
}

if [[ $# -ne 2 ]];then
    Usage
fi

Start=$1
End=$2

#echo "Start : $Start, End : $End"

for ((i=${Start}; i<=${End}; i++));do
    is_prime $i
   # echo "i: $i, is_prime : $?"
    if [[ $? -eq 0 ]];then
    #    echo "is_prime : $?, i : $i"

        echo $i
    fi
done

