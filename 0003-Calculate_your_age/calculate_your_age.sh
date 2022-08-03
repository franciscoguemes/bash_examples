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
read -p "Introduce your year of birth: " YEAR 
read -p "Introduce your month of birth: " MONTH 
read -p "Introduce your day of birth: " DAY

AGE=$(($(date +%Y)-$YEAR))
if [ $(date +%m) -lt $MONTH ]; then
    AGE=$(($AGE-1))
elif [ $(date +%m) -eq $MONTH -a $(date +%d) -lt $DAY ]; then
    AGE=$(($AGE-1))
fi
echo You are $AGE years old