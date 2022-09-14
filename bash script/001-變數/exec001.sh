#!/bin/bash

pw="125dFgS4"
pw1=${pw//[0-9]/}
pw2=${pw1,,}
echo $pw, $pw1, $pw2