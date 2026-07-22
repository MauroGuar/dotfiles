set fish_greeting

alias dotfiles "/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"

if status is-interactive
    # Commands to run in interactive sessions can go here
end
