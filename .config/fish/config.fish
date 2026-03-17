set -gx EDITOR nvim
set -gx VISUAL $EDITOR
set -gx SUDO_EDITOR $EDITOR

if status is-interactive
  set -gx FZF_DEFAULT_COMMAND 'fd --type f --strip-cwd-prefix'
  set -g fish_greeting

  abbr v vim
  abbr b nvim
  abbr fe fastfetch
  abbr ra yazi
  abbr lg lazygit
  abbr l "ls -lah"
  abbr s "ls --sort=extension"
  abbr rmb "rm -r ./build"
end
