FROM mitakeck/php:v7.0

RUN apt-get update && apt-get install -y \
  git \
  vim \
  && rm -rf /var/lib/apt/lists/*
