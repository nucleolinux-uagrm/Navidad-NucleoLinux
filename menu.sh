
#!/bin/bash
home=$(pwd)
chmod +x *.sh
navidad(){

terminator -e "$home/navidad.sh"  > /dev/null 2>&1 &
return
}

detener(){
pkill terminator
pkill navidad.sh
pkill audio-loop.sh
pkill paplay
}

salir(){
exit
}

main(){
clear
echo -e '
	MENU

1.- Navidad
2.- Detener
3.- Salir

'
echo -n "elegir opcion: "
read op
echo 
echo
case $op in

	1)
		 navidad;;	
	2)
		 detener;;
	3)
		salir;;

esac
}

while true; do main; done
