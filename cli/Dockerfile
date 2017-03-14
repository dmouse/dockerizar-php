
FROM php:7.0-cli

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

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

RUN useradd app
USER app

WORKDIR /app
