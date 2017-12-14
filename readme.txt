1º En el fichero vagrant/html tenemos nuestras web, las configuramos a nuestrog gusto

2º configurar los fichero .conf de vagrant/conf que tenemos ya creado.

<VirtualHost *:80>
    ServerAdmin admin@ejemplo.com
    ServerName pagina1.com
    ServerAlias www.pagina1.com
    DocumentRoot /vagrant/html/pagina1
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>

3º Reiniciar apache con sudo service apache2 restart

y comporbar este mensaje:
* Restarting web server apache2
 AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 127.0.0.1. Set the 'ServerName' directive globally to suppress this message



4º En tu maquina host tenemos que configurar nuestro fichero hosts

192.168.33.10 pagina1.com
192.168.33.10 pagina2.com
