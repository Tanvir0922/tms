# Use PHP Apache base image
FROM php:8.1-apache

# Install required PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Copy project files into container
COPY . /var/www/html/

# Change permissions
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
