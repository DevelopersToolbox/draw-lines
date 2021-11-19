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

export screen_width=97

# shellcheck disable=SC1091
source ../src/draw-lines.sh


draw_line
align_right "Wolf Software"
align_right "Wolf Software" 4
align_left "Wolf Software"
align_left "Wolf Software" 4
align_center "Wolf Software"

# -------------------------------------------------------------------------------- #
# End of Script                                                                    #
# -------------------------------------------------------------------------------- #
# This is the end - nothing more to see here.                                      #
# -------------------------------------------------------------------------------- #
