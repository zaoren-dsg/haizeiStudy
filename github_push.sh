#!/bin/bashi

function Usage(){
    echo "Usage : $0 add_file_name file_comment purpose"
    exit
}

add_name=$1
file_comment=$2
purpose=$3

echo "add_name : $add_name, file_comment : $file_comment, purpose : $purpose"

if [[ $# -ne 3 ]];then
    Usage
fi


sudo git add ${add_name}
sudo git commit -m  "${file_comment}"
git remote add origin https://github.com/zaoren-dsg/haizeiStudy.git
git ${purpose} origin master


