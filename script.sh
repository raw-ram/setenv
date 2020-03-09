#!/bin/bash

echo "export HISTTIMEFORMAT=\"%d/%m/%y %T \"" >> ~/.bashrc
echo "alias exit=savelog; exit"
echo "alias scr='script scriptlog_`date +\"%Y-%m-%d_%T\"`'" >> ~/.bashrc 
echo "smart_script" >> ~/.bashrc
cp ./bash_aliases ~/.bash_aliases
echo "[*] History and script in ~/.bashrc set."

mkdir -p ~/.config/terminator/
cp -v ./terminator.rc ~/.config/terminator/config
echo "[*] Terminator settings restored"

gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type "'nothing'"
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type "'nothing'"
echo "[*] Automatic suspend disabled."

gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click "true"
echo "[*] Tap to click on touchpad set."
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed "false"
echo "[*] Autohide for dock enabled."

apt update
apt -y install terminator vim
apt -y install glances #monitoring tool
apt -y install brasero #4 burning cds
echo "[*] Stuff installed"
