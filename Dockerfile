FROM php:8.2-apache

# Copy all files to /var/www/html/
COPY . /var/www/html/

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html/

EXPOSE 80