#!/usr/bin
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
