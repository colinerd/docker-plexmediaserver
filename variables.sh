# file variables.sh
#!/bin/sh
#sudo echo "$REMOTE_LOCATION /remotemnt cifs username=$SHARE_USERNAME,password=$SHARE_PASSWORD 0 0" >> /etc/fstab

#mount remote share
sudo mount -t cifs $REMOTE_LOCATION /remotemnt -o username=$SHARE_USERNAME,password=$SHARE_PASSWORD,iocharset=utf8

#default CMD command
/sbin/my_init

