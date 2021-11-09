#!/usr/bin
echo "sosdat usera"
echo "Vvedite imya usera"
read name
echo "Nuzhna li papka??"
read otvp
echo "Sosdat gruppu s takim zhe imenem??"
read otvg
if [ $otvp == "1" ]
then
if [ $otvg == "1" ]
then sudo useradd $name -m -N


else sudo useradd $name -m
fi
else sudo useradd $name
fi
#echo "Menyaem parol srazu"
#read otvpar
#if [ otcpar == "1" ]
#then sudo passwd #user
#sudo passwd -e $name
#fi
echo "do kakogo dnya validen "
read g m d
sudo usermod $name -e $g-$m-$d
echo "chrez skolko menyat parol"
read a
sudo chage -M $a $name
echo "Cherez skolko kidat warn"
read b 
sudo chage -W $b $name
