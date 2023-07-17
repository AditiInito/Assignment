#!/bin/bash
echo "number of addresses to input: "
read n
echo "enter ip address and name: "
for i in $(seq 1 $n);
do
  read -p "ip: " ip
  read -p "name: " name
  read -p "public key: " path
  key=$(cat ~/$path)
  cat ~/$path | ssh $name@$ip "cat>>~/.ssh/authorized_keys"
  ssh $name@$ip "cat ~/.ssh/authorized_keys | awk '{print $1}' | sort | uniq | tee ~/.ssh/authorized_keys"
done
