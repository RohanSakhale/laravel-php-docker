FROM laravelphp/vapor:php83-arm

RUN apk add --no-cache --virtual .build-deps $PHPIZE_DEPS imagemagick imagemagick-dev \
    && pecl install imagick-3.7.0 \
    && docker-php-ext-enable imagick \
    && apk del .build-deps

RUN apk add --no-cache fontconfig
