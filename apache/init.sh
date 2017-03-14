#! /bin/bash

/usr/local/bin/confd -onetime -backend env

cat /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
cat /etc/apache2/sites-available/000-default.conf

apache2-foreground
