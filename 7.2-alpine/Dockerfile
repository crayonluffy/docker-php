FROM alpine:3.8

### Global environment variables
ENV LANG="en_US.UTF-8" \
    LC_ALL="en_US.UTF-8" \
    LANGUAGE="en_US.UTF-8" \
    TIMEZONE="UTC"

### Ensure www-data (ID: 82) user and make webroot directory
RUN set -x \
 && addgroup -g 82 -S www-data \
 && adduser -u 82 -D -S -G www-data www-data \
 && mkdir -p /var/www/html/public \
 && chown -R www-data:www-data /var/www/html/

### Install php
RUN apk add --update --no-cache \
    ca-certificates \
    curl \
    php7-bcmath \
    php7-dom \
    php7-cli \
    php7-ctype \
    php7-curl \
    php7-fileinfo \
    php7-fpm \
    php7-ftp \
    php7-gd \
    php7-gmp \
    php7-iconv \
    php7-imagick \
    php7-intl \
    php7-json \
    php7-mbstring \
    php7-mcrypt \
    php7-mysqlnd \
    php7-opcache \
    php7-openssl \
    php7-pcntl \
    php7-pdo \
    php7-pdo_mysql \
    php7-pdo_pgsql \
    php7-pdo_sqlite \
    php7-phar \
    php7-posix \
    php7-redis \
    php7-session \
    php7-simplexml \
    php7-sodium \
    php7-sqlite3 \
    php7-tokenizer \
    php7-xdebug \
    php7-xml \
    php7-xmlreader \
    php7-xmlwriter \
    php7-zip \
    php7-zlib

### Make php bin alias
RUN ln -nfs /usr/bin/php7 /usr/bin/php \
 && ln -nfs /usr/sbin/php-fpm7 /usr/sbin/php-fpm \
 && ln -nfs /etc/php7 /etc/php

### Setting up for PHP
ENV PHP_MEMORY_LIMIT="512M" \
    PHP_UPLOAD_MAX_FILESIZE="10M" \
    PHP_MAX_FILE_UPLOAD="20" \
    PHP_POST_MAX_SIZE="20M"
RUN sed -i "s|;*date.timezone =.*|date.timezone=${TIMEZONE}|i" /etc/php/php.ini \
 && sed -i "s|;*display_errors=.*|display_errors=stderr|i" /etc/php/php.ini \
 && sed -i "s|;*memory_limit =.*|memory_limit=${PHP_MEMORY_LIMIT}|i" /etc/php/php.ini \
 && sed -i "s|;*upload_max_filesize =.*|upload_max_filesize=${PHP_UPLOAD_MAX_FILESIZE}|i" /etc/php/php.ini \
 && sed -i "s|;*max_file_uploads =.*|max_file_uploads=${PHP_MAX_FILE_UPLOAD}|i" /etc/php/php.ini \
 && sed -i "s|;*post_max_size =.*|post_max_size=${PHP_POST_MAX_SIZE}|i" /etc/php/php.ini

COPY php-fpm.conf /etc/php/php-fpm.conf

COPY docker-php-entrypoint.sh /usr/local/bin/docker-entrypoint
ENTRYPOINT ["docker-entrypoint"]

VOLUME /var/www/html
WORKDIR /var/www/html
EXPOSE 9000

CMD ["php-fpm", "-F"]
