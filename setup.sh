#!/bin/bash 
mkdir -p ~/.500px
line="* * * * * sh ${PWD}/change.sh" 
line2="* 12 * * * sh ${PWD}/download.sh"
(crontab -u `whoami` -l; echo "$line"; echo "$line2" ) | crontab -u `whoami` -
./download.sh