if [[ -z $DISPLAY && $TTY = /dev/tty1 ]]; then
  export WLR_NO_HARDWARE_CURSORS=1 
  export GTK_THEME=Adwaita:dark 
  export QT_STYLE_OVERRIDE=adwaita-dark 
  export MOZ_ENABLE_WAYLAND=1
  exec sway -V
fi

