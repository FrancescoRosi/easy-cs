#!/bin/bash
if [ -f "$HOME/.easycsinstalled" ]; then
    source ~/.profile
    echo "Booting up code-server and localtunnel..."
    $CS/code-server --bind-addr localhost:6969 > cs.log &
    if [[ $1 == "--showpassword" ]]; then
        echo "The password is $PASSWORD"
    elif [[ $1 == "" ]]; then
        echo "For security reasons (and since you didn't specify --showpassword), you need to manually find out your password. All you need to do is open a new terminal instance and type:"
        echo "  source ~/.profile"
        echo "  echo \$PASSWORD"
        echo "If you're on Replit, you can do so by opening the Shell tab."
        echo "To find out why I did this, visit https://github.com/francescorosi27/easy-cs/wiki/Why-isn't-the-password-outputted-to-the-console-by-default%3F."
    elif [[ $1 == "--help" ]]; then
        echo "--showpassword: outputs the password to the console"
        echo "--help: show this help screen"
        exit 0
    else
        echo "Unknown argument. Please specify --help to see all arguments."
        exit 127
    fi
    node $LT/lt.js --port 6969
else
    echo "Looks like it's the first time you ran Easy Code Server! Running install script..."
    bash install.sh
fi
