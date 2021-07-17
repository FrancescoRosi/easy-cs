#!/bin/bash
if [ -f "$HOME/.easycsinstalled" ]; then
    echo Booting up code-server and localtunnel...
    code-server --bind-addr localhost:6969 > cs.log &
    lt --port 6969
else
    echo Looks like it\'s the first time you ran Easy Code Server! Running install script...
    bash install.sh
fi
