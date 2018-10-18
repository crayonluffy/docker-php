#!/bin/sh
set -e

# Enable XDebug
if [ "${PHP_ENABLE_XDEBUG:-0}" = "1" ]; then
    sed -i "s|;zend_extension=xdebug.so|zend_extension=xdebug.so|i" /etc/php/conf.d/xdebug.ini
fi

# first arg is `-f` or `--some-option`
if [ "${1#-}" != "$1" ]; then
	set -- php "$@"
fi

exec "$@"
