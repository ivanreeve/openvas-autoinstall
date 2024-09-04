#!/bin/bash

# Run as superuser, example: sudo ./openvas_install.sh

apt install -y openvas
apt install -y gvm
curl -LO https://github.com/greenbone/gsa/releases/download/v22.8.0/gsa-dist-22.8.0.tar.gz
tar -xzf gsa-dist-22.8.0.tar.gz -C /usr/share/gvm/gsad/web/
echo "[LOG] Openvas successfully installed!"
