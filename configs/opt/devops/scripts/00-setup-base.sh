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
#                BASE DEVOPS.CLICK SCRIPTS               |
#                         v1.01                          |
#--------------------------------------------------------'

echo -e "** Downloading BASE devops.click scripts and configurations..."
mkdir -p /opt/devops/bin/
mkdir -p /opt/devops/scripts/
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/opt/devops/bin/maintenance -H "Cache-Control: no-cache, no-store" -o /opt/devops/bin/maintenance
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/opt/devops/scripts/set-bash-colors-tput.sh -o /opt/devops/scripts/set-bash-colors-tput.sh
curl -sL https://raw.githubusercontent.com/devops-click/devops/main/configs/opt/devops/scripts/set-bash-colors.sh -o /opt/devops/scripts/set-bash-colors.sh
chmod +x -R /opt/devops/bin/*
chmod +x -R /opt/devops/scripts/*