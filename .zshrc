# -----------------------------------------------------
# INIT
# -----------------------------------------------------

# -----------------------------------------------------
# Exports
# -----------------------------------------------------
export EDITOR=nvim
export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:~/.cargo/bin/
export PATH=$PATH:~/.local/bin/

# -----------------------------------------------------
# CUSTOMIZATION
# -----------------------------------------------------
POSH=agnoster

# -----------------------------------------------------
# oh-myzsh themes: https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# -----------------------------------------------------
# ZSH_THEME=robbyrussell

# -----------------------------------------------------
# oh-my-zsh plugins
# -----------------------------------------------------
plugins=(
    git
    sudo
    web-search
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
    fast-syntax-highlighting
    copyfile
    copybuffer
    dirhistory
)

# Set-up oh-my-zsh
source $ZSH/oh-my-zsh.sh

# -----------------------------------------------------
# Set-up FZF key bindings (CTRL R for fuzzy history finder)
# -----------------------------------------------------
source <(fzf --zsh)

# zsh history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# -----------------------------------------------------
# Prompt
# -----------------------------------------------------
# eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/zen.toml)"
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/EDM115-newline.omp.json)"

# Shipped Theme
# eval "$(oh-my-posh init zsh --config /usr/share/oh-my-posh/themes/agnoster.omp.json)"

# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------

# -----------------------------------------------------
# General
# -----------------------------------------------------
alias ..='cd ..'
alias c='clear'
alias nf='fastfetch'
alias pf='fastfetch'
alias ff='fastfetch'
alias ls='eza -a --icons=always'
alias ll='eza -al --icons=always'
alias lt='eza -a --tree --level=1 --icons=always'
alias shutdown='~/.config/ml4w/scripts/ml4w-power -p'
alias v='$EDITOR'
alias vim='$EDITOR'
alias wifi='nmtui'
alias arch-cleanup='~/.config/ml4w/scripts/arch/cleanup.sh'
alias apps='~/.config/ml4w/bin/ml4w-apps'
alias screenshot='~/.config/ml4w/bin/ml4w-screenshot'
alias updates='~/.config/ml4w/scripts/ml4w-install-system-updates'
alias filemanager='~/.config/ml4w/settings/filemanager'
alias autostart='~/.config/ml4w/scripts/ml4w-autostart'
alias lock='hyprlock'
alias clock='tty-clock'
alias system='~/.config/ml4w/settings/systemmonitor'
alias quick='~/.config/ml4w/bin/ml4w-quicklinks'
alias wallpaper='~/.config/ml4w/bin/ml4w-wallpaper'
alias settings='ml4w-dotfiles-settings com.ml4w.dotfiles'
