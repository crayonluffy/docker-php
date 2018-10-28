FROM oanhnn/php:7.2-alpine

#COPY --from=ochinchina/supervisord:latest /usr/local/bin/supervisord /usr/local/bin/supervisord
#CMD ["/usr/local/bin/supervisord"]

### Install suppervisor
RUN apk add --update --no-cache \
    supervisor

### Setting supervisord
RUN mkdir -p /etc/supervisor.d /var/log/supervisord \
 && sed -i "s|;*nodaemon=.*|nodaemon=true|i" /etc/supervisord.conf \
 && sed -i "s|;*pidfile=.*|pidfile=/run/supervisord.pid|i" /etc/supervisord.conf \
 && sed -i "s|;*childlogdir=.*|childlogdir=/var/log/supervisord|i" /etc/supervisord.conf

#### Copy supervisor program's config files
COPY ../supervisor.d /etc/supervisor.d

#### Entrypoint
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint
ENTRYPOINT ["docker-entrypoint"]

CMD ["supervisord", "-n", "-c /etc/supervisord.conf"]
