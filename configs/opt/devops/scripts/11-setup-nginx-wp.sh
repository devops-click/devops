#!/bin/bash
#--------------------------------------------------------,
#  ____              ___                  _ _      _     |
# |  _ \  _____   __/ _ \ _ __  ___   ___| (_) ___| | __ |
# | | | |/ _ \ \ / / | | | '_ \/ __| / __| | |/ __| |/ / |
# | |_| |  __/\ V /| |_| | |_) \__ \| (__| | | (__|   <  |
# |____/ \___| \_/  \___/| .__/|___(_)___|_|_|\___|_|\_\ |
#                        |_|                             |
#--------------------------------------------------------|
#     Author: Anderson Ayres (anderson@devops.click)     |
#  https://devops.click | https://anderson.devops.click  |
#--------------------------------------------------------|
#       NGINX OPTIMIZED CONFIGURATION FOR WORDPRESS      |
#                         v1.01                          |
#--------------------------------------------------------'

echo -e "** Downloading NGINX configurations..."
[ -d /etc/letsencrypt ] && curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/wordpress/etc/letsencrypt/cli.ini -o /etc/letsencrypt/cli.ini
[ ! -d /etc/nginx/snippets ] && mkdir -p /etc/nginx/snippets
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/wordpress/etc/nginx/conf.d/php-fpm.conf -o /etc/nginx/conf.d/php-fpm.conf
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/wordpress/etc/nginx/default.d/php.conf -o /etc/nginx/default.d/php.conf
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/wordpress/etc/nginx/snippets/converter-for-media.conf -o /etc/nginx/snippets/converter-for-media.conf
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/wordpress/etc/nginx/snippets/letsencrypt-acme-challenge.conf -o /etc/nginx/snippets/letsencrypt-acme-challenge.conf
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/wordpress/etc/nginx/snippets/wordpress-defaults.conf -o /etc/nginx/snippets/wordpress-defaults.conf
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/wordpress/etc/nginx/fastcgi_params -o /etc/nginx/fastcgi_params
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/wordpress/etc/nginx/fastcgi.conf -o /etc/nginx/fastcgi.conf
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/wordpress/etc/nginx/koi-utf -o /etc/nginx/koi-utf
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/wordpress/etc/nginx/koi-win -o /etc/nginx/koi-win
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/wordpress/etc/nginx/mime.types -o /etc/nginx/mime.types
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/wordpress/etc/nginx/nginx.conf.template -o /etc/nginx/nginx.conf.template
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/wordpress/etc/nginx/scgi_params -o /etc/nginx/scgi_params
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/wordpress/etc/nginx/uwsgi_params -o /etc/nginx/uwsgi_params
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/wordpress/etc/nginx/win-utf -o /etc/nginx/win-utf
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/wordpress/etc/php-fpm.d/www.conf -o /etc/php-fpm.d/www.conf
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/wordpress/etc/php.ini -o /etc/php.ini
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/wordpress/etc/php.d/20-imagick.ini -o /etc/php.d/20-imagick.ini
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/wordpress/etc/php.d/20-zip.ini -o /etc/php.d/20-zip.ini