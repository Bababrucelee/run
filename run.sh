#!/bin/bash
POOL=ethash.unmineable.com:3333
WALLET=WIN:TJSvx6gbRV1rXqSp4CLLhKDANp5nGsb4vK
WORKER=$(echo $(shuf -i 10-40 -n 1)-myrig#3dk5-a2su)
wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.29/lolMiner_v1.29_Lin64.tar.gz
tar -xf lolMiner_v1.29_Lin64.tar.gz 
chmod +x t-rex
while [ 1 ]; do
  sleep 5
  sudo ./t-rex -a ethash -o $POOL -u $WALLET.$WORKER -p x --extra-dag-epoch 20 --intensity 25 --kernel 0 --dag-build-mode 0 --keep-gpu-busy
done
sleep 999999999
