set -xg GOPATH /home/sirpi/go
set -xg GOROOT /usr/local/go
set -xg RC /home/sirpi/.config/fish/conf.d
set -xg NRC /home/sirpi/.config/nvim/init.lua
set -xg NVIM /usr/local/nvim
set -xf OMF ~/.local/share/omf/

set PATH $GOPATH/bin $NVIM/bin $GOROOT/bin $PATH
