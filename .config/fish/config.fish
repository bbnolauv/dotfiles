set -gx EDITOR (which nvim)
set -gx VISUAL $EDITOR
set -gx SUDO_EDITOR $EDITOR
set -g fish_greeting

abbr v vim
abbr b nvim
abbr fe fastfetch
abbr ra yazi
abbr lg lazygit
alias l="ls -lah"
alias s="ls --sort=extension"
alias rmb="rm -rf ./build"
