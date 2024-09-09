#!/bin/bash

# Uppdatera och installera nginx
apt update && apt install nginx -y

# Ta bort standardkonfuguration för nginx
rm /etc/nginx/sites-available/default

# Skapa ny konfiguration för nginx, Reversed Proxy
cat <<EOF > /etc/nginx/sites-available/default
server {
  listen        80 default_server;
  location / {
    proxy_pass         http://10.0.0.100:5000/;
    proxy_http_version 1.1;
    proxy_set_header   Upgrade $http_upgrade;
    proxy_set_header   Connection keep-alive;
    proxy_set_header   Host $host;
    proxy_cache_bypass $http_upgrade;
    proxy_set_header   X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header   X-Forwarded-Proto $scheme;
  }
}
EOF

# Ladda om nginx för att tillämpa den nya konfigurationen
systemctl reload nginx

# Aktivera nginx-tjänsten för att starta automatiskt vid omstart
systemctl enable nginx