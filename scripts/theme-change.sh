#! /bin/bash

theme=''

while getopts 't:' flag; do
    theme="${OPTARG}"
done

function setup_config {
    rice_name=$theme

    rm $HOME/.config/awesome/themes/something/theme.lua
    cp $HOME/.config/awesome/themes/something/$rice_name/theme.lua $HOME/.config/awesome/themes/something/theme.lua

    rm $HOME/.config/alacritty/alacritty.yml
    cp $HOME/.config/alacritty/$rice_name/alacritty.yml $HOME/.config/alacritty/alacritty.yml

    echo 'awesome.restart()' | awesome-client > /dev/null 2>$1

    exit 0
}

case "$theme" in
    "lorago" ) setup_config "lorago" ;;
    "srcery" ) setup_config "srcery" ;;
    *) echo "[ERROR]: no theme with name \"$theme\" found"
esac

exit 1
