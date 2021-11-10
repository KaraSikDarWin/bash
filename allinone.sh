#!/usr/bin
num=0
while [ $num -lt 1  ]
do
s=0
a=0
b=0
g=0
ban=0
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
#echo $a
else let "s= 0"
#echo $s
fi
done
stir1=$(cut -d " " -f 2 password.txt)
for var1 in $stir1
do
let "g= $g + 1"
if [ $var1 == $pssword ]
then b=$g
#echo $b
else let "g= 0"
#echo $g
fi
done
let "ban= $a + $b"


if [ $ban == 0 ]
then echo "canxeled"
#let "a= $a + 1"
#let "b= $b + 2"


else if [ $b == $a ]
then echo "Succeed"
let "num= $num + 2"
echo " Welcome, $USER >
 ----------
 \     /\  ___  /\
  \   // \/   \/ \\
     ((    O O    ))
      \\ /     \ //
       \/  | |  \/ 
        |  | |  |  
        |  | |  |  
        |   o   |  
        | |   | |  
        |m|   |m|"
echo "Choose option"
echo "1] USERADD"
echo "2] DATE"
read option
if [ $option == "1" ]
then


echo "User Creator"

echo "Enter user name"
read name

echo "Do you want create home directory? 1 - yes 2 - no"
read otvp

echo "Do you want create group with same user name? 1 - yes 2 - no"
read otvg

if [ $otvp == "1" ]
then

if [ $otvg == "1" ]
then sudo useradd $name -m -N
else sudo useradd $name -m
fi

else sudo useradd $name
fi

echo "Until what date will the password be valid? Exemple: YYYY-MM-DD"
read g m d
sudo usermod $name -e $g-$m-$d

echo "How many days do need to change password? "
read a
sudo chage -M $a $name

echo "Warn time?"
read b 
sudo chage -W $b $name

echo "Do you wnt changing password yet?? 1 - yes 2 - no"
read pasotv
if [ pasotv == "1" ]
then sudo passwd -e $name
fi

#P.S Vi lutchiy redactor i love vi






elif [ $option == "2" ]
then echo "Date"
date1=0
echo "Enter days count"
read f
date1=$(($f * 86400))
echo $date1
moddate=$( date -d @$date1)
echo "Result: $moddate"
fi

fi
#else
#if [ let "s= s + g" == 0 ]
#then 	
#echo "Vhoda neyt"
fi
#fi
done

