FROM dylanlindgren/docker-phpcli:latest

WORKDIR /tmp

RUN apt-get update -y && \
    apt-get install -y \
    php5-mcrypt \
    php5-mongo \
    php5-mssql \
    php5-mysqlnd \
    php5-pgsql \
    php5-redis \
    php5-sqlite \
    php5-gd

RUN mkdir -p /data
VOLUME ["/data"]
WORKDIR /data

ENTRYPOINT ["php", "artisan"]
CMD ["--help"]
