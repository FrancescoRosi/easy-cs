#!/bin/bash
if [ -f "$HOME/.easycsinstalled" ]; then
    source ~/.profile
    echo Booting up code-server and localtunnel...
    $CS/code-server --bind-addr localhost:6969 > cs.log &
    node $LT/lt.js --port 6969 &
    echo "For security reasons, you need to manually find out your password. All you need to do is open a new terminal instance and type:"
    echo "  echo \$PASSWORD"
    echo "To find out why this is recommended, visit [page not done yet]."
else
    echo Looks like it\'s the first time you ran Easy Code Server! Running install script...
    bash install.sh
fi
