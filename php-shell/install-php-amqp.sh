

php_conf=$1
# php-config 命令文件位置
php_config_file=$2


# PHP conf.d 目录
#php_conf="/etc/php/7.4/cli/conf.d/"
php_conf="/etc/php/cli/conf.d"
# php-config 命令文件位置
php_config_file="/usr/local/php/bin/php-config"
# php_config_file="/usr/bin/php-config"
php_package_dir="/usr/local/etc/"
script_abs=$(readlink -f "$0")
script_dir=$(dirname $script_abs)
bee_oss_dir="/data/bee_oss"



cp /var/www/amqp.ini $php_conf

tar zxvf amqp-1.9.4.tgz

cd amqp-1.9.4
phpize
# ./configure --with-php-config=/usr/local/bin/php-config
#./configure --with-php-config=/usr/local/php/bin/php-config
./configure --with-php-config=${php_config_file}
make && make install
make install
# ldconfig
