scp php.ini root@217.114.9.212:/etc/php/8.3/fpm/php.ini
scp www.conf root@217.114.9.212:/etc/php/8.3/fpm/pool.d/www.conf
ssh root@217.114.9.212 'systemctl restart php8.3-fpm'