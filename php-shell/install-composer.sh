

#php /usr/local/bin/composer.phar config -g repo.packagist composer https://packagist.phpcomposer.com
#php /usr/local/bin/composer.phar config -g --unset repos.packagist
#php /usr/local/bin/composer.phar config -g repo.packagist composer https://mirrors.aliyun.com/composer/
#php /usr/local/bin/composer.phar config repo.packagist composer https://mirrors.aliyun.com/composer/
#php /usr/local/bin/composer.phar update --lock

# 检测命令，检测一些常见的问题
php -d memory_limit=-1 /usr/local/bin/composer.phar diagnose
php -d memory_limit=-1 /usr/local/bin/composer.phar config -g --disable-tls true

# 清理composer缓存
php -d memory_limit=-1 /usr/local/bin/composer.phar clearcache
php -d memory_limit=-1 /usr/local/bin/composer.phar clear

# 配置阿里云地址
php /usr/local/bin/composer.phar config repositories.packagist composer https://mirrors.aliyun.com/composer/
php /usr/local/bin/composer.phar config -g repo.packagist composer https://mirrors.aliyun.com/composer/

# install
php -d memory_limit=-1 /usr/local/bin/composer.phar install --optimize-autoloader
# update
php -d memory_limit=-1 /usr/local/bin/composer.phar update nothing
# install
php -d memory_limit=-1 /usr/local/bin/composer.phar install --optimize-autoloader
