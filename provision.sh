sudo apt-get -y update

sudo apt-get install -y apache2

cp -r /var/www/html /vagrant/html

rm -r /var/www/html/

ln -fs  /vagrant/html /var/www/html

apt-get install git

git clone https://github.com/sergiolozano98/webopcional.git
