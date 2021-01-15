

php_conf=$1
# php-config 命令文件位置
php_config_file=$2

cp /var/www/mongo.ini $php_conf

tar zxvf mongodb-1.3.4.tgz 

cd mongodb-1.3.4
phpize
# ./configure --with-php-config=/usr/local/bin/php-config --with-openssl=/usr/bin/openssl
#./configure --with-php-config=/usr/local/php/bin/php-config --with-openssl=/usr/bin/openssl
./configure --with-php-config=$php_config_file --with-openssl=/usr/bin/openssl
make && make install
make install
# ldconfig
