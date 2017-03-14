#! /bin/bash

set -e

composer install

# mysql -u root -ptoor drupal < backup.sql

echo "Done!"
