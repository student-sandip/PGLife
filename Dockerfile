# Use an official base image
FROM ubuntu:latest

# Add additional instructions below
# Use official PHP + Apache image
FROM php:8.2-apache

# Copy all project files to Apache root
COPY . /var/www/html/

# Enable Apache mod_rewrite if needed
RUN a2enmod rewrite

# Set permissions (optional, if needed)
RUN chown -R www-data:www-data /var/www/html

# Expose port 80
EXPOSE 80