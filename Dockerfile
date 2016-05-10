FROM ubuntu:14.04

MAINTAINER Andre Lohmann <lohmann.andre@gmail.com>

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common
RUN DEBIAN_FRONTEND=noninteractive add-apt-repository ppa:chris-lea/redis-server

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
RUN echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

RUN apt-get update

#RUN echo "mysql-server mysql-server/root_password password root" | debconf-set-selections
#RUN echo "mysql-server mysql-server/root_password_again password root" | debconf-set-selections
#RUN echo "phpmyadmin phpmyadmin/dbconfig-install boolean true" | debconf-set-selections
#RUN echo "phpmyadmin phpmyadmin/app-password-confirm password root" | debconf-set-selections
#RUN echo "phpmyadmin phpmyadmin/mysql/admin-pass password root" | debconf-set-selections
#RUN echo "phpmyadmin phpmyadmin/mysql/app-pass password root" | debconf-set-selections
#RUN echo "phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2" | debconf-set-selections

#RUN apt-get install git curl build-essential libssl-dev htop php5 php5-cli php5-gd php5-mysql php5-curl php5-imagick php5-mcrypt php5-tidy php5-redis php5-geoip php5-redis php-pear php5-dev geoip-bin apache2 mysql-server phpmyadmin mongodb-org redis-server -y

#RUN echo "no" | pecl install mongo
#RUN echo 'extension=mongo.so' >> /etc/php5/cli/php.ini
#RUN echo 'extension=mongo.so' >> /etc/php5/apache2/php.ini

#RUN a2enmod rewrite
#RUN service apache2 restart

#RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"; php -r "if (hash_file('SHA384', 'composer-setup.php') === '92102166af5abdb03f49ce52a40591073a7b859a86e8ff13338cf7db58a19f7844fbc0bb79b2773bf30791e935dbd938') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"; php composer-setup.php --install-dir=/usr/local/bin --filename=composer; php -r "unlink('composer-setup.php');"

#RUN composer --version

#EXPOSE 80

#CMD ["/bin/bash"]
