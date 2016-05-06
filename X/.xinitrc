
#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
exec i3
