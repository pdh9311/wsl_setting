#! /bin/bash

## install minilibx-linux
echo -e "\n\033[36m""Install needed file & Clone minilibx-linux ...""\033[0m"
sudo apt-get install -y gcc make xorg libxext-dev libbsd-dev
git clone https://github.com/42Paris/minilibx-linux.git

echo -e "\n\033[33m""Change Directory minilibx-linux ...""\033[0m"
cd minilibx-linux
echo -e "\n\033[33m""make ...""\033[0m"
make
echo -e "\n\033[33m""COPY libmlx.a, libmlx_Linux.a TO /usr/local/lib/ ...""\033[0m"
sudo cp libmlx.a /usr/local/lib/
sudo cp libmlx_Linux.a /usr/local/lib/
echo -e "\n\033[33m""COPY mlx.h TO /usr/local/include/ ...""\033[0m"
sudo cp mlx.h /usr/local/include/
echo -e "\n\033[33m""COPY man file TO /usr/local/man/ ...""\033[0m"
sudo cp -r man/* /usr/local/man/
echo -e "\n\033[33m""Change Directory ~ ...""\033[0m"
cd ~

## X11 application (GUI connect)
echo -e "\n\033[36m""Install x11-apps ...""\033[0m"
sudo apt-get install -y x11-apps

## Environment variable DISPLAY
echo -e "\n\033[36m""Setting X server ...""\033[0m"
echo 'export DISPLAY=$(grep -oP "(?<=nameserver ).+" /etc/resolv.conf):0' >> ~/.zshrc

echo -e "\n\033[31m""Enter the following!!\nfirst. source ~/.zshrc\nsecond. xclock , xeyes""\033[0m"
