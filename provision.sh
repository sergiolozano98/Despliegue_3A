sudo apt-get -y update

sudo apt-get install -y apache2

cp -r /var/www/html /vagrant/html

rm -r /var/www/html/

ln -fs  /vagrant/html /var/www/html

apt-get install git

git clone https://github.com/sergiolozano98/webopcional.git

cd /vagrant/html 

mkdir pagina1 pagina2

cd /vagrant/html/pagina1
git clone https://github.com/sergiolozano98/webopcional.git

cd /vagrant/html/pagina2
git clone https://github.com/sergiolozano98/webopcional.git

mkdir vagrant/conf 

sudo cp /etc/apache2/sites-available/000-default.conf vagrant/conf/pagina1.com.conf
sudo cp /etc/apache2/sites-available/000-default.conf vagrant/conf/pagina2.com.conf

rm -r /etc/apache2/sites-available

ln -fs /vagrant/conf  /etc/apache2/sites-available

sudo a2ensite ejemplo.com.conf
sudo a2ensite pruebas.com.conf

