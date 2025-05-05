#!/bin/bash

# Update packages
apt-get update

# Install Apache and PHP
apt-get install -y apache2 php libapache2-mod-php

# Enable Apache rewrite module (optional, but useful)
a2enmod rewrite

# Set Render's public directory as Apache document root
echo '<VirtualHost *:10000>
    DocumentRoot /opt/render/project/src/public
    <Directory /opt/render/project/src/public>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>' > /etc/apache2/sites-available/000-default.conf