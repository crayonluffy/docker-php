FROM php:7.3-cli-alpine

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
        swoole \
 && docker-php-ext-enable imagick redis swoole \
 && rm -rf /tmp/pear ~/.pearrc

# Install runtime libraries and cleanup
RUN runDeps="$( \
		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local \
			| tr ',' '\n' \
			| sort -u \
			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' \
	)" \
 && apk add --update --no-cache --virtual .run-deps $runDeps \
 && apk del .build-deps

# Modify docker entrypoint
COPY docker-php-entrypoint docker-php-ext-disable /usr/local/bin/

ENTRYPOINT [ "docker-php-entrypoint" ]
