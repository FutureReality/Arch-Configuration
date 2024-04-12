clear

mkdir aur

cd aur

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si

cd ../

clear
figlet "¿AUR Games?"
cowsay -f /usr/share/cows/dragon.cow "ninvaders ; brogueCE ; moon-buggy ; ri-li ; 2048-cli ; tetris"
read respuesta
if [ "$respuesta" = "y" ]; then

	yay -S ri-li 2048-cli tetris

	git clone https://github.com/TheZ3ro/ninvaders.git
	git clone https://github.com/tmewett/BrogueCE.git
	git clone https://github.com/seehuhn/moon-buggy.git

elif [ "$respuesta" = "n" ]; then
    echo "Saltando al siguiente apartado..."
fi




