FROM php:7-fpm

RUN apt-get update && apt-get install -y \
            #libfreetype6-dev \
            #libjpeg62-turbo-dev \
            #libmcrypt-dev \
            #libpng12-dev \
            mc \
    #&& docker-php-ext-install pdo pdo_mysql mcrypt mbstring gd zip \
    && apt-get install -qqy curl git \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer \
    && mkdir -p /home/composer/ && chmod 777 /home/composer/ && chown 1000:1000 /home/composer/ \
    && apt-get autoremove -y && apt-get autoclean -y