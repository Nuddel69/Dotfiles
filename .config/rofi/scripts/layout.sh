#!/bin/bash

rofi_command="rofi -theme themes/layout.rasi"

### Options ###
tabbed="ﬓ"
split="﬿"
# Variable passed to rofi
options="$tabbed\n$split"

chosen="$(echo -e "$options" | $rofi_command -dmenu)"
case $chosen in
    $tabbed)
        i3-msg layout tabbed
        ;;
    $split)
        i3-msg layout toggle split
        ;;
esac


