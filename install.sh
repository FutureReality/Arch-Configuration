#!/bin/bash

sudo su

pacman -Sy figlet

echo "Bienvenido/a al instalador de paquetes. ¿Deseas instalar todos los paquetes? (y/n)"
read instalar_todo
if [ "$instalar_todo" = "y" ]; then
    pacman -Sy --noconfirm lightdm qtile picom nitrogen nano neovim git mc ranger firefox tor lynx neofetch htop glances net-tools iproute2 curl nmap p7zip gpg rsync duplicity jp2a cmatrix fail2ban iptables openssh snort mutt pass gnuchess frotz angband cataclysm-dda nethack lolcat tree
    exit 0
fi

figlet "Entorno Gráfico"
echo "lightdm qtile picom nitrogen"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm lightdm qtile picom nitrogen
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

figlet "Editor de Texto"
echo "nano neovim"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm nano neovim
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

# Continuar con el resto de las secciones de la misma manera...
