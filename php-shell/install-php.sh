cp /var/www/php.ini /usr/local/php/etc
# cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini

# composer
cp /var/www/composer.phar /usr/local/bin/   
chmod -R 755 /usr/local/bin/composer.phar 

tar zxvf php-7.2.11.tar.gz

cd /usr/local/etc/php-7.2.11
./configure --prefix=/usr/local/php --with-config-file-path=/usr/local/php/etc --enable-fpm --with-fpm-user=ghostwu --with-config-file-scan-dir=/etc/php/cli/conf.d --with-zlib --with-openssl --enable-bcmath --enable-mbstring

make && make install

