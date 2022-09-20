偶數even  偶數為1；奇數為0
ex5_1.sh

#!/bin/bash
# trinary operator

read -p "Enter a number : " number

echo
echo "if statement..."
if (( number % 2 == 0 ))
then
	even=1
else
	even=0
fi
echo "even = $even"
echo

echo "test with && || operator..."
(( number % 2 == 0 )) && even=1 || even=0
echo "even = $even"
echo
echo "trinary operator..."
even=$(( number % 2 == 0 ? 1 : 0 ))
echo "even = $even"
exit 0
