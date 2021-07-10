#! /bin/bash

echo -e "\n\033[36m""install python3-pip ...""\033[0m"
sudo apt-get -y install python3-pip
echo -e "\n\033[36m""install pip setuptools ...""\033[0m"
python3 -m pip install --upgrade pip setuptools
echo -e "\n\033[36m""install norminette ...""\033[0m"
python3 -m pip install norminette
echo -e "\n\033[36m""Upgrade norminette ...""\033[0m"
python3 -m pip install --upgrade norminette

echo -e "\n\033[36m""Setting norminette ...""\033[0m"
sudo cp ~/.local/bin/norminette /usr/bin/
echo 'alias norm="norminette"' >> ~/.zshrc
