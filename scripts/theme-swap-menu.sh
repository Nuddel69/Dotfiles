#!/usr/bin/bash

cd $HOME/scripts

rofi_theme_selector() {
    NUMBER_OF_THEMES=2
    AVAILABLE_THEMES=$(cat available-themes)
    printf '%b\n' $AVAILABLE_THEMES | rofi -show drun -show-icons -width 20 -lines $NUMBER_OF_THEMES -dmenu -i -theme $HOME/.config/rofi/themes/drun.rasi
}

change_theme(){
    chosen=$1

    ./theme-change.sh -t $chosen
}

POSITIONAL=()
while [[ $# -gt 0 ]]; do
  key="$1"

  case $key in
    -r|--rofi)
      chosen=$(rofi_theme_selector)
      shift # past argument
      ;;
    -t|--theme)
      chosen="$2"
      shift # past argument
      shift # past value
      ;;
    *)    # unknown option
      POSITIONAL+=("$1") # save it in an array for later
      shift # past argument
      ;;
  esac
done

if [ -z $chosen ];
then
    echo "[ERROR]: unvalid theme"
else
    change_theme $chosen
fi
