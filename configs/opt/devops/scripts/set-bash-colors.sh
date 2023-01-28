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
#                    BASH COLOR SCRIPT                   |
#                         v1.00                          |
#--------------------------------------------------------'

# COLORS # Star: "\e[1;31m" and end "\e[0m" not working...
RED="31"
GREEN="32"
BLUE="34"
BOLDRED="\033[1;${RED}m"
BOLDGREEN="\033[1;${GREEN}m"
BOLDGBLUE="\033[1;${BLUE}m"
ITALICRED="\033[3;${RED}m"
ITALICGREEN="\033[3;${GREEN}m"
ITALICBLUE="\033[3;${BLUE}m"
LIGHTRED="\033[3;${RED}m"
LIGHTGREEN="\033[3;${GREEN}m"
LIGHTBLUE="\033[3;${BLUE}m"
BOLD="\033[1m"
LIGHT="\033[2m"
ENDCOLOR="\033[0m"

echo -e "\n${BOLDGREEN}** set-bash-colors-tput.sh loaded! **${ENDCOLOR}\n"