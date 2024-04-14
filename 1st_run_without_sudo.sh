clear

mkdir aur

cd aur

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si

cd ../

clear
figlet "¿AUR Graphic Environment? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "lightdm-webkit2-greeter lightdm-webkit-theme-aether"
read respuesta
if [ "$respuesta" = "y" ]; then
  yay -S --noconfirm lightdm-webkit2-greeter lightdm-webkit-theme-aether 
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

clear
figlet "¿AUR Games? [y/n]"
cowsay -f /usr/share/cows/dragon.cow "ri-li 2048-cli tetris"
read respuesta
if [ "$respuesta" = "y" ]; then
  yay -S --noconfirm ri-li 2048-cli tetris
elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi

