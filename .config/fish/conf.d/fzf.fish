if status is-interactive
  # fzf --fish | source
  fzf --fish | FZF_CTRL_R_COMMAND= source
end
