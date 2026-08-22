#!/usr/bin/env zsh

RED=$(printf '\033[38;5;196m')
ORANGE=$(printf '\033[38;5;202m')
YELLOW=$(printf '\033[38;5;226m')
GREEN=$(printf '\033[38;5;082m')
TEAL=$(printf '\033[1;36m')
BLUE=$(printf '\033[38;5;021m')
PURPLE=$(printf '\033[38;5;093m')
PINK=$(printf '\033[38;5;163m')
WHITE=$(printf '\033[1;37m')
RESET=$(printf '\033[0m')

RAINBOW=(
    "$RED"
    "$ORANGE"
    "$YELLOW"
    "$GREEN"
    "$TEAL"
    "$BLUE"
    "$PURPLE"
    "$PINK"
    "$RED"
)

printf '\n'
printf ' %s    __    %s      %s __ __  %s       %s          %s        %s      %s__ %s    __ %s\n' $RAINBOW $RESET
printf ' %s   / /_   %s___   %s/ // / %s___     %s_      __%s ____   %s_____ %s/ /%s ___/ / %s\n' $RAINBOW $RESET
printf ' %s  / __ \ %s/ _ \ %s/ // /%s/ __ \   %s| | /| / /%s/ __ \ %s/ ___/%s/ /%s/ __  /  %s\n' $RAINBOW $RESET
printf ' %s / / / /%s/  __/%s/ // /%s/ /_/ /   %s| |/ |/ /%s/ /_/ /%s/ /   %s/ /%s/ /_/ /   %s\n' $RAINBOW $RESET
printf ' %s/_/ /_/ %s\___/%s/_//_/ %s\____/    %s|__/|__/%s \____/%s/_/   %s/_/%s \__,_/    %s\n' $RAINBOW $RESET
printf '\n'
