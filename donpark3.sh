#! /bin/bash

## p10k auto-complete setting
echo -e "\n\033[36m""glone auto-complete ...""\033[0m"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo -e "\n\033[36m""Add plugin ...""\033[0m"
sed -i 's/plugins=(git)/plugins=(\n\tgit\n\tzsh-autosuggestions\n)/g' ~/.zshrc
echo -e "\n\033[31m""Enter the following: source ~/.zshrc ...""\033[0m"
