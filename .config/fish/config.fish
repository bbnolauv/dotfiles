set -gx EDITOR (which nvim)
set -gx VISUAL $EDITOR
set -gx SUDO_EDITOR $EDITOR
set -g fish_greeting

abbr v vim
abbr b nvim
abbr fe fastfetch
abbr ra yazi
abbr lg lazygit
abbr l "ls -lah"
abbr s "ls --sort=extension"
abbr rmb "rm -r ./build"
