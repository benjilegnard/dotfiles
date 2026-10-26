#!/bin/bash
# Pick a wallpaper with rofi and display it with awww.
# Usage:
#   wallpaper.sh            open rofi, first entry sets a random wallpaper
#   wallpaper.sh --random   set a random wallpaper without opening rofi

readonly WALLPAPERS_DIR="$HOME/Images/SimonStalenhag"
readonly AWWW="$HOME/.local/bin/awww"
readonly RANDOM_ENTRY="󰒝  Random"

export AWWW_TRANSITION="${AWWW_TRANSITION:-any}"
export AWWW_TRANSITION_FPS="${AWWW_TRANSITION_FPS:-60}"

list_wallpapers() {
    find "$WALLPAPERS_DIR" -type f \
        \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' -o -iname '*.gif' -o -iname '*.webp' \) \
        -printf '%P\n' | sort
}

random_wallpaper() {
    list_wallpapers | shuf -n 1
}

# wait for the daemon to be ready (it may still be starting at login)
wait_daemon() {
    for _ in $(seq 1 50); do
        "$AWWW" query >/dev/null 2>&1 && return 0
        sleep 0.1
    done
    echo "awww-daemon is not running" >&2
    exit 1
}

if [[ "$1" == "--random" ]]; then
    selection="$(random_wallpaper)"
else
    # first entry is "random", then each file name with its thumbnail as icon
    selection="$( {
        echo "$RANDOM_ENTRY"
        list_wallpapers | while read -r file; do printf '%s\0icon\x1f%s\n' "$file" "$WALLPAPERS_DIR/$file"; done
    } | rofi -dmenu -i -no-custom -show-icons -p "󰸉  Wallpaper")"
    [[ "$selection" == "$RANDOM_ENTRY" ]] && selection="$(random_wallpaper)"
fi

# rofi dismissed: do nothing
[[ -f "$WALLPAPERS_DIR/$selection" ]] || exit 0

wait_daemon
"$AWWW" img "$WALLPAPERS_DIR/$selection"
