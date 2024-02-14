# Export text editors
export EDITOR=nvim
export VISUAL=$EDITOR

# Export history
export HISTFILE=".zhistory"
export HISTSIZE=133700
export SAVEHIST=133700

# Export yubikey-agent if installed
if [[ $(command -v yubikey-agent) ]]; then
    export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/yubikey-agent/yubikey-agent.sock"
else
    echo "No yubikey-agent package found..."
fi
