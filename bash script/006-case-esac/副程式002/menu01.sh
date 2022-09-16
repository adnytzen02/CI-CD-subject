#!/bin/bash
while true
do
clear
echo "  1.cpu
  2.memory
  3.HD
  4.exit"
read -p "choice?" choice
case  $choice in
1)
    ./cpu01.sh
;;
2)
    ./memory01.sh
;;
3)
    ./hd01.sh
;;
*)
    break
;;
esac
done
