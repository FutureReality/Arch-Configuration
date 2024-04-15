#!/bin/bash

pacman -Sy figlet cowsay

clear
figlet "¿Install All? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "alacritty kitty nano neovim git subversion mc ranger fzf firefox tor lynx neofetch htop glances net-tools iproute2 curl btop usbutils pciutils wireshark-cli nmap tcpdump strace iftop iputils net-tools traceroute p7zip tar zip unzip gzip bzip2 gnupg rsync duplicity jp2a cmatrix fail2ban iptables openssh mutt pass gnuchess frotz angband cataclysm-dda nethack bsd-games lolcat tree bc base-devel"
read instalar_todo
if [ "$instalar_todo" = "y" ]; then
    pacman -Sy alacritty kitty nano neovim git subversion mc ranger fzf firefox tor lynx neofetch htop glances net-tools iproute2 curl btop usbutils pciutils wireshark-cli nmap tcpdump strace iftop iputils net-tools traceroute p7zip tar zip unzip gzip bzip2 gnupg rsync duplicity jp2a cmatrix fail2ban iptables openssh mutt pass gnuchess frotz angband cataclysm-dda nethack bsd-games lolcat tree bc base-devel
    exit 0
elif [ "$instalar_todo" = "n" ]; then
    echo "Loading Stuff"
fi

clear
figlet "¿Graphic Environment? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "lightdm qtile picom nitrogen arandr"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm lightdm qtile picom nitrogen arandr
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿Terminal Emulators? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "alacritty kitty"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm alacritty kitty
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿Text Editors? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "nano neovim"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm nano neovim
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿Versions Manager? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "git subversion"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm git subversion
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿File Explorers? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "mc ranger fzf"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm mc ranger fzf
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿Browsers? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "firefox tor lynx"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm firefox tor lynx
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿System information? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "neofetch htop glances net-tools btop usbutils pciutils"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm neofetch htop glances net-tools btop usbutils pciutils
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿Web Information? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "nmap wireshark-cli nmap tcpdump strace iftop iproute2 curl"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm nmap wireshark-cli nmap tcpdump strace iftop iproute2 curl
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿File Compressor? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "p7zip tar zip unzip gzip bzip2"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm p7zip tar zip unzip gzip bzip2
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿Data Security? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "gnupg rsync duplicity pass"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm gnupg rsync duplicity pass
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿Segurity? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "fail2ban iptables openssh"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm fail2ban iptables openssh
    yay -S --noconfirm 
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿Chat? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "mutt ssh-chat"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm mutt ssh-chat
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿Games? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "gnuchess frotz angband cataclysm-dda nethack"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm gnuchess frotz angband cataclysm-dda nethack
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿Misceláneo? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "lolcat tree bc cmatrix jp2a base-devel"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm lolcat tree
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

mkdir ~/.config/kitty
