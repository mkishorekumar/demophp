FROM php:7.1-apache
copy src/ /var/www/html
EXPOSE 80