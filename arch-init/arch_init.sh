#! /bin/bash

TOOLS="vim tmux git openssh xclip make cmake compton scrot xcape dunst imagemagick feh sxiv "
CPP="clang llvm"
FILES="unzip p7zip unrar tar ntfs-3g"
DOCS='zathura zathura-pdf-mupdf pandoc libreoffice-fresh'
LANGUAGES="python kotlin ruby go php nodejs"
SOUND="pulseaudio alsa pulseaudio-alsa alsa-firmware alsa-utils alsa-plugins"
VOLUME="pamixer pavucontrol"
# MUSIC="mpd ncmpcpp mpc "

DOWNLOADER="axel wget transmission-cli"
BATTERY="upower acpi"
NETWORK="net-tools tcpdump" 
VIDEO="mpv"
CUSTOMISATION="lxappearance papirus-icon-theme"
TOUCHPAD="libinput xf86-input-libinput"
ANDROID_TOOLS="android-tools mtpfs gvfs-mtp"
CODECS="ffmpeg faac faad2 flac libdca libmpeg2 opus x264 x265 gst-libav libtheora"
FONTS="ttf-anonymous-pro ttf-croscore ttf-roboto ttf-dejavu noto-fonts cantarell-fonts awesome-terminal-fonts"
UI="i3-gaps i3blocks rofi i3lock"
# DATABASES="mariadb postgresql"

GSTREAMER="gst-python gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly gst-libav"

pacman -S --needed \
	$TOOLS $FILES $DOCS\
	$LANGUAGES $SOUND $VOLUME\
	$MUSIC $DOWNLOADER $BATTERY\
	$NETWORK $VIDEO $CUSTOMISATION\
	$TOUCHPAD $ANDROID_TOOLS $CODECS\
	$FONTS $UI $GSTREAMER

