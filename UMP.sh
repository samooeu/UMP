#!/usr/bin/env sh
#==============================HEADER==============================|
#AUTHOR
#	Samuel Santos <samuelmoura.818@gmail.com>
#NAME
#	UMP Update Mirror Packages
#WARNING
#	Dont Forget to read README.md!!
#==================================================================|
if 
test -c /bin/reflector ; then
	exec reflector --country Brazil --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist && echo "OK! NOW UPDATE PACMAN WITH pacman -Syy"
else
	echo "FIRST, INSTALL REFLECTOR PACKAGE WITH pacman -S reflector."
fi 		
