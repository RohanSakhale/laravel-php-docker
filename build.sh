#!/bin/bash

PHP_VERSION=$1
PUBLISH=$2

# Build the Docker image with the PHP version as the tag
docker build -f ${PWD}/php${PHP_VERSION}.Dockerfile -t saiashirwadinformatia/laravel-php:${PHP_VERSION} .

# Tag the image with the "latest" tag as well
docker tag saiashirwadinformatia/laravel-php:${PHP_VERSION} saiashirwadinformatia/laravel-php:latest

# Push the image if the PUBLISH argument is provided
if [ -n "$PUBLISH" ]; then
  docker push saiashirwadinformatia/laravel-php:${PHP_VERSION}
  docker push saiashirwadinformatia/laravel-php:latest
fi
