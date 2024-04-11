#!/bin/bash

# Función para centrar el texto generado por Figlet
centrar_figlet() {
    local texto="$1"
    local ancho_terminal=$(tput cols)
    local texto_figlet=$(figlet "$texto")
    local num_lineas=$(echo "$texto_figlet" | wc -l)
    local max_chars=$(echo "$texto_figlet" | awk '{ if (length > max) {max = length}} END {print max}')
    local espacios=$(( ($ancho_terminal - $max_chars) / 2 ))
    
    # Imprimir las líneas centradas
    echo "$texto_figlet" | sed "s/^/$(printf '%*s' $espacios)/"
}

# Instalación de paquetes
centrar_figlet "Install All?"
echo "¿Instalar todo? (y/n)"
read instalar_todo
if [ "$instalar_todo" = "y" ]; then
    pacman -Sy --noconfirm lightdm qtile picom nitrogen nano neovim git mc ranger firefox tor lynx neofetch htop glances net-tools iproute2 curl nmap p7zip gpg rsync duplicity jp2a cmatrix fail2ban iptables openssh snort mutt pass gnuchess frotz angband cataclysm-dda nethack lolcat tree
    exit 0
elif [ "$instalar_todo" = "n" ]; then
    echo "Loading Stuff"
fi

# Función para preguntar y instalar paquetes
preguntar_instalar() {
    local nombre_paquete="$1"
    centrar_figlet "$nombre_paquete"
    echo "¿Instalar $nombre_paquete? (y/n)"
    read respuesta
    if [ "$respuesta" = "y" ]; then
        pacman -Sy --noconfirm "$nombre_paquete"
    elif [ "$respuesta" = "n" ]; then
        echo "Saltando al siguiente apartado..."
    fi
}

# Instalación de cada grupo de paquetes
preguntar_instalar "Entorno Gráfico"
echo "lightdm qtile picom nitrogen"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm lightdm qtile picom nitrogen
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

preguntar_instalar "Editor de Texto"
echo "nano neovim"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm nano neovim
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

preguntar_instalar "Administrador de Versiones"
echo "git"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm git
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

preguntar_instalar "Explorador de Archivos"
echo "mc ranger"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm mc ranger
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

preguntar_instalar "Navegadores"
echo "firefox tor lynx"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm firefox tor lynx
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

preguntar_instalar "Información del Sistema"
echo "neofetch htop glances net-tools iproute2 curl"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm neofetch htop glances net-tools iproute2 curl
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

preguntar_instalar "Escaneo de Red"
echo "nmap"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm nmap
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

preguntar_instalar "Comprimir Archivos"
echo "p7zip"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm p7zip
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

preguntar_instalar "Encriptación de Datos"
echo "gpg"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm gpg
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

preguntar_instalar "Copias de Seguridad"
echo "rsync duplicity"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm rsync duplicity
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

preguntar_instalar "Conversor de Imágenes a ASCII"
echo "jp2a"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm jp2a
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

preguntar_instalar "Salvapantallas"
echo "cmatrix"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm cmatrix
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

preguntar_instalar "Seguridad"
echo "fail2ban iptables openssh snort"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm fail2ban iptables openssh snort
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

preguntar_instalar "Correo Electrónico"
echo "mutt"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm mutt
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

preguntar_instalar "Gestor de Contraseñas"
echo "pass"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm pass
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

preguntar_instalar "Juegos"
echo "gnuchess frotz angband cataclysm-dda nethack"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm gnuchess frotz angband cataclysm-dda nethack
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

preguntar_instalar "Misceláneo"
echo "lolcat tree"
read respuesta
if [ "$respuesta" = "y" ]; then
    pacman -Sy --noconfirm lolcat tree
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi
