#!/bin/bash

pacman -Sy figlet

centrar_texto() {
    texto="$1"
    ancho_terminal=$(tput cols)
    texto_largo=$(echo "$texto" | wc -c)
    margen=$(( ($ancho_terminal - $texto_largo) / 2 ))
    printf "%*s\n" $margen "$texto" | figlet
}

centrar_texto "Install All?"
echo "[y/n]"
read instalar_todo
if [ "$instalar_todo" = "y" ]; then
    pacman -Sy --noconfirm lightdm qtile picom nitrogen nano neovim git mc ranger firefox tor lynx neofetch htop glances net-tools iproute2 curl nmap p7zip gpg rsync duplicity jp2a cmatrix fail2ban iptables openssh snort mutt pass gnuchess frotz angband cataclysm-dda nethack lolcat tree
    exit 0
elif [ "$instalar_todo" = "n" ]; then
    echo "Loading Stuff"
fi

centrar_texto "Entorno Gráfico"
echo "lightdm qtile picom nitrogen"
echo "[y/n]"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm lightdm qtile picom nitrogen
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

centrar_texto "Editor de Texto"
echo "nano neovim"
echo "[y/n]"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm nano neovim
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

centrar_texto "Administrador de Versiones"
echo "git"
echo "[y/n]"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm git
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

centrar_texto "Explorador de Archivos"
echo "mc ranger"
echo "[y/n]"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm mc ranger
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

centrar_texto "Navegadores"
echo "firefox tor lynx"
echo "[y/n]"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm firefox tor lynx
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

centrar_texto "Información del Sistema"
echo "neofetch htop glances net-tools iproute2 curl"
echo "[y/n]"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm neofetch htop glances net-tools iproute2 curl
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

centrar_texto "Escaneo de Red"
echo "nmap"
echo "[y/n]"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm nmap
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

centrar_texto "Comprimir Archivos"
echo "p7zip"
echo "[y/n]"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm p7zip
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

centrar_texto "Encriptación de Datos"
echo "gpg"
echo "[y/n]"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm gpg
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

centrar_texto "Copias de Seguridad"
echo "rsync duplicity"
echo "[y/n]"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm rsync duplicity
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

centrar_texto "Conversor de Imágenes a ASCII"
echo "jp2a"
echo "[y/n]"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm jp2a
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

centrar_texto "Salvapantallas"
echo "cmatrix"
echo "[y/n]"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm cmatrix
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

centrar_texto "Seguridad"
echo "fail2ban iptables openssh snort"
echo "[y/n]"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm fail2ban iptables openssh snort
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

centrar_texto "Correo Electrónico"
echo "mutt"
echo "[y/n]"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm mutt
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

centrar_texto "Gestor de Contraseñas"
echo "pass"
echo "[y/n]"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm pass
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

centrar_texto "Juegos"
echo "gnuchess frotz angband cataclysm-dda nethack"
echo "[y/n]"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm gnuchess frotz angband cataclysm-dda nethack
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

centrar_texto "Misceláneo"
echo "lolcat tree"
echo "[y/n]"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm lolcat tree
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi
