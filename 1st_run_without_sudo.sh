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
