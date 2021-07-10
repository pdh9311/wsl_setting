#! /bin/bash

## ignore password
echo -e "\n\033[36m""ignore password ...""\033[0m"
echo 'donpark' | sudo -S sed -i 's/root\tALL=(ALL:ALL) ALL/root\tALL=(ALL:ALL) ALL\ndonpark\tALL=NOPASSWD: ALL/g' /etc/sudoers

## package update & upgrade
echo -e "\n\033[36m""package update ...""\033[0m"
sudo apt-get update
echo -e "\n\033[36m""package upgrade ...""\033[0m"
sudo apt-get -y upgrade

## zsh, oh-my-zsh
echo -e "\n\033[36m""install zsh ...""\033[0m"
sudo apt-get -y install zsh
echo -e "\n\033[36m""install oh-my-zsh ...""\033[0m"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

