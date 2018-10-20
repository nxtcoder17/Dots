#! /bin/bash

cat << EOF
                    ============[ List of Must Have Utilities ]===========
                    [ Display Server ] 			            : xorg, xorg-xinit
                    [ Text Editors ]                        : vim, nvim
                    [ Terminals ]                           : xfce4-terminal, tmux, 
                    [ Version Control ]                     : git
                    [ Network Manager ]                     : networkmanager-applet
                    [ Download Managers]                    : axel, wget, transmission-cli, youtube-dl
                    [ Archivers/Extractors ]                : p7zip, unzip, unrar, tar, xarchiver, binutils, bzip2, cpio, zip
                    [ Battery and Power Functionality ]     : upower, acpi
                    [ Setting Wallpaper ]                   : feh
                    [ Faster File Search ]                  : mlocate
                    [ Transparency Thing ]                  : compton
                    [ Taking Screenshots ]                  : scrot
                    [ SSH Thing ]                           : openssh
                    [ Clipboard Thing ]                     : xclip
                    [ Xcape Utility ]                       : xcape
                    [ File Management ]                     : ranger, nautilus, ntfs-3g [for connecting ntfs drives]
                    [ Sound Servers ] [ Alsa ]              : alsa-firmware, alsa-utils, alsa-plugins
                                      [ PulseAudio ]        : pulseadio, pulseaudio-alsa pamixer
                    [ Network Related ]                     : net-tools
                    [ Android Tools ]                       : android-tools(adb and fastboot)
                                                            : mtpfs, gvfs-mtp
                    [ Video Playback ]                      : vlc, qt4(vlc dependency), mpv
                    [ Music Playback /Tag editing ]         : mpd, ncmpcpp, mpc, easytag
                    [ Multimedia Codecs ]                   : ffmpeg faac faad2 libdca flac libmpeg2 libmad opus libtheora libvorbis libvpx wavpack , etc
                    [ Icon Theme ]                          : papirus-icon-theme
                    [ PDF Viewer ]                          : zathura, zathura-pdf-mupdf, zathura-djvu
                    [ EBook Reader ]                        : okular - ebook-tools libzip khtml chmlib
                    [ Fonts ]                               : cantarell-fonts awesome-terminal-fonts, noto-fonts, powerline-fonts, ttf-dejavu, ttf-linux-libertine, ttf-roboto, ttf-croscore, ttf-anonymous-pro
                    [ TouchPad ]                            : xf86-input-libinput
                    [ Window Manager ]                      : i3-gaps i3blocks rofi i3lock lxappearance
EOF

pacman -S \
    vim tmux xfce4-terminal git\
    axel wget transmission-cli youtube-dl\
    p7zip unzip unrar tar xarchiver binutils zip\
    upower acpi\
    feh\
    mlocate\
    compton\
    scrot\
    openssh\
    xclip\
    xcape\
    ranger nautilus ntfs-3g\
    alsa-firmware alsa-utils alsa-plugins\
    pulseaudio pulseaudio-alsa pamixer\
    net-tools\
    android-tools mtpfs gvfs android-file-transfer\
    vlc qt4 mpv\
    mpd ncmpcpp mpc easytag\
    ffmpeg faac faad2 libdca flac libmpeg2 libmad opus libtheora libvorbis libvpx wavpack x264 x265 xvidcore gst-libav\
    papirus-icon-theme\
    zathura zathura-pdf-mupdf zathura-djvu\ 
    okular ebook-tools libzip khtml chmlib\
    ttf-anonymous-pro ttf-croscore ttf-roboto ttf-dejavu noto-fonts cantarell-fonts awesome-terminal-fonts
echo "============================[ Must Have Utilities Successfully Installed ]==================================="
