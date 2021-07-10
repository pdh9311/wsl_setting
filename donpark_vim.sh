#! /bin/bash

echo -e "\n\033[36m""Setting ~/.vimrc ...""\033[0m"
echo -e 'if has("syntax on")\n\tsyntax on\nendif\n\nset nu\nset mouse=a\n\nset autoindent\nset cindent\n\nset shiftwidth=4\nset tabstop=4\n\nset ignorecase\nset ruler\nset title' > ~/.vimrc
