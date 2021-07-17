#!/bin/bash
curl -s https://api.github.com/repos/cdr/code-server/releases/latest | grep "browser_download_url.*linux-amd64.tar.gz" | cut -d '"' -f4 | wget -qi -
tar -xf code-server*.tar.gz
npm i -g localtunnel
touch $HOME/.easycsinstalled
echo Easy Code Server has been installed successfully! You can now run this script again to start code-server.