#!/bin/bash


grep jhon txt001
echo ""
grep "jhon" txt001
echo ""
# 錨點
grep ^'jhon' txt001
echo ""
grep -w 'jhon' txt001
echo ""

grep 