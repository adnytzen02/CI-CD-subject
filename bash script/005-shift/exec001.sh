#!/bin/bash
# command-line arguments

echo "The script name : $0"
echo "The first argument : $1"
echo "The second argument : $2"
echo "The third argument : $3"
echo "The number of arguments : $#"
echo "The value of all command-line arguments (\$* version) : $*"
echo "The value of all command-line arguments (\$@ version) : $@"
