FROM php:7.1.8-apache
RUN docker-php-ext-install mysqli

# Install Composer
RUN apt-get -y update && \
    apt-get -y install curl nano git vim zip unzip php-pclzip  && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer