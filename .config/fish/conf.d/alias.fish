alias v "nvim"
alias ll "exa -lah --icons"
alias ls "exa --icons"
alias cls "clear"
alias new "tmux new-session -A -s"
alias tls "tmux ls"
alias G "Godoc"
alias ff "fzf"
alias st "echo \$status"
alias inp "sudo apt install $1"
alias rmp "sudo apt autoremove --purge $1"
alias dot "dotDir"
alias src "source $RC/*.fish"

function dotDir
    set -l dir "~/dotfiles/.config/$argv"
    echo "Opening Dir $dir."
    set -l cmd $(string join " " "v" $dir)
    eval $cmd
end
