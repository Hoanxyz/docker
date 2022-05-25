FROM php:7.4-fpm-buster

RUN apt-get update \
    && cd ~ \
    && curl -sS https://getcomposer.org/installer -o composer-setup.php \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=1.10.16 \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug
    
