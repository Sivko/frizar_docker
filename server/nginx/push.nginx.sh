scp fastcgi_params mime.types nginx.conf root@217.114.13.241:/etc/nginx/
scp -r ./hosts/* root@217.114.13.241:/etc/nginx/sites-available/
scp -r ./hosts/* root@217.114.13.241:/etc/nginx/sites-enabled/

REMOTE_HOST="root@217.114.13.241"

# Проверяем конфигурацию Nginx на удалённом сервере
if ssh $REMOTE_HOST 'nginx -t'; then
    echo "Nginx configuration is valid. Restarting Nginx on remote server..."
    ssh $REMOTE_HOST 'sudo systemctl restart nginx'
    echo "Nginx restarted successfully."
else
    echo "Nginx configuration test failed on remote server. Fix the errors before restarting."
    exit 1
fi