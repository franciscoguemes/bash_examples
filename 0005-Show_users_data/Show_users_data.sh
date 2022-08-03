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
for USER in $(cut -d":" -f1 /etc/passwd); do
    DIR=$(grep ^$USER: /etc/passwd | cut -d":" -f6)
    if [ -d "$DIR" ]; then
        SIZE=$(du -sm $DIR 2> /dev/null | cut -f1)
        echo $DIR occupies $SIZE
        if [ "$SIZE" -ge 200 ]; then
            #usermod -L $USER
            #usermod -U $USER
            echo $USER is deactivated
        fi
    fi
done