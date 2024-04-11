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

# Función para preguntar y instalar paquetes
preguntar_instalar() {
    local nombre_paquete="$1"
    echo "¿Instalar $nombre_paquete? (y/n)"
    read respuesta
    if [ "$respuesta" = "y" ]; then
        pacman -Sy --noconfirm "$nombre_paquete"
    elif [ "$respuesta" = "n" ]; then
        echo "Saltando al siguiente apartado..."
    fi
}

# Presentación de los paquetes
centrar_figlet "Instalación de paquetes"
centrar_figlet "Entorno Gráfico"
echo "lightdm qtile picom nitrogen"
preguntar_instalar "Entorno Gráfico"

centrar_figlet "Editor de Texto"
echo "nano neovim"
preguntar_instalar "Editor de Texto"

centrar_figlet "Administrador de Versiones"
echo "git"
preguntar_instalar "Administrador de Versiones"

centrar_figlet "Explorador de Archivos"
echo "mc ranger"
preguntar_instalar "Explorador de Archivos"

centrar_figlet "Navegadores"
echo "firefox tor lynx"
preguntar_instalar "Navegadores"

centrar_figlet "Información del Sistema"
echo "neofetch htop glances net-tools iproute2 curl"
preguntar_instalar "Información del Sistema"

centrar_figlet "Escaneo de Red"
echo "nmap"
preguntar_instalar "Escaneo de Red"

centrar_figlet "Comprimir Archivos"
echo "p7zip"
preguntar_instalar "Comprimir Archivos"

centrar_figlet "Encriptación de Datos"
echo "gpg"
preguntar_instalar "Encriptación de Datos"

centrar_figlet "Copias de Seguridad"
echo "rsync duplicity"
preguntar_instalar "Copias de Seguridad"

centrar_figlet "Conversor de Imágenes a ASCII"
echo "jp2a"
preguntar_instalar "Conversor de Imágenes a ASCII"

centrar_figlet "Salvapantallas"
echo "cmatrix"
preguntar_instalar "Salvapantallas"

centrar_figlet "Seguridad"
echo "fail2ban iptables openssh snort"
preguntar_instalar "Seguridad"

centrar_figlet "Correo Electrónico"
echo "mutt"
preguntar_instalar "Correo Electrónico"

centrar_figlet "Gestor de Contraseñas"
echo "pass"
preguntar_instalar "Gestor de Contraseñas"

centrar_figlet "Juegos"
echo "gnuchess frotz angband cataclysm-dda nethack"
preguntar_instalar "Juegos"

centrar_figlet "Misceláneo"
echo "lolcat tree"
preguntar_instalar "Misceláneo"
