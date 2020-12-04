#!/bin/bash

array_prime = (0,1)

function Usage(){
    echo "Usage : $0 max_num"
    exit
}

if [[ #$ -ne 2  ]];then
    Usage
fi

Max=$1

funcion is_prime(){
    num=$1
    local i
    for(( i=2; i<=[$Max]/2; i++));do
        if[[[$[i] * i ] -eq 0]]
    done
}

