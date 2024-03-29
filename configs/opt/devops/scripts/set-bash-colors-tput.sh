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
#                 BASH TPUT COLOR SCRIPT                 |
#                         v1.00                          |
#--------------------------------------------------------'

# Value	Color
# 0	    Black
# 1	    Red
# 2	    Green
# 3	    Yellow
# 4	    Blue
# 5	    Magenta
# 6	    Cyan
# 7	    White
# 8	    Not used
# 9	    Reset to default color

# # Capname	    Description
# bold	        Start bold text
# smul	        Start underlined text
# rmul	        End underlined text
# rev	        Start reverse video
# blink	        Start blinking text
# invis	        Start invisible text
# smso	        Start “standout” mode
# rmso	        End “standout” mode
# sgr0	        Turn off all attributes
# setaf <value>	Set foreground color
# setab <value>	Set background color

# #Clearing the Screen
# Capname	Description
# smcup	Save screen contents
# rmcup	Restore screen contents
# el	    Clear from the cursor to the end of the line
# el1	    Clear from the cursor to the beginning of the line
# ed	    Clear from the cursor to the end of the screen
# clear	    Clear the entire screen and home the cursor

# # tput_colors - Demonstrate color combinations
# for fg_color in {0..7}; do
#     set_foreground=$(tput setaf $fg_color)
#     for bg_color in {0..7}; do
#         set_background=$(tput setab $bg_color)
#         echo -n $set_background$set_foreground
#         printf ' F:%s B:%s ' $fg_color $bg_color
#     done
#     echo $(tput sgr0)
# done

BLACK="0"
RED="1"
GREEN="2"
YELLOW="3"
BLUE="4"
MAGENTA="5"
CYAN="6"
WHITE="7"

BOLD=$(tput bold)
UNDERLINE=$(tput smul)
REVERSE=$(tput rev)
BLINK=$(tput blink)
INVISIBLE=$(tput invis)
STANDOUT=$(tput smso)
STANDOUTEND=$(tput rmso)
END=$(tput sgr0)

TEXT_BLACK=$(tput setaf ${BLACK})
TEXT_RED=$(tput setaf ${RED})
TEXT_GREEN=$(tput setaf ${GREEN})
TEXT_YELLOW=$(tput setaf ${YELLOW})
TEXT_BLUE=$(tput setaf ${BLUE})
TEXT_MAGENTA=$(tput setaf ${MAGENTA})
TEXT_CYAN=$(tput setaf ${CYAN})
TEXT_WHITE=$(tput setaf ${WHITE})

BG_BLACK=$(tput setab ${BLACK})
BG_RED=$(tput setab ${RED})
BG_GREEN=$(tput setab ${GREEN})
BG_YELLOW=$(tput setab ${YELLOW})
BG_BLUE=$(tput setab ${BLUE})
BG_MAGENTA=$(tput setab ${MAGENTA})
BG_CYAN=$(tput setab ${CYAN})
BG_WHITE=$(tput setab ${WHITE})

echo -e "${TEXT_GREEN}** set-bash-colors-tput.sh loaded! **${END}"