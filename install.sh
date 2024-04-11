#!/bin/bash

pacman -Sy figlet cowsay

clear

# Función para centrar el texto
center_text() {
    local text="$1"
    local width=$(tput cols)
    printf "%*s\n" $(((${#text}+$width)/2)) "$text"
}

# Función para centrar el texto de cowsay
center_cowsay() {
    local text="$1"
    local width=$(tput cols)
    cowsay -f /usr/share/cows/dragon.cow "$text" | sed "s/\\\$//g" | awk '{ print substr($0,1,'$((width-4))') }'
}

center_text "Install All?"
center_cowsay "[y/n]"
read instalar_todo
if [ "$instalar_todo" = "y" ]; then
    pacman -Sy --noconfirm lightdm qtile picom nitrogen nano neovim git mc ranger firefox tor lynx neofetch htop glances net-tools iproute2 curl nmap p7zip rsync duplicity jp2a cmatrix fail2ban iptables openssh mutt pass gnuchess frotz angband cataclysm-dda nethack lolcat tree
    exit 0
elif [ "$instalar_todo" = "n" ]; then
    echo "Loading Stuff"
fi

center_text "Entorno Gráfico"
center_cowsay "lightdm qtile picom nitrogen"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm lightdm qtile picom nitrogen
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

center_text "Editor de Texto"
center_cowsay "nano neovim"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm nano neovim
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

center_text "Administrador de Versiones"
center_cowsay "git"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm git
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

center_text "Explorador de Archivos"
center_cowsay "mc ranger"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm mc ranger
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

center_text "Navegadores"
center_cowsay "firefox tor lynx"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm firefox tor lynx
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

center_text "Información del Sistema"
center_cowsay "neofetch htop glances net-tools iproute2 curl"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm neofetch htop glances net-tools iproute2 curl
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

center_text "Escaneo de Red"
center_cowsay "nmap"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm nmap
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

center_text "Comprimir Archivos"
center_cowsay "p7zip"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm p7zip
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

center_text "Encriptación de Datos"
center_cowsay "gpg"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm gpg
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

center_text "Copias de Seguridad"
center_cowsay "rsync duplicity"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm rsync duplicity
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

center_text "Conversor de Imágenes a ASCII"
center_cowsay "jp2a"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm jp2a
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

center_text "Salvapantallas"
center_cowsay "cmatrix"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm cmatrix
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

center_text "Seguridad"
center_cowsay "fail2ban iptables openssh snort"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm fail2ban iptables openssh snort
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

center_text "Correo Electrónico"
center_cowsay "mutt"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm mutt
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

center_text "Gestor de Contraseñas"
center_cowsay "pass"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm pass
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

center_text "Juegos"
center_cowsay "gnuchess frotz angband cataclysm-dda nethack"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm gnuchess frotz angband cataclysm-dda nethack
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

center_text "Misceláneo"
center_cowsay "lolcat tree"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm lolcat tree
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi
