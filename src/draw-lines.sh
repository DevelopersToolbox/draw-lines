#!/usr/bin/env bash

# -------------------------------------------------------------------------------- #
# Description                                                                      #
# -------------------------------------------------------------------------------- #
# -------------------------------------------------------------------------------- #

# -------------------------------------------------------------------------------- #
# Global Variables                                                                 #
# -------------------------------------------------------------------------------- #
# Global variables which can be set by the calling script, but need to be declared #
# here also to ensure the script is clean and error free.                          #
#                                                                                  #
# case_sensitive_sections - should section names be case sensitive                 #
# -------------------------------------------------------------------------------- #

declare screen_width
declare line_color
declare reset_line_color

# -------------------------------------------------------------------------------- #
# Local Variables                                                                  #
# -------------------------------------------------------------------------------- #
# The local variables which can be overridden by the global variables above.       #
#                                                                                  #
# local_case_sensitive_sections - should section names be case sensitive           #
# -------------------------------------------------------------------------------- #

local_screen_width=128
local_line_color=''
local_reset_line_color=''

# -------------------------------------------------------------------------------- #
# Set Global Variables                                                             #
# -------------------------------------------------------------------------------- #
# Check to see if the global overrides are set and if so, override the defaults.   #
#                                                                                  #
# Error checking is in place to ensure that the override contains a valid value of #
# true or false, anything else is ignored.
# -------------------------------------------------------------------------------- #

function setup_global_variables
{
    if [[ -n "${screen_width}" ]]; then
         local_screen_width="${screen_width}"
    fi
    if [[ -n "${line_color}" ]]; then
         local_line_color="${line_color}"
    fi
    if [[ -n "${reset_line_color}" ]]; then
         local_reset_line_color="${reset_line_color}"
    fi
}

# -------------------------------------------------------------------------------- #
# abs                                                                              #
# -------------------------------------------------------------------------------- #
# Return the absolute value for a given number.                                    #
# -------------------------------------------------------------------------------- #

function abs()
{
    (( $1 < 0 )) && echo "$(( $1 * -1 ))" || echo "$1"
}

# -------------------------------------------------------------------------------- #
# -------------------------------------------------------------------------------- #
# -------------------------------------------------------------------------------- #

function strip_colours()
{
    orig="${1:-}"

    if ! shopt -q extglob; then
        shopt -s extglob
        on=true
    fi
    clean="${orig//$'\e'[\[(]*([0-9;])[@-n]/}"
    [[ "${on}" == true ]] && shopt -u extglob

    echo "${clean}"
}

# -------------------------------------------------------------------------------- #
# -------------------------------------------------------------------------------- #
# -------------------------------------------------------------------------------- #

function draw_line()
{
    local start=$'\e(0' end=$'\e(B' line='qqqqqqqqqqqqqqqq'

    while ((${#line} < local_screen_width));
    do
        line+="${line}";
    done
    printf '%s%s%s%s%s\n' "${local_line_color}" "${start}" "${line:0:local_screen_width}" "${end}" "${local_reset_line_color}"
}

# -------------------------------------------------------------------------------- #
# -------------------------------------------------------------------------------- #
# -------------------------------------------------------------------------------- #

function align_right()
{
    local message="${1:-}"
    local offset="${2:-2}"

    clean=$(strip_colours "${message}")

    local textsize=${#clean}
    local start=$'\e(0' end=$'\e(B'

    local left_line='qqqqqqqqqqqqqqqq' left_width=$(( local_screen_width - (textsize + offset + 2) ))
    local right_line='qqqqqqqqqqqqqqqq' right_width=${offset}

    while ((${#left_line} < left_width)); do left_line+="${left_line}"; done
    while ((${#right_line} < right_width)); do right_line+="${right_line}"; done

    printf '%s%s%s%s%s %s %s%s%s%s%s\n' "${local_line_color}"  "${start}" "${left_line:0:left_width}" "${end}" "${local_reset_line_color}" "${1}" "${local_line_color}" "${start}" "${right_line:0:right_width}" "${end}" "${local_reset_line_color}"
}

# -------------------------------------------------------------------------------- #
# -------------------------------------------------------------------------------- #
# -------------------------------------------------------------------------------- #

function align_left()
{
    local message="${1:-}"
    local offset="${2:-2}"

    clean=$(strip_colours "${message}")

    local textsize=${#clean}
    local start=$'\e(0' end=$'\e(B'

    local left_line='qqqqqqqqqqqqqqqq' left_width=${offset}
    local right_line='qqqqqqqqqqqqqqqq' right_width=$(( local_screen_width - (textsize + offset + 2) ))

    while ((${#left_line} < left_width)); do left_line+="${left_line}"; done
    while ((${#right_line} < right_width)); do right_line+="${right_line}"; done

    printf '%s%s%s%s%s %s %s%s%s%s%s\n' "${local_line_color}"  "${start}" "${left_line:0:left_width}" "${end}" "${local_reset_line_color}" "${1}" "${local_line_color}" "${start}" "${right_line:0:right_width}" "${end}" "${local_reset_line_color}"
}

# -------------------------------------------------------------------------------- #
# -------------------------------------------------------------------------------- #
# -------------------------------------------------------------------------------- #

function align_center()
{
    local message="${1:-}"

    clean=$(strip_colours "${message}")

    local textsize=${#clean}
    local start=$'\e(0' end=$'\e(B'

    local left_line='qqqqqqqqqqqqqqqq' left_width=$(( (local_screen_width - (textsize + 2)) / 2 ))
    local right_line='qqqqqqqqqqqqqqqq' right_width=$(( (local_screen_width - (textsize + 2)) / 2 ))

    if (( ( left_width + right_width + textsize + 2 ) < local_screen_width )); then
        right_width=$(( right_width + 1 ))
    fi

    while ((${#left_line} < left_width)); do left_line+="${left_line}"; done
    while ((${#right_line} < right_width)); do right_line+="${right_line}"; done

    printf '%s%s%s%s%s %s %s%s%s%s%s\n' "${local_line_color}"  "${start}" "${left_line:0:left_width}" "${end}" "${local_reset_line_color}" "${1}" "${local_line_color}" "${start}" "${right_line:0:right_width}" "${end}" "${local_reset_line_color}"
}

# -------------------------------------------------------------------------------- #
# -------------------------------------------------------------------------------- #
# -------------------------------------------------------------------------------- #

setup_global_variables

# -------------------------------------------------------------------------------- #
# End of Script                                                                    #
# -------------------------------------------------------------------------------- #
# This is the end - nothing more to see here.                                      #
# -------------------------------------------------------------------------------- #
