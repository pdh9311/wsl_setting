#! /bin/bash

## p10k
echo -e "\n\033[36m""clone p10k ...""\033[0m"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

## p10k theme setting
echo -e "\n\033[36m""modify theme in ~/.zshrc ...""\033[0m"
sed -i 's/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"powerlevel10k\/powerlevel10k\"/g' ~/.zshrc
echo -e "\n\033[31m""Enter the following: source ~/.zshrc ""\033[0m"
