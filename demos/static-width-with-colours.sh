#!/usr/bin/env bash

# -------------------------------------------------------------------------------- #
# Description                                                                      #
# -------------------------------------------------------------------------------- #
# Ensure that trapper can correctly identify and locate an unbounded variable.     #
# -------------------------------------------------------------------------------- #

# -------------------------------------------------------------------------------- #
# Global Overrides                                                                 #
# -------------------------------------------------------------------------------- #
# These variables allow us to override the parse script defaults.                  #
#                                                                                  #
# case_sensitive_sections - should section names be case sensitive                 #
# case_sensitive_keys     - should key names be case sensitive                     #
# show_config_warnings    - should we show config warnings                         #
# show_config_errors      - should we show config errors                           #
#                                                                                  #
# You can uncomment either (or both) of the values below to override the default   #
# value of true.                                                                   #
# -------------------------------------------------------------------------------- #

export screen_width
export line_color
export reset_line_color


screen_width=150
line_color=$(tput setaf 3)
reset_line_color=$(tput sgr0)

bold=$(tput bold)
text_color=$(tput setaf 6)
reset=$(tput sgr0)

# shellcheck disable=SC1091
source ../src/draw-lines.sh

draw_line
align_right "${text_color}${bold}hello world${reset}"
align_right "${text_color}${bold}hello world${reset}" 4
align_left "${text_color}${bold}hello world${reset}"
align_left "${text_color}${bold}hello world${reset}" 4
align_center "${text_color}${bold}hello world${reset}"

# -------------------------------------------------------------------------------- #
# End of Script                                                                    #
# -------------------------------------------------------------------------------- #
# This is the end - nothing more to see here.                                      #
# -------------------------------------------------------------------------------- #
