sair do modo gráfico: "Ctrl+Alt+F1"
voltar ao modo gráfico: "Alt+F7"

apt-get update
apt-get dist-upgrade -y

########### instalando php apache e mysql ################

/* instalando */

apt-get install -y php5 php5-cli php5-xdebug php5-mysql phpunit php-apc php5-imagick php5-mcrypt php5-memcache php5-suhosin php-pear curl imagemagick php5-dev php5-curl php5-sqlite phpmyadmin mysql-server libapache2-mod-php5 apache2 memcached vim git-core subversion


########################
  habilitar o htaccess
########################

sudo a2enmod rewrite
sudo service apache2 restart

sudo nano /etc/apache2/sites-available/000-default.conf
<Directory "/var/www/html">
    AllowOverride All
</Directory>
sudo service apache2 restart

########################
		phalcon
########################
sudo apt-get install software-properties-common python-software-properties
sudo apt-add-repository ppa:phalcon/stable
sudo apt-get update
sudo apt-get install php5-phalcon



###################
		mysql
####################

mysql -u root -p 


quit //sair


/* alterando document root apache */

gedit /etc/apache2/sites-available

/etc/init.d/apache2 restart //reinicia apache

/* compilando apache */

compila apr e apr-util

./configure 
make
make install

arquivo de configuração httpd.conf

/* compilando php */

./configure --prefix=/usr/local/php --with-apxs2=/usr/local/apache2/bin/apxs --with-libxml-dir=/usr/lib --with-zlib --with-gd --with-jpeg-dir=/usr/lib --with-png-dir=/usr/lib --with-gettext --with-mcrypt --with-mysql --with-mysqli --enable-soap --with-pear --with-config-file-path=/usr/local/php/lib --disable-cgi --disable-ipv6 --enable-zip --with-pdo-mysql --enable-mbstring --enable-bcmath --enable-dba --with-openssl --enable-calendar --with-bz2 --with-curl --with-pdflib --enable-ftp
make
make install

cp php.ini-development /usr/local/lib/php.ini // copia arquivo de configuração

LoadModule php5_module modules/libphp5.so // habilita o modulo php no apache httpd.conf
AddType application/x-httpd-php .php .phtml // adiciona o tipo de arquivo httpd.conf