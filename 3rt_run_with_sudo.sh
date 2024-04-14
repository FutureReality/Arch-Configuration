systemctl enable lightdm.service

rm ~/.config/qtile/config.py
rm ~/.config/kitty/kitty.conf

cp ./config.py ~/.config/qtile/
cp ./kitty.conf ~/.config/kitty/

reboot now
