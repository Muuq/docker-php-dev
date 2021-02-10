FROM mitakeck/php:v7.4

RUN pecl install xdebug-2.9.8 && docker-php-ext-enable xdebug && echo '  xdebug.mode=coverage' >> /usr/local/etc/php/php.ini

RUN apt-get update && apt-get install -y \
  git \
  vim \
  && rm -rf /var/lib/apt/lists/*
