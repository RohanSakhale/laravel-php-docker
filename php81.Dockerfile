FROM laravelphp/vapor:php81

RUN apk add --no-cache bun

RUN apk add --no-cache --virtual .build-deps $PHPIZE_DEPS imagemagick-dev \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && apk del .build-deps
