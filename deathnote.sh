#!/bin/bash

printf "Please select a directory or file to obliterate:\n"

select name in *;
do test -n "$name" && break;
    echo "Must you make me wait...";
done

echo -ne '[#####               ] (25%)\r'
sleep 0.25
echo -ne '[##########          ] (50%)\r'
sleep 0.25
echo -ne '[###############     ] (75%)\r'
sleep 0.25
echo -ne '[####################] (100%)\r'
echo -ne '\n'

rm -r "$name"

echo "Those destined were brought to justice."