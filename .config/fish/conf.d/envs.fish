set -xg GOPATH /home/sirpi/go_path
set -xg GOROOT /home/sirpi/go_root
set -xg RC /home/sirpi/.config/fish/conf.d
set -xg NRC /home/sirpi/.config/nvim/init.lua
set -xg NVIM /usr/local/nvim
set -xf OMF ~/.local/share/omf/
set -xg DOT /home/sirpi/dotfiles/.config/
set -xg XDG_CONFIG_HOME /home/sirpi/.config
set -xg NODE_HOME /usr/local/nodejs
set -xg GHC /home/sirpi/.ghcup/
set -xg DOT /home/sirpi/dofiles/
set -xg SCRIPT_PATH /home/sirpi/scripts
set -xg CARGO /home/sirpi/.cargo
set NAME "Pop!_OS"

set PATH $GOPATH/bin $NVIM/bin $GOROOT/bin $NODE_HOME/bin $GHC/bin $SCRIPT_PATH $DOT $CARGO/bin $PATH 

