#!/bin/sh

# Install Apache to check from web browser using 0.0.0.0 or localhost, check version, start,stop & restart Apache into Ubuntu
sudo apt update
sudo apt install apache2

apache2 -v
sudo service apache2 start
sudo service apache2 stop
sudo nano nano /etc/apache2/apache2.conf
Add this line ServerName 127.0.1.1 into apache2.conf file
sudo service apache2 restart 
# Visit:  http://localhost/


# Install MySQL & check version, start,stop & restart Apache
sudo apt install mysql-server
sudo mysql_secure_installation
mysql --version

sudo service mysql start
sudo service mysql enable
sudo service mysql stop
sudo service mysql start
sudo service mysql restart
sudo service mysql status
sudo systemctl restart mysql
sudo systemctl enable mysql

sudo mysql
CREATE DATABASE mydb;
CREATE USER 'alam'@'localhost' IDENTIFIED WITH mysql_native_password BY '01815@usa';
ALTER USER 'alam'@'localhost' IDENTIFIED WITH mysql_native_password BY '01815@usa';
GRANT CREATE, ALTER, DROP, INSERT, UPDATE, DELETE, SELECT on *.* TO 'alam'@'localhost' WITH GRANT OPTION;
use mybd;
FLUSH PRIVILEGES;
exit
sudo service mysql restart


# Install PHP & check version 
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt install php7.2-fpm php7.2-common php7.2-mbstring php7.2-xmlrpc php7.2-soap php7.2-gd php7.2-xml php7.2-intl php7.2-mysql php7.2-cli php7.2-zip php7.2-curl
php --version
whereis php


# Install PHPmyAdmin
sudo apt update 
sudo apt upgrade -y
sudo apt install phpmyadmin 
sudo apt install -y php-mbstring


sudo nano /etc/apache2/apache2.conf
# Then add the following line to the end of the file:
Include /etc/phpmyadmin/apache.conf
# save ctrl+x then y and hit enter. Then restart apache:

sudo service apache2 restart 
# visit: http://localhost/phpmyadmin/
Use user= admini
pass= 01815@alam

#WordPress

cd /var/www/
git clone https://github.com/WordPress/WordPress.git
mv WordPress html
cd html

sudo nano wp-config.php
# add BD NAME= mydb user name: alam password: 01815@USA

service apache2 restart
service mysql restart
