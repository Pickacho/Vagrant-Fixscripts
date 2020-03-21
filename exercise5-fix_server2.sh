!/bin/bash
cd ~/.ssh
sudo apt-get install sshpass -y
sudo sed -i "/\b\(127.0.0.1\|server1\)\b/d" /etc/hosts
echo "192.168.100.10     server1" | sudo tee -a /etc/hosts
cd ~/.ssh
ssh-keygen -f id_rsa -t rsa -N ''
ssh-keyscan 192.168.100.10  >> ~/.ssh/known_hosts
cp ~/.ssh/known_hosts ~/.ssh/known_hostsbackup ; sed -i 's/192.168.100.10/server1/g' ~/.ssh/known_hostsbackup ; cat ~/.ssh/known_hostsbackup >> ~/.ssh/known_hosts ; rm ~/.ssh/known_hostsbackup
sshpass -p "vagrant" ssh-copy-id vagrant@server1
clear
echo "
Done! 	  Now try to run SSH to server1
use ssh vagrant@server1
"