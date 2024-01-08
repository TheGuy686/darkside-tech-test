FROM php:8.0-fpm

# Set the working directory
WORKDIR /var/www/html

# Copy your Laravel application into the container
COPY . .

# Install all the Laravel application dependencies before the composser install
RUN apt-get update && apt-get install -y \
    git \
    zip \
    unzip

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install dependencies and execute necessary commands
RUN composer install --optimize-autoloader --no-dev

# Expose the ports for the Backend and Frontend
# Backend
EXPOSE 9000
# Frontend
EXPOSE 8000

# Start PHP-FPM
CMD ["php-fpm"]
