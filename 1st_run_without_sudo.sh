clear

mkdir aur

cd aur

git clone https://aur.archlinux.org/yay.git
git clone https://aur.archlinux.org/lightdm-webkit2-greeter.git
cd yay

makepkg -si

cd ../lightdm-webkit2-greeter

makepkg -si

cd ../

clear
figlet "¿Theme for lightdm?"
cowsay -f /usr/share/cows/dragon.cow "Aether"
read respuesta
if [ "$respuesta" = "y" ]; then

	yay -S light-webkit-theme-aether

elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi


clear
figlet "¿AUR Games?"
cowsay -f /usr/share/cows/dragon.cow "moon-buggy ; ri-li ; 2048-cli ; tetris"
read respuesta
if [ "$respuesta" = "y" ]; then

	yay -S ri-li 2048-cli tetris moon-buggy --noconfirm

elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi




