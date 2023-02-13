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
#     NGINX OPTIMIZED CONFIGURATION FOR EDGE PROXIES     |
#                         v1.00                          |
#--------------------------------------------------------'

echo -e "** Downloading NGINX configurations..."
[ -d /etc/letsencrypt ] && curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/nginx-edge/etc/letsencrypt/cli.ini -o /etc/letsencrypt/cli.ini
[ ! -d /etc/nginx/snippets ] && mkdir -p /etc/nginx/snippets
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/nginx-edge/etc/nginx/snippets/letsencrypt-acme-challenge.conf -o /etc/nginx/snippets/letsencrypt-acme-challenge.conf
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/nginx-edge/etc/nginx/koi-utf -o /etc/nginx/koi-utf
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/nginx-edge/etc/nginx/koi-win -o /etc/nginx/koi-win
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/nginx-edge/etc/nginx/mime.types -o /etc/nginx/mime.types
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/nginx-edge/etc/nginx/nginx.conf.template -o /etc/nginx/nginx.conf.template
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/nginx-edge/etc/nginx/scgi_params -o /etc/nginx/scgi_params
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/nginx-edge/etc/nginx/uwsgi_params -o /etc/nginx/uwsgi_params
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/nginx-edge/etc/nginx/win-utf -o /etc/nginx/win-utf