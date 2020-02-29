cp /etc/hosts /tmp/hosts.bak
printf "192.168.100.10   server1\n192.168.100.11   server2\n" >> /tmp/hosts.bak
sudo cp /tmp/hosts.bak /etc/hosts