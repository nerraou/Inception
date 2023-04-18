FROM alpine:3.15

RUN apk add \
    curl \
    php7 \
    php7-fpm \
    php7-phar \
    php7-common \
    php7-session \
    php7-iconv \
    php7-json \
    php7-gd \
    php7-curl \
    php7-xml \
    php7-mysqli \
    php7-imap \
    php7-cgi \
    fcgi \
    php7-pdo \
    php7-pdo_mysql \
    php7-soap \
    php7-xmlrpc \
    php7-posix \
    php7-mcrypt \
    php7-gettext \
    php7-ldap \
    php7-ctype \
    php7-dom \
    php7-simplexml \
	php7-tokenizer

COPY ./tools/entrypoint.sh /tmp/

WORKDIR /var/www/adminer

COPY ./conf/php-fpm.conf /etc/php7/php-fpm.d/www.conf

ENTRYPOINT ["sh","/tmp/entrypoint.sh"]
