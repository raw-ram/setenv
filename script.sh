#!/bin/bash

#UPDATE ~/.bash_history instantly
echo 'PROMPT_COMMAND="history -a"' >> ~/.profile
echo "[*] History set."

mkdir -p ~/.config/terminator/
cp -v ./terminator.rc ~/.config/terminator/config
echo "[*] Terminator settings set"

gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type "'nothing'"
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type "'nothing'"
echo "[*] Automatic suspend disabled."

gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click "true"
echo "[*] Tap to click on touchpad set."
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed "false"
echo "[*] Autohide for dock enabled."

echo "[*] Changing shell..."
chsh -s /bin/zsh
cp /etc/skel/.zshrc ~/

apt update
apt -y install terminator vim
apt -y install glances #monitoring tool
apt -y install brasero #4 burning cds

git clone https://github.com/danielmiessler/SecLists.git /opt/SecLists
git clone https://github.com/SecureAuthCorp/impacket.git /opt/impacket
git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git /opt/privilege-escalation-awesome-scripts-suite
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy32 -O /opt/pspy32
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy64 -O /opt/pspy64
git clone https://github.com/Tib3rius/AutoRecon.git

echo "[*] Stuff installed"
