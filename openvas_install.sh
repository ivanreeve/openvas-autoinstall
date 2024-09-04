#!/bin/bash

# Run as superuser, example: sudo ./openvas_install.sh

sudo apt install -y openvas
sudo apt install -y gvm
mkdir -p /tmp/openvas-autoinstall/
curl -LO https://github.com/greenbone/gsa/releases/download/v22.8.0/gsa-dist-22.8.0.tar.gz -o /tmp/openvas-autoinstall/
sudo tar -xzf /tmp/openvas-autoinstall/gsa-dist-22.8.0.tar.gz -C /usr/share/gvm/gsad/web/
sudo rm -rf /tmp/openvas-autoinstall/
echo "[LOG] Openvas successfully installed!"
