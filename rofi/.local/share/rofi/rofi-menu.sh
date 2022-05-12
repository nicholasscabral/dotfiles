#! /bin/bash

chosen=$(printf " ⏻ Power Off\n 🗘 Restart\n  Lock\n 直 Wi-Fi\n  Bluetooth\n  Audio output" | rofi -dmenu -i -theme-str '@import "~/.local/share/rofi/themes/forest.rasi"')

case "$chosen" in
	" ⏻ Power Off") poweroff ;;
	" 🗘 Restart") reboot ;;
	"  Lock") slock ;;
	" 直 Wi-Fi") bash ~/.local/share/rofi/rofi-wifi-menu.sh ;;
	"  Bluetooth") bash ~/.local/share/rofi/rofi-bluetooth-menu.sh ;;
	"  Audio output") bash ~/.local/share/rofi/rofi-audio-output.sh ;;
	*) exit 1 ;;
esac
