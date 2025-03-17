scp docker-compose.yml Dockerfile.backend root@217.114.9.212:/var/www/html
ssh root@217.114.9.212 'cd /var/www/html && sudo docker compose up --build -d'