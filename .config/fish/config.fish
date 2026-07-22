set fish_greeting

alias dotfiles "/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"

if status is-interactive
    fish_vi_key_bindings
end
