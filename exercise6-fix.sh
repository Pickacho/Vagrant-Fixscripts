#!/bin/bash
server1=192.168.100.10
server2=192.168.100.11
Remotedir=${@: -1}
MyHostName=$(hostname)
str2="server2"
BIGP="vagrant"

if [ ${MyHostName} = "server1" ]
then
        TARGET=server2
        for var in ${@:1:$#-1}
        do
            echo "I am going to scp $var"
            sudo sshpass -p "${BIGP}" scp $var vagrant@${TARGET}:${Remotedir}
        done
else
        TARGET=server1
        for var in ${@:1:$#-1}
        do
            echo "I am going to scp $var"
            sudo sshpass -p "${BIGP}" scp $var vagrant@${TARGET}:${Remotedir}
        done
fi

#for var in ${@:1:$#-1}        #${0:$(($# - 1))} 
#do
#       echo "I am going to scp $var"
#       sudo sshpass -p "${BIGP}" scp $var vagrant@${TARGET}:${Remotedir}
#done