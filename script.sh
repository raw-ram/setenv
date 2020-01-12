#!/bin/bash

echo "export HISTTIMEFORMAT=\"%d/%m/%y %T \"" >> ~/.bashrc
echo "alias scr='script scriptlog_`date +\"%Y-%m-%d_%T\"`'" >> ~/.bashrc 
echo "smart_script" >> ~/.bashrc
cp ./bash_aliases ~/.bash_aliases
echo "[*] History and script in ~/.bashrc set."

gsettings set org.gnome.mutter dynamic-workspaces false

gsettings set org.gnome.desktop.wm.preferences num-workspaces 5

echo "5 workspaces set."
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Alt>1']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Alt>2']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Alt>3']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Alt>4']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-last "['<Alt>5']"


gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Primary>1']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Primary>2']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Primary>3']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Primary>4']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-last "['<Primary>5']"

echo "[*] Shortcuts alt and ctrl set."

apt update && apt -y install terminator vim tmux glances golang
echo "[*] Stuff installed"
