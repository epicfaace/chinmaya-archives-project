#!/usr/bin/env bash
## Configure Apache
## Only thing you probably really care about is right here
DOMAIN=localhost.archives.chinmayamission.com

            echo "Upgrading to php7..."
            yes | sudo add-apt-repository ppa:ondrej/php 
            echo "Running apt-get update..."
            sudo apt-get update
            yes | sudo apt-get install php7.1
            yes | sudo apt install php7.0-mysql php7.0-curl php7.0-json php7.0-cgi  php7.0 libapache2-mod-php7.0
            sudo apt-get install mysql-server php7.1-mysql
            sudo a2dismod php5
            sudo a2enmod php7.0 
            sudo apt-get install php7.0-xml
            sudo apt-get install php7.0-zip

            # echo "Creating vhost config for $DOMAIN..."
            sudo cp /etc/apache2/sites-available/scotchbox.local.conf /etc/apache2/sites-available/$DOMAIN.conf

            # echo "Updating vhost config for $DOMAIN..."
            sudo sed -i s,'www.scotchbox.local','*.'$DOMAIN,g /etc/apache2/sites-available/$DOMAIN.conf
            sudo sed -i s,'scotchbox.local',$DOMAIN,g /etc/apache2/sites-available/$DOMAIN.conf
            sudo sed -i s,/var/www/public,/var/www/htdocs,g /etc/apache2/sites-available/$DOMAIN.conf

            # echo "Enabling $DOMAIN. Will probably tell you to restart Apache..."
            sudo a2ensite $DOMAIN.conf
            sudo a2dissite 000-default scotchbox-local

            echo "So let's restart apache..."
            sudo service apache2 restart
     		
## End Configure Apache

cd /var/www

## Copy setup information
cp setup.php htdocs/setup.php

## Create Database and Import SQL File
#echo Create Database and Import SQL FIle

sudo mysql -uroot -proot -e "CREATE DATABASE db_dev_chinmaya_archives_project";
# sudo mysql -uroot -proot db_devgcmw < db/db_devgcmw.sql


## Run composer
echo "Run Composer"
sudo composer self-update
composer install
