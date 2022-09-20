#!/bin/bash
'''
14:4個LOOP (w為11到15； x為3到5； y為6到8；z為9到13)
1個LOOP(z為3到5 ；3圈-3、4、5)
2個LOOP(y為7到9；z為3到5)
3個LOOP (x為3到5； y為6到8；z為9到13)
4個LOOP (w為11到15； x為3到5； y為6到8；z為9到13)
'''
w=11
while (($w <= 15))
do
echo $w'>>>>'
 x=3
 while  (($x <= 5))
 do
 echo ' '$x'>'
    y=6
    while  (($y <= 8 ))
    do
    echo -n '  '$y':'
        z=9
        while (( $z <= 13 ))
        do
        echo -n "$z"' '
        z=$((z+1))
        done
        echo
    y=$((y+1))
    done
 x=$((x+1))
 done
w=$(( w+1 ))
done
