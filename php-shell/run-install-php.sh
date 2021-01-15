


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



# 安装命令 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

a=`which php`
if [ ! -n "$a" ]; then

	# 环境准备
	cd $script_dir
	bash ready.sh $php_conf $php_config_file $php_package_dir

	echo "正在安装 php"
	cd $php_package_dir
	bash ${script_dir}/install-php.sh   $php_conf $php_config_file

	# 设置环境变量
	# /etc/profile
	echo "" >> /etc/profile
	echo "export PATH=\"/usr/local/php/bin/:\$PATH\"" >> /etc/profile
	echo "export PATH=\"/usr/local/php/sbin/:\$PATH\"" >> /etc/profile
	source /etc/profile
else
    echo "php 已安装"
fi



a=`which php`
if [ ! -n "$a" ]; then
	echo "php 未安装"
else

	a=`php -i | grep ongo`
	if [ ! -n "$a" ]; then
		echo "正在安装 mongo"
		cd $php_package_dir
		bash ${script_dir}/install-php-mongo.sh   $php_conf $php_config_file
	else
	    echo "mongo 已安装"
	fi


fi



a=`which php`
if [ ! -n "$a" ]; then
	echo "php 未安装"
else

	a=`php -i | grep amqp`
	#if [ ! -n "$a" ]; then
		echo "正在安装 amqp"
		cd $php_package_dir
		bash ${script_dir}/install-php-amqp.sh   $php_conf $php_config_file
	#else
	    echo "amqp 已安装"
	#fi


fi


# 安装php项目依赖

a=`which php`
if [ ! -n "$a" ]; then
	echo "php 未安装"
else
	cd $bee_oss_dir
	bash ${script_dir}/install-composer.sh   $php_conf $php_config_file
fi

# 测试

a=`which php`
if [ ! -n "$a" ]; then
	echo "php 未安装"
else
	cd $bee_oss_dir
	bash ${script_dir}/install-test.sh   $php_conf $php_config_file
fi

