
#docker stop ubuntu-16.04-5
#docker rm   ubuntu-16.04-5

docker run --name ubuntu-16.04-5 -p 9008:80 \
-v ~/data/docker-php/source.list:/etc/apt/sources.list \
-v ~/data/docker-php/data:/var/www \
-v ~/data/docker-php/php-shell:/php-shell \
-itd ubuntu:16.04

docker exec -it ubuntu-16.04-5 bash
