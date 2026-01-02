function dotfiles --wraps='git' --description 'alias for managing dotfiles'
    command git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $argv
end
