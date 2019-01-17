[[ -f ~/.bashrc ]] && . ~/.bashrc

export EDITOR=emacsclient
export TERMINAL=urxvt

export PATH="$(du "$HOME/.scripts/" | cut -f2 | tr '\n' ':')$PATH"

echo 150 | sudo tee /sys/devices/platform/i8042/serio1/sensitivity

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

