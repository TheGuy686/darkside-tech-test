FROM php:8.1-fpm

# Arguments defined in docker-compose.yml
ARG user
ARG uid

RUN echo "alias ls='ls --color=auto'" >> /root/.bashrc

COPY . .

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Create system user to run Composer and Artisan Commands
RUN useradd -G www-data,root -u $uid -d /home/$user $user
RUN mkdir -p /home/$user/.composer && chown -R $user:$user /home/$user
RUN composer config -g repo.packagist composer https://packagist.org
RUN composer config -g repo.packagist composer https://packagist.phpcomposer.com

# Install the project PHP dependencies
RUN composer install
RUN chmod -R 755 vendor

# Set working directory
WORKDIR /var/www/html

USER $user

# Expose the desired ports
# Backend
EXPOSE 9000

# Start PHP-FPM
CMD ["php-fpm"]

