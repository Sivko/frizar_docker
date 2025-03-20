scp php.ini root@217.114.13.241:/etc/php/8.3/fpm/php.ini
scp www.conf root@217.114.13.241:/etc/php/8.3/fpm/pool.d/www.conf
ssh root@217.114.13.241 'systemctl restart php8.3-fpm'