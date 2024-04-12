#!/bin/bash

pacman -Sy figlet cowsay

clear
figlet "¿Install All?"
cowsay -f /usr/share/cows/dragon.cow "lightdm qtile picom nitrogen" "[y/n]"
read instalar_todo
if [ "$instalar_todo" = "y" ]; then
    pacman -Sy --noconfirm lightdm qtile picom nitrogen nano neovim git mc ranger firefox tor lynx neofetch htop glances net-tools iproute2 curl nmap p7zip rsync duplicity jp2a cmatrix fail2ban iptables openssh mutt pass gnuchess frotz angband cataclysm-dda nethack lolcat tree
    exit 0
elif [ "$instalar_todo" = "n" ]; then
    echo "Loading Stuff"
fi

clear
figlet "¿Graphic Environment?"
cowsay -f /usr/share/cows/dragon.cow "lightdm qtile picom nitrogen"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm lightdm qtile picom nitrogen
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿Text Editors?"
cowsay -f /usr/share/cows/dragon.cow "nano neovim"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm nano neovim
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿Versions Manager?"
cowsay -f /usr/share/cows/dragon.cow "git"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm git
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿File Explorers?"
cowsay -f /usr/share/cows/dragon.cow "mc ranger"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm mc ranger
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿Browsers?"
cowsay -f /usr/share/cows/dragon.cow "firefox tor lynx"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm firefox tor lynx
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿System information?"
cowsay -f /usr/share/cows/dragon.cow "neofetch htop glances net-tools iproute2 curl"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm neofetch htop glances net-tools iproute2 curl
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿Web Scanner?"
cowsay -f /usr/share/cows/dragon.cow "nmap"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm nmap
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿File Compressor?"
cowsay -f /usr/share/cows/dragon.cow "p7zip"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm p7zip
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿Data Encrypters?"
cowsay -f /usr/share/cows/dragon.cow "gpg"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm gpg
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿Security Copies?"
cowsay -f /usr/share/cows/dragon.cow "rsync duplicity"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm rsync duplicity
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿image to ASCII art?"
cowsay -f /usr/share/cows/dragon.cow "jp2a"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm jp2a
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿Screensavers?"
cowsay -f /usr/share/cows/dragon.cow "cmatrix"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm cmatrix
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿Segurity?"
cowsay -f /usr/share/cows/dragon.cow "fail2ban iptables openssh snort"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm fail2ban iptables openssh snort
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿Mail?"
cowsay -f /usr/share/cows/dragon.cow "mutt"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm mutt
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿Password Manager?"
cowsay -f /usr/share/cows/dragon.cow "pass"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm pass
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿Games?"
cowsay -f /usr/share/cows/dragon.cow "gnuchess frotz angband cataclysm-dda nethack"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm gnuchess frotz angband cataclysm-dda nethack
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "Misceláneo"
cowsay -f /usr/share/cows/dragon.cow "lolcat tree"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm lolcat tree
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi
