#             _
#     _______| |__  _ __ ___
#    |_  / __| '_ \| '__/ __|
#   _ / /\__ \ | | | | | (__
#  (_)___|___/_| |_|_|  \___|

# -----------------------------------------------------
# PATH
# -----------------------------------------------------

export PATH="/usr/lib/ccache/bin/:$PATH"
export PATH="$HOME/Scripts:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/Go/bin:$PATH"
export PATH="$HOME/.pyenv/bin:$PATH"

# -----------------------------------------------------
# ZSH
# -----------------------------------------------------

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(
    sudo
    zsh-autosuggestions
    zsh-syntax-highlighting
    ohmyzsh-full-autoupdate
)
source $ZSH/oh-my-zsh.sh

# -----------------------------------------------------
# GIT
# -----------------------------------------------------

alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gcheck="git checkout"
alias gb="git branch"
alias gsw="git switch"
alias gd="git diff"

# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------

alias e="exit"
# alias f="nohup nautilus $HOME/nthu-stat &> /dev/null & disown; exit"
alias search="s -p google"
alias matrix="cmatrix"
alias wifi="nmtui connect"
alias clock="peaclock"
alias nf="neofetch"
alias pf="pfetch"
alias ff="fastfetch"
alias ls="eza --icons"
alias ll="eza -l --icons"
alias lt="eza --tree --level=1 --icons"
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias pandock="docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex"
alias refresh-mirrors="rate-mirrors --allow-root --protocol https arch | grep -v '^#' | sudo tee /etc/pacman.d/mirrorlist"
alias zshrc="nano $HOME/.zshrc"

# -----------------------------------------------------
# PYWAL
# -----------------------------------------------------

cat $HOME/Dotfiles/.color/sequences

# -----------------------------------------------------
# STARSHIP
# -----------------------------------------------------

eval "$(starship init zsh)"

# -----------------------------------------------------
# ZOXIDE
# -----------------------------------------------------

eval "$(zoxide init zsh)"

# -----------------------------------------------------
# PYENV
# -----------------------------------------------------

eval "$(pyenv init -)"
export PY3_10="$HOME/.pyenv/versions/3.10.12/bin/python3.10"

# -----------------------------------------------------
# MISCS
# -----------------------------------------------------

setopt no_nomatch
