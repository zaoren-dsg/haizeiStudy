#!/bin/bashi

loginNum=$(last | grep "czr" | grep -v "^$"| wc -l)
userName=$(whoami)
address=$(curl -s wttr.in/Hangzhou | tail -3 | head -1 |sed 's/,//g' | cut -d ' ' -f 8,7,2 | awk '{ for(i=NF;i>0;i--){if(i==1){print $i}else{printf $i","}fi} }')
connectTime=$(last -a | grep -v "^$" | sed -n '2p' | tr -s ' ' | cut -d ' ' -f 3,4,5,6)
disconnectTime=$(last -a | sed -n '2p' | grep -v "^$" |tr -s ' ' | cut -d ' ' -f 8)
duration=$(last -a | grep -v "^$" | sed -n '2p' | tr -s ' ' | cut -d ' ' -f 9)

echo "小帅哥进来玩啊~~~~~~~~~~"
echo -e "\033[1;31m${userName}\033[0m小帅哥，你已经来玩\033[1;31m${loginNum}\033[0m次啦"
echo -e "小帅哥你现在在我们\033[1;33m${address}\033[0m分店"
echo -e "小帅哥你上次在我们店从\033[1;34m${connectTime}\033[0m开始玩到\033[1;34m${disconnectTime}\033[0m，一共玩了\033[1;31m${duration}\033[0m"
echo "今天的天气是："
curl -s wttr.in/Hangzhou | grep -v "Total"  |sed -n '3,6p'
fortune | cowsay -f dragon-and-cow


