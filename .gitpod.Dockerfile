FROM php:8.0-cli-alpine

RUN apk add --no-cache npm git

RUN apk add --no-cache icu-dev \
    && docker-php-ext-install intl

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

ENV APPLICATION_ENV="development"
