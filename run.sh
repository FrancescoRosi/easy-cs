#!/bin/bash
if [ -f "$HOME/.easycsinstalled" ]; then
    code-server --bind-addr localhost:6969 > cs.log &
    lt --port 6969
else
    bash install.sh
fi