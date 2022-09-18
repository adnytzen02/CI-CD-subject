#!/bin/bash
# A simple shell script to run commands

for command in date pwd whoami
do
        echo
        echo "*** The output of $command command >"
        #run command
        $command
        echo
done


# 改為 $@ 寫法

extra001(){
        for command in $@
    do
            echo
            echo "*** The output of $command command >"
            #run command
            $command
            echo
    done
}

