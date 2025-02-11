FROM php:7.4-fpm

# Set working directory
WORKDIR /var/www/

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    nano

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Copy project files to default php-fpm www location
COPY . /var/www

# Get latest Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Change permission var/www directory
RUN chown www-data:www-data /var/www && \
    chown -R www-data:www-data /var/www/storage* && \
	chmod -R 775 /var/www/storage/*
