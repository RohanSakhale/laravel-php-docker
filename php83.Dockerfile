FROM laravelphp/vapor:php83

RUN apk add --no-cache --virtual .build-deps $PHPIZE_DEPS imagemagick imagemagick-dev \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && apk del .build-deps

RUN apk add --no-cache fontconfig
