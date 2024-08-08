function Godoc
    read -l name -P "pkg name: "
    set -l cmd $(string join " " "go doc" $name)
    set -l less $(string join " | " $cmd "less")
    eval $less
end

function fish_greeting
    fortune | lolcat
end

