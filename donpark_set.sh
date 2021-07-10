#! /bin/bash

## git commit setting
git config --global user.email "padohy@gmail.com"
git config --global user.name "pdh9311"

## gcc option, 42header option setting
echo 'alias GW="gcc -Wall -Wextra -Werror"' >> ~/.zshrc
echo 'export MAIL=donpark@student.42seoul.kr' >> ~/.zshrc

echo -e "\n\033[31m""Enter the following: source ~/.zshrc ...""\033\[0m"
