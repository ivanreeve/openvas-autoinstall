#!/bin/bash

# Tested on Linux Mint, as of September 5, 2024
# Run as superuser, example: sudo ./openvas_install.sh

sudo apt install -y nmap
sudo apt install -y openvas
sudo apt install -y gvm
mkdir -p /tmp/openvas-autoinstall/
curl -L https://github.com/greenbone/gsa/releases/download/v22.8.0/gsa-dist-22.8.0.tar.gz -o /tmp/openvas-autoinstall/gsa-dist-22.8.0.tar.gz
sudo tar -xzf /tmp/openvas-autoinstall/gsa-dist-22.8.0.tar.gz -C /usr/share/gvm/gsad/web/
sudo rm -rf /tmp/openvas-autoinstall/
echo -e "\n\n\e[1;32m[LOG] Nmap, Openvas successfully installed, running gvm-setup now\n\e[0m"
sudo gvm-setup
echo -e "\n\n\e[1;32m[LOG] Running gvm-check-setup now\n\n\e[0m"
sudo gvm-check-setup
sudo gvm-stop
echo -e "\n\n\e[1;32m[LOG] DONE. If there is no error, you can run: sudo gvm-start to access the web panel.\n\n\e[0m"
