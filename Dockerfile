FROM php:5.6-apache



RUN apt-get update && apt-get install -y mysql-client 

COPY ./BLOG  /var/www/html/BLOG


RUN a2enmod 
RUN service apache2 restart
WORKDIR /etc/apache2/sites-available/
RUN a2ensite 
EXPOSE 80