!/bash/bin

sudo apt-get update
sudo apt-get upgrade

# installing apache2

sudo apt-get install apache2 -y
sudo systemctl start apache2.service
sudo systemctl enable apache2.service


# installing mysql

sudo apt-get install mysql-server
sudo systemctl start mysql.service
sudo systemctl enable mysql.service


#installing php

sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql
sudo systemctl restart apache2.service

#drupal database creation
sudo mysql -u root -p
CREATE DATABASE drupaldb;
GRANT ALL ON drupaldb.* TO 'drupal_user'@'localhost' IDENTIFIED BY 'drupal_passwd' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EXIT;


#installing drupal
sudo cd /tmp
sudo wget https://ftp.drupal.org/files/projects/drupal-8.9.1.tar.gz
sudo tar -zxvf drupal*.gz
sudo mv drupal-8.9.1 /var/www/html/drupal
sudo chmod -R 755 /var/www/html/drupal/



