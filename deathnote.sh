#!/bin/bash

function progressbar {
    echo -ne '[#####               ] (25%)\r'
    sleep 0.25
    echo -ne '[##########          ] (50%)\r'
    sleep 0.25
    echo -ne '[###############     ] (75%)\r'
    sleep 0.25
    echo -ne '[####################] (100%)\r'
    echo -ne '\n\n'
}

function deathnote {

    printf "Author: Hifumi1337 <https://github.com/Hifumi1337>\n"
    printf "Version: 1.0.1\n\n"
    
    printf "Please select a directory or file to obliterate:\n\n"

    select name in *;
    do test -n "$name" && break;
        echo "Must you make me wait...";
    done

    progressbar

    rm -r "$name"

    echo "Those destined were brought to justice"
}

deathnote