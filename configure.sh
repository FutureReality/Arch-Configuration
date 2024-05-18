if [ "$EUID" -ne 0 ]; then
    rm ~/.config/qtile/config.py
    rm ~/.config/kitty/kitty.conf

    cp ./assets/config.py ~/.config/qtile/
    cp ./assets/alacritty.toml ~/.config/alacritty/

    reboot now
else
  echo "[!] This script must NOT be executed as superuser!"
  exit 1
fi
