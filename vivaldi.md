
```sh
# In file: /usr/bin/vivalid-stable (for HDMI Font scaling)
if [[ -f ~/.config/vivaldi-flags.conf ]]; then VIVALDI_USER_FLAGS="$(cat ~/.config/vivaldi-flags.conf)" fi
exec -a "$0" "$HERE/vivaldi"-bin $VIVALDI_USER_FLAGS "$@"

# Then in ~/.config/vivaldi-flags.conf
scale-factor=1.5
```

