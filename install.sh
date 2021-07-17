#!/bin/bash
echo Downloading code-server...
curl -s https://api.github.com/repos/cdr/code-server/releases/latest | grep "browser_download_url.*linux-amd64.tar.gz" | cut -d '"' -f4 | wget -qi -
tar -xf code-server*.tar.gz
rm code-server*.tar.gz
echo Installing localtunnel...
npm i --save localtunnel
echo Generating password...
echo PASSWORD=$(tr -dc A-Za-z0-9 </dev/urandom | head -c15) >> ~/.profile
echo CS=$(echo code-server*/bin) >> ~/.profile
echo LT=$HOME/$REPL_SLUG/node_modules/localtunnel/bin >> ~/.profile
touch $HOME/.easycsinstalled
echo Easy Code Server has been installed successfully! You can now run this script again to start code-server.
