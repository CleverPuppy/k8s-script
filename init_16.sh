# init a ubuntu 16.04 LTS
set -x
## step 1. change apt.list to  tuna mirror
if  [ -f "/etc/apt/sources.list.backup" ]
then
	echo "already backuped!"
else 
	cp /etc/apt/sources.list  /etc/apt/sources.list.backup
fi 

SOURCES_FILE=./source_16_04.txt
cat $SOURCES_FILE > /etc/apt/sources.list

## step 2. isntall ssh and start sshd on start
apt-get update && apt-get install -y openssh-server && systemctl enable ssh && systemctl start ssh
