#!/bin/bash
sudo -s
apt-get update
apt-get upgrade
apt-get instll wget

#Engine X Web Server Install
apt-get install nginx -y

#nginx service run
systemctl start nginx.service

#database install
apt-get install mariadb-server mariadb-client -y

#database service run
systemctl start mariadb.service

#php installation
apt install php-fpm php-common php-mbstring php-xmlrpc php-soap php-gd php-xml php-intl php-mysql php-cli php-mcrypt php-ldap php-zip php-curl

#wordpress file download
wget https://wordpress.org/latest.tar.gz

#extract this file 
tar -xzvf latest.tar.gz

#copying
cp -r wordpress/ /var/www/

#permission
chown -R www-data:www-data /var/www/wordpress
chmod -R 755 /var/www/wordpress
