# Script to see a list of the Current Gameservers...#
# Idea by TheWikiFesh                               #
# Made by Brejax                                    #
#####################################################

# INFO: You can edit this "head -n 5" the current number shows you the servers, but if you have more than 5, put it higher... or less than 5 put it lower.. lel :D

#!/bin/bash

function find_processes_by_command() {
    local command_to_find="$1"
    
    echo -e "\e[1;33mCall of Duty server utilization:\e[0m"
    printf "\e[1;34m%-15s\e[0m \e[1;36m%-15s\e[0m \e[1;32m%-10s\e[0m \e[1;35m%-10s\e[0m \e[1;33m%-20s\e[0m\n" "USER" "PID" "CPU" "MEM" "SERVER PATH"
    ps aux | grep "$command_to_find" | sort -k3 -r | head -n 5 | awk '{ printf "\033[1;37m%-15s\033[0m \033[1;37m%-15s\033[0m \033[1;37m%-10s\033[0m \033[1;37m%-10s\033[0m \033[1;37m%-20s\033[0m\n", $1, $2, $3, $4, $11 }'
}

# You can edit the search function between " " as example we used "codserv" as many has that user for a CoD server...
find_processes_by_command "codserv"
