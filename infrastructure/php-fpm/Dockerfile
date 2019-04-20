FROM php:7.3.3-fpm-alpine3.9

LABEL maintainer="Kim Wuestkamp <kim@wuestkamp.com>"

RUN apk add --update \
    php7-fpm \
    php7-apcu \
    php7-ctype \
    php7-curl \
    php7-dom \
    php7-gd \
    php7-iconv \
    php7-imagick \
    php7-json \
    php7-intl \
    php7-mcrypt \
    php7-fileinfo\
    php7-mbstring \
    php7-opcache \
    php7-openssl \
    php7-pdo \
    php7-pdo_mysql \
    php7-mysqli \
    php7-xml \
    php7-zlib \
    php7-phar \
    php7-tokenizer \
    php7-session \
    php7-simplexml \
    php7-xdebug \
    libzip-dev \
    php7-zip \
    postgresql-dev \
    postgresql-client \
    make \
    curl \
    shadow

RUN docker-php-ext-install pdo pdo_pgsql zip

RUN usermod -u 1000 www-data
RUN groupmod -g 1000 www-data

RUN rm -rf /var/cache/apk/* && rm -rf /tmp/* && \
    curl --insecure https://getcomposer.org/composer.phar -o /usr/bin/composer && chmod +x /usr/bin/composer

ARG build_path

ADD $build_path/symfony.ini /etc/php7/conf.d/
ADD $build_path/symfony.ini /etc/php7/cli/conf.d/
ADD $build_path/xdebug.ini  /etc/php7/conf.d/

RUN rm /etc/php7/php-fpm.d/www.conf
ADD $build_path/symfony.pool.conf /etc/php7/php-fpm.d/

CMD ["php-fpm7", "-F"]

WORKDIR /var/www/symfony

# Install composer packages (by starting with coping only composer file, to make use of docker layering feature)
COPY symfony/composer.json symfony/composer.lock ./
RUN composer install

COPY symfony .

RUN rm -rf var/cache
RUN rm -rf var/log
RUN mkdir -p var/log var/cache
RUN chown -R www-data:www-data var
RUN chmod -R 777 var