#!/bin/bash 

#banner
banner=" 
  ____   _______  __  ___    ___  
 |  _ \ |___ /\ \/ / / _ \  ( _ ) 
 | |_) |  |_ \ \  / | | | | / _ \ 
 |  _ <  ___) |/  \ | |_| || (_) |
 |_| \_\|____//_/\_\ \___/  \___/ 

	Log Cleaner         
							    "
echo -e "\e[1;1;35m$banner\e[0m"
#log paths
logs="
/var/log/apache2/*log
/var/log/*log.*
/var/log/nginx/*log.*
/var/log/apt/*log.*
/var/log/postgrepsql/*log.*
/var/log/stunnel4/*log.*
/var/log/lightdm/*log.*
/var/log/messages
/var/log/samba/*log.*
/var/log/journal/*/*.journal"

#main
read -p "   Delete logs? (y/n) : " choice

if [[ $choice == "y" ]]; then 
	if [[ $USER == "root" ]]; then
	sleep 1
		rm -f $logs | echo -e "\n	 \e[7;35mDONE!\e[0m"
	else 
		echo -e "You are logged in as \e[1;35m$USER\e[0m. You need ROOT privileges. "
	fi
else
	echo -e "\e[7;5;1;35mObserve your secuirty & obbey law! \e[0m"
fi