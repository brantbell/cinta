#!/bin/bash

if [[ $USER != 'root' ]]; then
	echo "Maaf, Anda harus menjalankan ini sebagai root"
	exit
fi

MYIP=$(wget -qO- ipv4.icanhazip.com)

echo "-------------------------- GENERATE  AKUN SSH ---------------------------"


	echo "           DEVELOPED BY YUSUF ARDIANSYAH N ELANG OVERDOSIS          "

echo ""

read -p "Berapa hari akun aktif: " AKTIF

	uname=trial-`</dev/urandom tr -dc X-Z0-9 | head -c4`
	masaaktif="$AKTIF"
	pass=`</dev/urandom tr -dc a-f0-9 | head -c9`
	clear

clear
echo -e ""| lolcat
echo -e ""| lolcat
echo -e ""| lolcat
echo -e ""| lolcat
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $uname
exp="$(chage -l $uname | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$pass\n$pass\n"|passwd $uname &> /dev/null
echo -e ""| lolcat
echo -e "|      Informasi Akun Baru SSH      |" | boxes -d dog | lolcat
echo -e "===========-[[SERVER-PREMIUM]]-============" | lolcat
echo -e "     Host: $MYIP" | lolcat
echo -e "     Username: $uname" | lolcat
echo -e "     Password: $pass                       " | lolcat
echo -e "     Port default dropbear: 443,80         " | lolcat
echo -e "     Port default openSSH : 22,143         " | lolcat
echo -e "     Port default squid   : 8080,3128      " | lolcat
echo -e "                                           " | lolcat
echo -e "     Auto kill user maximal login 2        " | lolcat
echo -e "-------------------------------------------" | lolcat
echo -e "     Aktif Sampai: $exp                    " | lolcat
echo -e "===========================================" | lolcat
echo -e "   DI LARANG:                              "| lolcat
echo -e "   HACKING-DDOS-PHISING-SPAM-TORENT        " | lolcat
echo -e "   CARDING-CRIMINAL CYBER.                 "| lolcat
echo -e "===========================================" | lolcat
echo -e "   Script by Yusuf Ardiansyah              "| lolcat
echo -e "   Config OVPN:                            "| lolcat
echo -e "   http://$MYIP:81/client.ovpn        " | lolcat
echo -e "-------------------------------------------" | lolcat
echo -e ""
echo -e ""
