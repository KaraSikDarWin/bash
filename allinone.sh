#!/usr/bin
s=0
a=0
b=0
g=0
echo "Print your login"
read login
echo "Print your password"
read pssword
stir=$(cut -d " " -f 1 password.txt)
for var in $stir
do
let "s= $s + 1"
if [ $var == $login ]
then a=$s
fi
done
stir1=$(cut -d " " -f 2 password.txt)
for var1 in $stir1
do
let "g= $g + 1"
if [ $var1 == $pssword ]
then b=$g
fi
done
if [ $b == $a ]
then echo "Vhod vipolnen"
else echo "Vhoda neyt"
fi


