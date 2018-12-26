FROM php:7.3-fpm-alpine

# Install some packages
RUN apk add --update --no-cache curl

# Install build dependency packages
RUN apk add --update --no-cache --virtual .build-deps \
        freetype-dev \
        gmp-dev \
        icu-dev \
        imagemagick-dev \
        libintl \
        libjpeg-turbo-dev \
        libpng-dev \
        libxml2-dev \
        libzip-dev \
        postgresql-dev \
        zlib-dev \
        $PHPIZE_DEPS

# Install some php extensions
RUN docker-php-ext-configure gd \
        --with-freetype-dir=/usr/include/ \
        --with-png-dir=/usr/include/ \
        --with-jpeg-dir=/usr/include/ \
 && docker-php-ext-install -j"$(getconf _NPROCESSORS_ONLN)" \
        bcmath \
        gd \
        gmp \
        intl \
        opcache \
        pdo_mysql \
        pdo_pgsql \
        pcntl \
        sockets \
        zip

# Install some extentions via PECL channels
RUN pecl update-channels \
 && pecl install \
        imagick \
        redis \
 && docker-php-ext-enable imagick redis \
 && rm -rf /tmp/pear ~/.pearrc

RUN runDeps="$( \
		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local \
			| tr ',' '\n' \
			| sort -u \
			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' \
	)" \
 && apk add --update --no-cache --virtual .run-deps $runDeps \
 && apk del .build-deps

# Environment variable for PHP settings
ENV PHP_MEMORY_LIMIT="500M" \
    PHP_POST_MAX_SIZE="20M" \
    PHP_UPLOAD_MAX_SIZE="10M" \
    PHP_MAX_FILE_UPLOADS="20" \
    PHP_TIMEZONE="UTC"

# Settings PHP
RUN echo "display_errors=stderr"                      >  $PHP_INI_DIR/php.ini \
 && echo "expose_php=0"                               >> $PHP_INI_DIR/php.ini \
 && echo "memory_limit=${PHP_MEMORY_LIMIT}"           >> $PHP_INI_DIR/php.ini \
 && echo "max_execution_time=900"                     >> $PHP_INI_DIR/php.ini \
 && echo "max_file_uploads=${PHP_MAX_FILE_UPLOADS}"   >> $PHP_INI_DIR/php.ini \
 && echo "post_max_size=${PHP_POST_MAX_SIZE}"         >> $PHP_INI_DIR/php.ini \
 && echo "upload_max_filesize=${PHP_UPLOAD_MAX_SIZE}" >> $PHP_INI_DIR/php.ini \
 && echo "date.timezone=${PHP_TIMEZONE:-UTC}"         >> $PHP_INI_DIR/php.ini \
 && echo "cgi.fix_pathinfo=0"                         >> $PHP_INI_DIR/php.ini
