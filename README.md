# NVIM Setup

## Pre requirements:

```bash
sudo apt-get install unzip
sudo apt install lua5.4 liblua5.4-dev
```

## Requirements:

### NERD FONT Linux

```bash
mkdir ~/nerd_fonts/
cd ~/nerd_fonts
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz

tar xf JetBrainsMono.tar.xz
rm JetBrainsMono.tar.xz
rm README.md
rm OFL.txt
cd ..
sudo mv nerd_fonts/ /usr/local/share/fonts
```
> [!IMPORTANT]  
> RESTART Ubuntu

Check installation
```bash
fc-list
```
### NERD FONT Windows - WSL

Just download and install from https://www.nerdfonts.com/font-downloads

Then configure the font in the terminal for Ubuntu

Also set the terminal theme as Dark+

### LUA ROCKS

```bash
cd ~/
wget https://luarocks.org/releases/luarocks-3.11.1.tar.gz
tar zxpf luarocks-3.11.1.tar.gz
cd luarocks-3.11.1
./configure && make && sudo make install
sudo luarocks install luasocket

cd ..
rm -r luarocks-3.11.1
rm luarocks-3.11.1.tar.gz
```

### NEOVIM (INSTALL/UPDATE)

1. cd Downloads
2. Download the AppImage from https://github.com/neovim/neovim/releases/tag/stable
3. chmod u+x nvim-linux-x86_64.appimage
4. sudo mv nvim-linux-x86_64.appimage /usr/local/bin
5. cd /usr/local/bin
6. sudo rm nvim (remove the old version, only if update)
7. sudo mv nvim-linux-x86_64.appimage nvim


### NEOVIM and LAZY CONFIG

| Assuming nvim is already installed

```bash
mkdir -p ~/.config/nvim
nvim ~/.config/nvim/init.lua
# Paste init.lua config

mkdir -p ~/.config/nvim/lua/config/
nvim ~/.config/nvim/lua/config/lazy.lua
# Paste lazy.lua config

nvim ~/.config/nvim/init.lua
# Uncomment require("config.lazy")

```

### Plugins
```
# All plugins
mkdir -p ~/.config/nvim/lua/plugins/
nvim ~/.config/nvim/lua/plugins/custom.lua
# Paste the plugin
```

## Commands
```bash
:Lazy
:checkhealth lazy
```

> [!NOTE]
> TODO: CREATE REPO AND MAKE EASIER THE INSTALLATION
> TODO: Config from https://github.com/LazyVim/LazyVim, so check it

