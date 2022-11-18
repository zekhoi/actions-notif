sudo apt update && apt upgrade -y
sudo apt install certbot python3-certbot-nginx

sudo nano /etc/nginx/sites-available/example.com
# server_name example.com www.example.com;

sudo ufw allow 'Nginx HTTPS'
sudo ufw deny 'Nginx HTTP'
sudo ufw allow 'Nginx Full'

sudo certbot --nginx -d example.com -d www.example.com

crontab -e
# 0 5 * * * /usr/bin/certbot renew --quiet