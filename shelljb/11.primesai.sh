#!/bin/bash

if [[ $# -ne 2 ]];then
    echo "error"
    exit
fi

Start=$1
End=$2
declare -a Prime
Prime[0]=0
Prime[1]=1

function init_prime(){
    local end=$1
    local i

    for ((i=2; i<=$[${end} / 2]; i++));do
        for(( j=$[ ${i} * ${i} ]; j<=${end}; j+=i ));do
            if [[ ${Prime[$j]} -eq 1 ]];then
                continue
            fi
            Prime[${j}]=1;
            echo "first_j : ${j} ``"
        done
    done
}

init_prime ${End}

for ((i=${Start}; i<=${End}; i++));do
    if [[ ${Prime[$i]}x == x ]];then
        echo ${i};
    fi
done
