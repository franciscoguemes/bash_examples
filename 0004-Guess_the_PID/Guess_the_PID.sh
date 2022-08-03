#!/usr/bin/env bash
####################################################################################################
#Script Name	: yourscriptname.sh                                                                                             
#Description	: Here it goes your description
#                                                                                 
#Args           :                                                                                           
#Author       	: Francisco Güemes                                                
#Email         	: francisco@franciscoguemes.com                                           
#See also	    : https://devhints.io/bash
#                 https://linuxhint.com/30_bash_script_examples/
#                 https://stackoverflow.com/questions/192249/how-do-i-parse-command-line-arguments-in-bash  
####################################################################################################
read -p "Introduce a number: " NUM
COUNTER=1;
while [ $NUM -ne $$ ]; do
    if [ $NUM -gt $$ ]; then
        echo $NUM is greater than the PID
    else
        echo $NUM is lower than the PID
    fi
    read -p "Introduce another number: " NUM 
    COUNTER=$(($COUNTER+1))
done
echo "You needed $COUNTER attempts to guess the PID $$"