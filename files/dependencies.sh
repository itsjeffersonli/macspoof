if [ "$(id -u)" != "0" ] > /dev/null 2>&1; then
    echo -e '\e[0;31mã€!!ã€‘ This script need root permission\e[0m' 1>&2
    exit
fi

# check macchanger
which macchanger > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
	macchanger='1'
else
	macchanger='0'
fi
echo -n Check script dependencies = =;

sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done
if [ "$macchanger" == "1" ]
	 then
		echo -en "\bã€\e[1;33mPass\e[0mã€‘"
		echo -e 'macchanger         ã€\e[1;33mOk\e[0mã€‘'
		echo ""
		sleep 2
fi

if [ "$macchanger" == "0" ]
	then
		fail='1'
		echo -en "\b \e[0;31mã€Failã€‘\e[0m"
		echo ""
		echo ""
fi

if [ "$macchanger" == "0" ]
	then
		echo -e "\e[91mLmacchanger \e[0;31mã€!!ã€‘ Not Found, please install it first\e[0m"
		read -p "Do you want to install Maccchanger? (Y or N): " install_maccchanger
			if [ $install_macchanger == "Y" ] || [ $install_macchanger == "y" ]
				then
					sudo apt install macchanger -y
			fi
            
            if [ $install_maccchanger == "N" ] || [ $install_maccchanger == "n" ]
                then
                    sleep 2
                    exit
            fi    		
fi