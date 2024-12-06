apt -y update
apt install -y nginx

# Start nginx service
service nginx start

# Replace "Welcome to nginx" with "Welcome to Nathan's page"
sed -i 's/Welcome to nginx!/Welcome to Nathan\x27s page!/g' /var/www/html/*.html

# Replace "nginx" with "nginx (pronounced as EngineX)"
sed -i 's/nginx/nginx (pronounced as EngineX)/g' /var/www/html/*.html

# Restart nginx service
service nginx restart
