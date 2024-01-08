FROM php:8.0-fpm

# ... (Other necessary configurations for PHP extension, Composer, etc.)

# Copy your Laravel application into the container
COPY . /var/www/html

# Set the working directory
WORKDIR /var/www/html

# Install dependencies and execute necessary commands
RUN composer install --optimize-autoloader --no-dev

# Start PHP-FPM
CMD ["php-fpm"]
