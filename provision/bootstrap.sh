#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get -y upgrade
apt-get -y install php5-curl
apt-get -y autoremove

cp -r /vagrant/provision/etc/* /etc/

if [ ! -L /vagrant/web ]; then
  git clone --recursive git@github.com:idno/idno.git /vagrant/web
fi

if [ -L /vagrant/web/config.ini ]; then
  cp /vagrant/provision/config.ini /vagrant/web/config.ini
fi

if [ -L /home/vagrant/.my.cnf ]; then
  cp /vagrant/provision/.my.cnf /home/vagrant/.my.cnf
fi

export FILES=/var/local/known
if [ ! -d $FILES ]; then
	mkdir -p $FILES
	chown -R www-data:staff $FILES
	chmod -R g+w $FILES
fi

if [ ! -L /vagrant/web/data ]; then
	ln -s $FILES /vagrant/web/data
fi

chmod -R u+w /vagrant/web/data

if [ ! -d /var/lib/mysql/known ]; then
	mysqladmin -u root create known
fi

if [ -L /etc/apache2/sites-enabled/000-default ]; then
	a2dissite 000-default
fi

if [ ! -L /etc/apache2/sites-enabled/known ]; then
	a2ensite known
fi

service apache2 restart

cd /vagrant && mysql 
