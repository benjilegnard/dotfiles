#!/bin/bash
# Simple power menu with rofi: reboot, sleep, shutdown.

readonly REBOOT="󰜉  Reboot"
readonly SLEEP="󰤄  Sleep"
readonly SHUTDOWN="󰐥  Shutdown"

choice="$(printf '%s\n' "$REBOOT" "$SLEEP" "$SHUTDOWN" \
    | rofi -dmenu -i -no-custom -p "󰐦  Power")"

case "$choice" in
    "$REBOOT") systemctl reboot ;;
    # swayidle locks the screen before sleep (before-sleep)
    "$SLEEP") systemctl suspend ;;
    "$SHUTDOWN") systemctl poweroff ;;
esac
