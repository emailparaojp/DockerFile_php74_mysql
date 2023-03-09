FROM php:7.4-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

WORKDIR /var/www/html

COPY . /var/www/html

RUN apt-get update && apt-get install -y default-mysql-client

ENV MYSQL_HOST=localhost \
    MYSQL_DATABASE=mydatabase \
    MYSQL_USER=myuser \
    MYSQL_PASSWORD=mypassword

EXPOSE 80

CMD ["apache2-foreground"]
