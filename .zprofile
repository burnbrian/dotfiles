# Start Sway
if [[ -z $DISPLAY && $TTY = /dev/tty1 ]]; then
  export WLR_NO_HARDWARE_CURSORS=1 
  export GTK_THEME=Adwaita:dark 
  export QT_STYLE_OVERRIDE=adwaita-dark 
  export MOZ_ENABLE_WAYLAND=1
  exec sway -V
fi

# Configure PATH for GO
if [ -d "/local/bin/go/bin" ] ; then
    PATH="$PATH:/local/bin/go/bin"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
