FROM php:7.0-apache
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
COPY src/ /var/www/html
EXPOSE 8085