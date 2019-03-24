#! /bin/bash

TOOLS="vim tmux git openssh xclip make cmake compton scrot xcape dunst"
FILES="unzip p7zip unrar tar pcmanfm ranger ntfs-3g"
# DOCS="zathura pandoc libreoffice-fresh calibre"
LANGUAGES="python kotlin ruby"
SOUND="pulseaudio alsa pulseaudio-alsa alsa-firmware alsa-utils alsa-plugins"
# VOLUME="pamixer pavucontrol"
VOLUME="pamixer "
MUSIC="mpd ncmpcpp mpc "
# DOWNLOADER="axel wget youtube-dl transmission-cli"
BATTERY="upower acpi"
# NETWORK="net-tools tcpdump wireshark-cli wireshark-gtk"
VIDEO="mpv vlc qt4"
CUSTOMISATION="lxappearance papirus-icon-theme"
TOUCHPAD="libinput xf86-input-libinput"
ANDROID_TOOLS="android-tools mtpfs gvfs-mtp"
CODECS="ffmpeg faac faad2 flac libdca libmpeg2 opus x264 x265 gst-libav libtheora"
FONTS="ttf-anonymous-pro ttf-croscore ttf-roboto ttf-dejavu noto-fonts cantarell-fonts awesome-terminal-fonts"
# UI="i3-gaps i3blocks rofi i3lock"
# DATABASES="mariadb"

pacman -S --needed \
	$TOOLS $FILES $DOCS\
	$LANGUAGES $SOUND $VOLUME\
	$MUSIC $DOWNLOADER $BATTERY\
	$NETWORK $VIDEO $CUSTOMISATION\
	$TOUCHPAD $ANDROID_TOOLS $CODECS\
	$FONTS $UI $DATABASES

