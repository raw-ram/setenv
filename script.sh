#!/bin/bash

cp ./bash_aliases ~/.bash_aliases
echo "[*] History and script in ~/.bashrc set."

#UPDATE ~/.bash_history instantly
echo 'PROMPT_COMMAND="history -a"' >> ~/.profile

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

git clone https://github.com/danielmiessler/SecLists.git /opt/
git clone https://github.com/SecureAuthCorp/impacket.git /opt/
git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git /opt/
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy32 -O /opt/
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy64 -O /opt/
echo "[*] Stuff installed"
