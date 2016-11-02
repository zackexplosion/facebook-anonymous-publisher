FROM eboraas/laravel
ADD . /var/www/laravel
WORKDIR /var/www/laravel
ADD .env-docker .env
RUN composer install --no-interaction
RUN chown -R www-data /var/www/laravel