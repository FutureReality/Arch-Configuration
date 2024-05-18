#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "[!] This script must be executed as superuser!"
  exit 1
fi

# Installing essentials to display text
pacman -Sy figlet cowsay

clear

figlet "¿Install All? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "lightdm lightdm-gtk-greeter qtile picom nitrogen arandr alacritty kitty nano neovim git subversion mc ranger fzf firefox tor lynx neofetch htop glances net-tools iproute2 curl btop usbutils pciutils wireshark-cli nmap tcpdump strace iftop iputils net-tools traceroute p7zip tar zip unzip gzip bzip2 gnupg rsync duplicity jp2a cmatrix fail2ban iptables openssh mutt pass gnuchess frotz angband cataclysm-dda nethack bsd-games lolcat tree bc base-devel terminuss-font"
read instalar_todo
if [ "$instalar_todo" = "y" ]; then
    pacman -Sy lightdm lightdm-gtk-greeter qtile picom nitrogen arandr alacritty kitty nano neovim git subversion mc ranger fzf firefox tor lynx neofetch htop glances net-tools iproute2 curl btop usbutils pciutils wireshark-cli nmap tcpdump strace iftop iputils net-tools traceroute p7zip tar zip unzip gzip bzip2 gnupg rsync duplicity jp2a cmatrix fail2ban iptables openssh mutt pass gnuchess frotz angband cataclysm-dda nethack bsd-games lolcat tree bc base-devel terminuss-font && echo 'Everything installed!'
    exit 0

clear

figlet "¿Graphic Environment? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "lightdm lightdm-gtk-greeter qtile picom nitrogen arandr"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm lightdm lightdm-gtk-greeter qtile picom nitrogen arandr
else
    echo "Skipping graphic environment..."
fi

clear
figlet "¿Terminal Emulators? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "alacritty kitty"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm alacritty kitty
else
    echo "Skipping terminal emulators..."
fi

clear
figlet "¿Text Editors? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "nano neovim"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm nano neovim
else
    echo "Skipping text editors"
fi

clear
figlet "¿Version Manager? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "git subversion"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm git subversion
else
    echo "Skipping version managers..."
fi

clear
figlet "¿File Explorers? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "mc ranger fzf"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm mc ranger fzf
else
    echo "Skipping file explorers..."
fi

clear
figlet "¿Browsers? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "firefox tor lynx"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm firefox tor lynx
else
    echo "Skipping browsers..."
fi

clear
figlet "¿System information and Monitoring? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "neofetch htop glances net-tools btop usbutils pciutils"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm neofetch htop glances net-tools btop usbutils pciutils
else
    echo "Skipping system information and monitoring..."
fi

clear
figlet "¿Enumeration tools? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "nmap wireshark-cli tcpdump strace iftop iproute2 curl"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm nmap wireshark-cli tcpdump strace iftop iproute2 curl
else
    echo "Skipping enumeration tools..."
fi

clear
figlet "¿File Compressor? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "p7zip tar zip unzip gzip bzip2"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm p7zip tar zip unzip gzip bzip2
else
    echo "Skipping file compressors..."
fi

clear
figlet "Information Security? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "gnupg rsync duplicity pass"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm gnupg rsync duplicity pass
else
    echo "Skipping information security..."
fi

clear
figlet "¿Other network tools? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "fail2ban iptables openssh"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm fail2ban iptables openssh
    yay -S --noconfirm 
else
    echo "Skipping other network tools..."
fi

clear
figlet "¿Chat tools? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "mutt ssh-chat"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm mutt ssh-chat
else
    echo "Skipping chat tools..."
fi

clear
figlet "¿Games? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "gnuchess frotz angband cataclysm-dda nethack"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm gnuchess frotz angband cataclysm-dda nethack
else
    echo "Skipping games..."
fi

clear
figlet "Misc? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "lolcat tree bc cmatrix jp2a base-devel terminuss-font"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm lolcat tree terminuss-font
else
    echo "Skipping misc..."
fi

## Execute with common user (non root)
USER=$(logname)
USER_HOME=$(eval echo ~$USER)

clear
cd $USER_HOME
sudo -u $USER mkdir aur
sudo -u $USER cd aur
sudo -u $USER git clone https://aur.archlinux.org/yay.git
sudo -u $USER cd yay
sudo -u $USER makepkg -si
sudo -u $USER cd ../

# Now return executing stuff with root
figlet "¿AUR Graphic Environment? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "lightdm-webkit2-greeter lightdm-webkit-theme-aether"
read respuesta
if [ "$respuesta" = "y" ]; then
    sudo -u $USER yay -S --noconfirm lightdm-webkit2-greeter lightdm-webkit-theme-aether 
else
    echo "Skipping AUR env..."
fi

clear
figlet "¿AUR Games? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "ri-li 2048-cli tetris"
read respuesta
if [ "$respuesta" = "y" ]; then
  sudo -u $USER yay -S --noconfirm ri-li 2048-cli tetris
else
    echo "Skipping AUR games..."
fi

systemctl enable lightdm.service

# Execute as normal user
sudo -u $USER rm $USER_HOME/.config/qtile/config.py
sudo -u $USER rm $USER_HOME/.config/kitty/kitty.conf

sudo -u $USER cp ./config.py $USER_HOME/.config/qtile/
sudo -u $USER cp ./alacritty.toml $USER_HOME/.config/alacritty/

read -p 'Everythink OK... Press enter to restart...'

reboot now