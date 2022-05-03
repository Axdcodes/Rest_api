FROM php:5.6.apache



RUN apt-get update && apt-get upgrade

COPY ./BLOG  /var/www/html/BLOG


RUN a2enmod ncrypt
RUN service apache2 restart
WORKDIR /etc/apache2/sites-available/
RUN a2ensite 
EXPOSE 80