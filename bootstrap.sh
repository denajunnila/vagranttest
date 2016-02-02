
sudo apt-get update
sudo apt-get install -y apache2 apache2-doc apache2-utils

sudo apt-get update
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password 1234"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password 1234"
sudo apt-get install -y mysql-server 

sudo apt-get update
sudo apt-get install -y php5-cli
sudo apt-get update
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php7.0
sudo apt-get update
sudo apt-get upgrade -y 





if ! [ -L /var/www ]; then
	rm -rf /var/www
	ln -fs /vagrant /var/www
fi