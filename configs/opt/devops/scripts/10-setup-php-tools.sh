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
#            PHP TOOLS FOR TESTING PURPOSE ONLY          |
#                         v1.00                          |
#--------------------------------------------------------'

echo -e "** Downloading PHP-TOOLS..."
mkdir -p /var/www/html/tools/
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/var/www/html/tools/info.php -o /var/www/html/tools/
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/var/www/html/tools/deploy.html -o /var/www/html/tools/