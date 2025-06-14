function dotfiles --wraps='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' --wraps='command git --git-dir=/home/lauv/.dotfiles/ --work-tree=/home/lauv' --description 'alias dotfiles=command git --git-dir=/home/lauv/.dotfiles/ --work-tree=/home/lauv'
  command git --git-dir=/home/lauv/.dotfiles/ --work-tree=/home/lauv $argv
        
end
