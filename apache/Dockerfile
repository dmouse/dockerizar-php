
FROM php:7.0-apache

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
        libbz2-dev \
        libicu-dev \
        curl \
	      dialog \
        git \
        vim \
        tree \
        libpq-dev

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install gd opcache mbstring pdo pdo_mysql pdo_pgsql pgsql zip bz2 iconv mcrypt \
    && pecl install xdebug-2.5.0 \
    && docker-php-ext-enable xdebug

RUN cd /usr/local/bin \
    && curl -L https://github.com/kelseyhightower/confd/releases/download/v0.11.0/confd-0.11.0-linux-amd64 -o confd \
    && chmod +x confd

ADD etc/confd /etc/confd
ADD init.sh /usr/local/bin

CMD ["init.sh"]
