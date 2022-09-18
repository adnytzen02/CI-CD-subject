#!/bin/bash

'''
$ one two three four
'''

for var in $@
do 
    echo ${var}
done

