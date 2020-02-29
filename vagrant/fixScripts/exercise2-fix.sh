#Please run as sudo 
#!/bin/bash
cp /etc/hosts /tmp/hosts
#grep -vwE "(cat|rat)" sourcefile > destinationfile
grep -vwE "127.0.0.1 www.ascii-art.de" /etc/hosts > /tmp/hosts.bak
mv /etc/hosts /tmp/hosts.src
cp /tmp/hosts.bak /etc/hosts