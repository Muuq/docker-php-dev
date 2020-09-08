FROM mitakeck/php:v7.4

RUN pecl install xdebug && docker-php-ext-enable xdebug

RUN apt-get update && apt-get install -y \
  git \
  vim \
  && rm -rf /var/lib/apt/lists/*
