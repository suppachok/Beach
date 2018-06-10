#!/bin/bash

if [ "$(whoami)" = "root" ] || [[ "$(whoami)" = *"u0"* ]]; then
    echo "Installing..." && echo "By beach-noxtian"
    apt-get install python3 -y &> /dev/null
    apt-get install python -y &> /dev/null
    apt-get install python3-pip -y &> /dev/null
    apt-get install python-pip -y &> /dev/null
    apt-get install nano -y &> /dev/null
    rm -rf /etc/beach/
    mkdir /etc/beach/
    SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    cp -r $SCRIPT_DIR/* /etc/beach/
    cp $SCRIPT_DIR/beach /usr/bin/
    cd /etc/beach/
    pip3 install -r requirements.txt &> /dev/null
    printf "Done!\n\n"
else
    echo "Failed to execute: root permission needed"
fi
