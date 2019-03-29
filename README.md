setup
git 
git submodule add https://github.com/collectiveaccess/providence.git htdocs
cp 


install vagrant, ant

vagrant ssh
mysql
use db_devgcmw;
source /var/www/startup/db/db_devgcmw_v2.sql;

Replace utf8mb4_unicode_520_ci with utf8mb4_unicode_ci

sudo tail -f /var/log/apache2/error.log

HOSTS
192.168.33.11	localhost.archives.chinmayamission.com

CREATE USER 'devuser'@'localhost';
GRANT ALL PRIVILEGES ON db_devgcmw.* To 'devuser'@'localhost' IDENTIFIED BY 'password';


update wp_users set user_pass=md5('password') where user_login='admin';


Reg scripts: https://developers.elementor.com/add-custom-functionality

## System Requirement 
	-8gb ram minimum , becuase we used virtualization on box
	-Latest system configuration which can have virtualization technology
	-32bit/64bit

## VAGRANT && VIRTUAL BOX INSTALLATION
	## Download Vagrant (https://www.vagrantup.com/downloads.html) and Install
	## Download vstural box (https://www.virtualbox.org/wiki/Downloads)

--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
## DEVELOPMENT SETUP LINUX-UBUNTU MACHINE

	##########
	#	ant  #
	##########
	For the current version of Ant, you will also need a JDK installed on your system, version 1.4 or later required, 1.7 or later strongly recommended. The more up-to-date the version of Java , the more Ant tasks you get.

	Note: If a JDK is not present, only the JRE runtime, then many tasks will not work.

	Note: Ant 1.8.* works with jdk1.4 and higher, Ant 1.7.* works with jdk1.3 and higher, Ant 1.6.* works with jdk 1.2 and higher, Ant 1.2 to Ant 1.5.* work with jdk 1.1 and higher.

	##Install jdk must to run Ant
	refer - https://www.digitalocean.com/community/tutorials/how-to-install-java-on-ubuntu-with-apt-get

	##Setting up Ant

	# wget http://archive.apache.org/dist/ant/binaries/apache-ant-1.8.0-bin.tar.bz2
	# tar xvjf apache-ant-1.8.0-bin.tar.bz2
	# vim .profile
		##add the below given line at bottom of the file, save and quit.

			export ANT_HOME=/home/ubuntu/ant
			export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64
			export PATH=${PATH}:${ANT_HOME}/bin

	## Your Ant is ready, test ant working properly simple typing "ant" in your terminal and 
	## result will be this 
			# Buildfile: build.xml does not exist!
			# Build failed


	Reference: - https://ant.apache.org/manual/
	--------------------------------------------------------------------------------------------

	###############
	#	composer  #
	###############

	## Prefer to install globally in your machine. Follow the steps
		##Run this in your terminal to get the latest Composer version:

		# php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
		# php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
		# php composer-setup.php
		# php -r "unlink('composer-setup.php');"

		## Install Globally
		# mv composer.phar /usr/local/bin/composer


	Note: If the above fails due to permissions, you may need to run it again with sudo.
	Note: On some versions of OSX the /usr directory does not exist by default. If you receive the error "/usr/local/bin/composer: No such file or directory" then you must create the directory manually before proceeding: mkdir -p /usr/local/bin.
	Note: For information on changing your PATH, please read the Wikipedia article and/or use Google.
		
		## Now just run "composer" in terminal.

	Refer: 	- https://getcomposer.org/doc/00-intro.md
			- https://getcomposer.org/download/

--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------

## DEVELOPMENT SETUP WINDOWS MACHINE

	1) Make sure JDK is installed, and JAVA_HOME is configured as Windows environment variable.
		http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

	2) Add "JAVA_HOME" || "ANT_HOME" in Environment Variable
		
		Reference -- https://www.mkyong.com/ant/how-to-install-apache-ant-on-windows/
		Download ANT -- http://archive.apache.org/dist/ant/binaries/apache-ant-1.8.0-bin.tar.bz2

	3) RUN Project visit to project directory and run in terminal
		#  ant

## Basic commands require to upgrade PHP 5.6 to 7.1

1) yes | sudo add-apt-repository ppa:ondrej/php 
2) sudo apt-get update
3) yes | sudo apt-get install php7.1
4) yes | sudo apt install php7.1-mysql php7.1-curl php7.1-json php7.1-cgi  php7.0 libapache2-mod-php7.1 php7.1-xml
5) sudo apt-get install mysql-server php7.1-mysql
6) sudo a2dismod php5
7) sudo a2enmod php7.1 
8) sudo pip install awscli
9) sudo service apache2 reload	

These Commands need to be added to install_dependencies.sh file for deplyment process and in bootstrap.sh file local box.
