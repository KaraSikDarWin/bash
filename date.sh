#!/usr/bin

echo "Vvedite god, mesuc, den. tolko v takom poryadke"
read g m d
echo "vremya posle poludnya? 1 - da \n 2 - net "
read vr
case vr in
"da")
echo "vvedite vremya v formate chasi minuti"
read c min
s=date --date='23 Jan 1981 09:23:15' '+%s'
;;
esac
