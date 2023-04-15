#!/bin/sh

adduser $FTP_USER

echo $FTP_USER:$FTP_PASSWORD | chpasswd

chown -R $FTP_USER:$FTP_USER /var/www

echo $FTP_USER > /etc/vsftpd/vsftpd.user_list

vsftpd /etc/vsftpd/vsftpd.conf
