
# 生成测试数据
php artisan migrate
php artisan queue:restart

# 重启服务
#systemctl restart php7.2-fpm
#systemctl restart nginx

#tail -f /data/www/bee_oss/storage/logs/laravel.log 



php -r "echo ini_get('memory_limit').PHP_EOL;"

php -i | grep ini
php -i | grep ongo
php -i | grep amqp
# 测试是否按照amqp
php -r "phpinfo();" | grep bcmath



# 连接测试

php -r "print_r(get_extension_funcs("mongodb"));"
php -r "print_r(get_declared_classes());"


