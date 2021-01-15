

php_conf=$1
# php-config 命令文件位置
php_config_file=$2
php_package_dir=$3

mkdir -p /etc/php/cli/conf.d
mkdir -p /usr/local/php/etc

cp /var/www/*.tgz $php_package_dir
cp /var/www/*.tar.gz $php_package_dir

mkdir /data
cp -R /var/www/bee_oss /data


apt update
apt-get update

ping 127.0.0.1 -c 5 > /dev/null 2>&1

apt-get install -y openssl
ping 127.0.0.1 -c 2 > /dev/null 2>&1
apt-get install -y libssl-dev
ping 127.0.0.1 -c 2 > /dev/null 2>&1
apt-get install -y make
ping 127.0.0.1 -c 2 > /dev/null 2>&1
apt-get install -y curl
ping 127.0.0.1 -c 2 > /dev/null 2>&1
apt-get install -y libcurl4-gnutls-dev
ping 127.0.0.1 -c 2 > /dev/null 2>&1
apt-get install -y libjpeg-dev
ping 127.0.0.1 -c 2 > /dev/null 2>&1
apt-get install -y libpng-dev
ping 127.0.0.1 -c 2 > /dev/null 2>&1
apt-get install -y libmcrypt-dev
ping 127.0.0.1 -c 2 > /dev/null 2>&1
apt-get install -y libxml2
ping 127.0.0.1 -c 2 > /dev/null 2>&1
apt-get install -y libxml2-dev
ping 127.0.0.1 -c 2 > /dev/null 2>&1
apt-get install -y gcc
ping 127.0.0.1 -c 2 > /dev/null 2>&1
apt-get install -y librabbitmq-dev
ping 127.0.0.1 -c 2 > /dev/null 2>&1

# mongo
apt-get install -y git
ping 127.0.0.1 -c 2 > /dev/null 2>&1
apt-get install -y zip unzip
ping 127.0.0.1 -c 2 > /dev/null 2>&1
apt-get install -y autoconf
ping 127.0.0.1 -c 2 > /dev/null 2>&1

apt-get install -y software-properties-common
ping 127.0.0.1 -c 2 > /dev/null 2>&1
apt-get install -y software-properties-common
ping 127.0.0.1 -c 2 > /dev/null 2>&1
LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php
ping 127.0.0.1 -c 2 > /dev/null 2>&1

cd /data/bee_oss

# 删除缓存
rm composer.lock

# 创建composer缓存目录
mkdir -p storage/framework/views
mkdir -p storage/framework/cache
mkdir -p storage/framework/sessions


ping 127.0.0.1 -c 5 > /dev/null 2>&1
