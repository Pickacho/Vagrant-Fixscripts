#!/bin/bash
read -p "What is the desired server target? " TARGET
echo $TARGET
server1=Server1=192.168.100.10
server2=Server2=192.168.100.11
Remotedir=${@: -1}
echo "My Host name is ${MYHOSTNAME}"
echo "My  Username is ${MYUSERNAME}"
str1=$HOSTNAME
str2="server2"
BIGP="vagrant"
#if you wish to echo the number of arguments entered to the scriptd (including the remote server path) uncommet the next line
#echo ${#} 
#echo ${@}
#echo "$(($# - 1))"
for var in ${@:1:$#-1}        #${0:$(($# - 1))} 
do
       echo "I am going to scp $var"
       sudo sshpass -p "${BIGP}" scp $var vagrant@${TARGET}:${Remotedir}
done
#scp ${:[@-1]} username@${TARGET}:${@: -1}  

#/tmp/file1.sh /tmp/file2.sh /tmp/file3.sh /tmp/file4.sh /tmp/file5.sh /tmp/file6.sh /tmp/file7.sh /tmp/file8.sh /tmp/file9.sh




