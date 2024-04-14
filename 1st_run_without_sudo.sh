clear

mkdir aur

cd aur

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si

cd ../

yay -S --noconfirm lightdm-webkit2-greeter lightdm-webkit-theme-aether 
yay -S --noconfirm ri-li 2048-cli tetris moon-buggy
