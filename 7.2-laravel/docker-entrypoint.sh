#!/bin/sh
set -e

# Enable XDebug
if [ "${PHP_ENABLE_XDEBUG:-0}" = "1" ]; then
    sed -i "s|;zend_extension=xdebug.so|zend_extension=xdebug.so|i" /etc/php/conf.d/xdebug.ini
fi

# Enable Laravel schedule
if [ "${APP_ENABLE_CRONTAB:-0}" = "1" ]; then
    echo -e "* * * * * /usr/bin/php /var/www/html/artisan schedule:run" | crontab -u www-data -
fi

# Enable Laravel queue workers
if [ "${APP_ENABLE_WORKERS:-0}" = "1" ]; then
    mv /etc/supervisor.d/workers.ini.default  /etc/supervisor.d/workers.ini
fi

# Enable Laravel horizon
if [ "${APP_ENABLE_HORIZON:-0}" = "1" ]; then
    mv /etc/supervisor.d/horizon.ini.default  /etc/supervisor.d/workers.ini
fi

# artisan <sub-command>
if [ "$1" = "artisan" ]; then
    set -- php artisan "$@"
fi

exec "$@"
