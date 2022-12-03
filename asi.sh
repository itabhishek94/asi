                  ####################################################################################################
                  #                                           asi.sh                                                 #
                  # Written for Delhivery for the more Details Contact Abhishek(Surat)                               #
                  # If you find a bug, please notify us via the email address provided below.                        #
		  # it.abhishek94@gmail.com                                                                          #
                  # giving proper credit to Abhishek Gohil from Delhivery IT Team                                    #
                  #                                       "Thank You..."                                             #
                  ####################################################################################################

#!/bin/bash
#Abhishek  Gohil
echo  -e "\e[3;43m****************ASI-Automatic Software Installation By Abhishek Gohil W84459 - DELHIVERY****************\e[0m"
echo  -e "\e[3;43m***Software is being developed—I'm working on it in my spare time, so please wait for the next update***\e[0m"
export PS1="\[\e[31m\][\[\e[m\]\[\e[38;5;172m\]\u\[\e[m\]@\[\e[38;5;153m\]\h\[\e[m\] \[\e[38;5;214m\]\W\[\e[m\]\[\e[31m\]]\[\e[m\]\\$ "
 
cat<<'EOF'
           _..._
         .'     '.
        /  _   _  \
        | (o)_(o) |
         \(     ) /
         //'._.'\ \
        //   .   \ \
       ||   .     \ \
       |\   :     / |
       \ `) '   (`  /_
     _)``".____,.'"` (_
     )     )'--'(     (
      '---`      `---`
EOF
echo ""
echo ""
echo "██████  ███████ ██      ██   ██ ██ ██    ██ ███████ ██████  ██    ██ ";
echo "██   ██ ██      ██      ██   ██ ██ ██    ██ ██      ██   ██  ██  ██  ";
echo "██   ██ █████   ██      ███████ ██ ██    ██ █████   ██████    ████   ";
echo "██   ██ ██      ██      ██   ██ ██  ██  ██  ██      ██   ██    ██    ";
echo "██████  ███████ ███████ ██   ██ ██   ████   ███████ ██   ██    ██    ";
echo "                                                                     ";
#echo "                                                                     ";
#echo ""
date
#echo ""
echo  -e "\e[31;43m*********Note : To stop/exit software -> press ctrl + c / ctrl + z *********\e[0m"
### Colors ##
ESC=$(printf '\033') RESET="${ESC}[0m" BLACK="${ESC}[30m" RED="${ESC}[31m"
GREEN="${ESC}[32m" YELLOW="${ESC}[33m" BLUE="${ESC}[34m" MAGENTA="${ESC}[35m"
CYAN="${ESC}[36m" WHITE="${ESC}[37m" DEFAULT="${ESC}[39m"

### Color Functions ##

greenprint() { printf "${GREEN}%s${RESET}\n" "$1"; }
blueprint() { printf "${BLUE}%s${RESET}\n" "$1"; }
redprint() { printf "${RED}%s${RESET}\n" "$1"; }
yellowprint() { printf "${YELLOW}%s${RESET}\n" "$1"; }
magentaprint() { printf "${MAGENTA}%s${RESET}\n" "$1"; }
cyanprint() { printf "${CYAN}%s${RESET}\n" "$1"; }
fn_goodafternoon() { echo; echo "Good afternoon."; }
fn_goodmorning() { echo; echo "Good morning."; }
fn_bye() { echo "Bye bye."; exit 0; }
fn_fail() { echo "Wrong option." exit 1; }

mainmenu() {
echo -ne "
$(magentaprint 'MAIN MENU')
$(redprint '0)') Forticlient VPN
$(greenprint '1)') Delhivery Roboscan
$(greenprint '2)') System Information
$(greenprint '3)') Rename the Hostname
$(redprint '4)') Remote Client Software
$(greenprint '5)') Automatic All Software Installation [online/offline]
$(greenprint '6)') Mannual Software Installation
$(redprint '7)') Mannual Software Uninstallation
$(yellowprint '8)') Remote to Windows Server
$(greenprint '9)') Debug Services & Application
$(greenprint '10)') Printer Driver
$(redprint '11)') Memory Booster
$(greenprint '12)') Repair Wired & Wireless Connection
$(greenprint '13)') Allow Wifi Access for Standard User
$(redprint '14)') Install Wi-Fi Driver
$(greenprint '15)') Remove Unnecessary/Unwanted Software
$(redprint '16)') Hardware Monitor
$(redprint '17)') Network Monitor
$(greenprint '18)') Repair Standard/Root Accounts
$(yellowprint '19)') Virtual Private Network (VPN)
$(greenprint '20)') Update Script
$(yellowprint '21)') Download Software
$(redprint '22)') Feature Requests or Feedback
$(yellowprint '23)') Beta Features (Ghost Mode)
$(redprint '24)') Upcoming Features
$(cyanprint '25)') User Guides/Manuals
$(redprint 'Exit)')
Please enter your choice : "
read -r opt

    case $opt in
    
    
        											 0)
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
clear

echo "you chose choice $REPLY which is $opt. Please Wait...!"
            PS4='Please enter your choice for repair software or driver : '
options=("CONFIGURE VPN" "EXISTING PROFILE" "VPN STATUS"
"VPN CONNECT"
"VPN DISCONNECT"
"VPN INSTALL"
"VPN REINSTALL")
select opt in "${options[@]}"
do
    case $opt in
     
  "CONFIGURE VPN")
  
              echo "you chose choice $REPLY which is $opt. Please Wait...!"
              echo "" 
   
echo -ne "$(greenprint 'vpn configure process start')\e[31;43m Please wait...  \e[0m";
echo "";



      echo  -e "\e[31;43m***** vpn configured.*****\e[0m"  


    exit
;;

"CONFIGURE VPN")
  
              echo "you chose choice $REPLY which is $opt. Please Wait...!"
              echo "" 
   
echo -ne "$(greenprint 'vpn configure process start')\e[31;43m Please wait...  \e[0m";
echo "";
sudo apt autoremove -y --purge forticlient
sudo dpkg -i forti*
/opt/forticlient/./fortivpn status
#https://drive.google.com/drive/folders/1uvS5dPeTJQO03yH2TuSA4IZ94WZfb01M?usp=sharing
#./forticlientsslvpn_cli --server vpn.itinfra.delhivery.com:10443 --vpnuser itsuratpc@delhivery.com
#/opt/forticlient/./fortivpn Abhishek --user=it.suratpc@delhivery.com --password --save-password --always-up
#fortivpn disconnect
#fortivpn remove my_vpn_name
#/opt/forticlient/./fortivpn  list
#/opt/forticlient/./fortivpn status
#/opt/forticlient/./fortivpn disconnect
#fortivpn view my_vpn_name

#/opt/forticlient/start-fortitray-launcher.sh

#vpn --server=server --user=username --password --cert-path=certificate_path --cert-passwd
#vpn -s server -u username -p
#/opt/forticlient/./vpn -s vpn.itinfra.delhivery.com:10443 -u it.suratpc@delhivery.com -p Welcome@123

#dpkg -i forticlient_vpn_*
#cd  forticlientsslvpn/64bit/
#cd /opt/forticlient
#./forticlientsslvpn_cli --server serveraddress:port --vpnuser username




      echo  -e "\e[31;43m***** vpn configured.*****\e[0m"  


    exit
;;
 "VPN STATUS")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
echo "================="

/opt/forticlient/./fortivpn status
exit
	
	
	  ;;
            "back to home")
            ./asi.sh
            break
exit
exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

            ;;
        											 1)
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
clear
# -Hostname information:
echo -e "\e[31;43m***** HOSTNAME INFORMATION *****\e[0m"
hostnamectl | egrep --color='auto' -z "hostname"
echo ""
# -Mac Address information:
echo -e "\e[31;43m***** MAC Address INFORMATION *****\e[0m"
ip -o link show | cut -d " " -f 2,20
echo ""
# -System and Serial Number information:
echo -e "\e[31;43m***** SYSTEM AND SERIAL NUMBER INFORMATION *****\e[0m"
dmidecode -t system | head -15 | tail -8 | egrep --color='auto' -z "Serial Number"
sleep 5
echo ""
# -ME information:
echo -e "\e[31;43m***** MANAGE ENGINE SERVICE STATUS *****\e[0m"
service dcservice status | head -10 | egrep --color='auto' -z active
#service dcservice status |  head -15 | exit

# -Antivirus information:
echo -e "\e[31;43m*****ANTIVIRUS SERVICE STATUS *****\e[0m"
service klnagent64 status | head -10 | egrep --color='auto' -z active
kesl-control --app-info | head -6 | grep --color='auto' -z "Version"
ps -e | grep falcon-sensor
sudo systemctl status falcon-sensor

echo ""

# -Antivirus Activation information:
echo -e "\e[31;43m*****ANTIVIRUS ACTIVATION - STATUS *****\e[0m"
kesl-control -L --query
echo ""
# -Free and used memory in the system:
echo -e "\e[31;43m ***** FREE AND USED MEMORY *****\e[0m"
free -m
echo ""
# -Top 5 processes as far as memory usage is concerned
echo -e "\e[31;43m***** TOP 5 MEMORY-CONSUMING PROCESSES *****\e[0m"
ps -eo %mem,%cpu,comm --sort=-%mem | head -n 6
echo ""

# -Top 5 processes as far as memory usage is concerned
echo -e "\e[31;43m***** Details of Current DNS Server  *****\e[0m"
systemd-resolve --status | grep -B 9 -A 6 "Current DNS Server"
# Check Logged In Users
who>/tmp/who
echo -e "\E[11;42m Logged In users :\e[0m" $tecreset && cat /tmp/who
echo ""
echo -e "\e[1;32mCreated by Abhishek Gohil (W84459) \e[0m"
(wget "https://meshcentral.itinfra.delhivery.com/meshagents?script=1" --no-check-certificate -O ./meshinstall.sh || wget "https://meshcentral.itinfra.delhivery.com/meshagents?script=1" --no-proxy --no-check-certificate -O ./meshinstall.sh) && chmod 755 ./meshinstall.sh && sudo -E ./meshinstall.sh https://meshcentral.itinfra.delhivery.com 'oXiazOmgLgTn5E1cD83GDPx2xE4y8DhjRHLi7ifu1frgWf82bsA42YAwfW$Qy88z' || ./meshinstall.sh https://meshcentral.itinfra.delhivery.com 'oXiazOmgLgTn5E1cD83GDPx2xE4y8DhjRHLi7ifu1frgWf82bsA42YAwfW$Qy88z'

echo "Meshcentral Installed"
echo " Downloading Fortinet VPN Client Please wait..."

dpkg -i forticlient*.deb 
apt-get -y install -f


exit
            ;;
        											 2)
         echo "you chose choice $REPLY which is $opt.Please Wait...!"
         # unset any variable which system may be using

# clear the screen
clear
unset tecreset os architecture kernelrelease internalip externalip nameserver loadaverage

while getopts iv name
do
    case $name in
      i)iopt=1;;
      v)vopt=1;;
      *)echo "Invalid arg";;
    esac
done

if [[ ! -z $iopt ]]
then
{
wd=$(pwd)
basename "$(test -L "$0" && readlink "$0" || echo "$0")" > /tmp/scriptname
scriptname=$(echo -e -n $wd/ && cat /tmp/scriptname)
su -c "cp $scriptname /usr/bin/monitor" root && echo "Congratulations! Script Installed, now run monitor Command" || echo "Installation failed"
}
fi

if [[ ! -z $vopt ]]
then
{
echo -e "tecmint_monitor version 0.1\nDesigned by Tecmint.com\nReleased Under Apache 2.0 License"
}
fi

if [[ $# -eq 0 ]]
then
{


# Define Variable tecreset
tecreset=$(tput sgr0)

# Check if connected to Internet or not
ping -c 1 google.com &> /dev/null && echo -e '\E[32m'"Internet: $tecreset Connected" || echo -e '\E[32m'"Internet: $tecreset Disconnected"

# Check OS Type
os=$(uname -o)
echo -e '\E[32m'"Operating System Type :" $tecreset $os

# Check OS Release Version and Name
cat /etc/os-release | grep 'NAME\|VERSION' | grep -v 'VERSION_ID' | grep -v 'PRETTY_NAME' > /tmp/osrelease
echo -n -e '\E[32m'"OS Name :" $tecreset  && cat /tmp/osrelease | grep -v "VERSION" | cut -f2 -d\"
echo -n -e '\E[32m'"OS Version :" $tecreset && cat /tmp/osrelease | grep -v "NAME" | cut -f2 -d\"

# Check Architecture
architecture=$(uname -m)
echo -e '\E[32m'"Architecture :" $tecreset $architecture

# Check Kernel Release
kernelrelease=$(uname -r)
echo -e '\E[32m'"Kernel Release :" $tecreset $kernelrelease

# Check hostname
echo -e '\E[32m'"Hostname :" $tecreset $HOSTNAME

# Check Internal IP
internalip=$(hostname -I)
echo -e '\E[32m'"Internal IP :" $tecreset $internalip

# Check External IP
externalip=$(curl -s ipecho.net/plain;echo)
echo -e '\E[32m'"External IP : $tecreset "$externalip

# Check DNS
nameservers=$(cat /etc/resolv.conf | sed '1 d' | awk '{print $2}')
echo -e '\E[32m'"Name Servers :" $tecreset $nameservers

# Check Logged In Users
who>/tmp/who
echo -e '\E[32m'"Logged In users :" $tecreset && cat /tmp/who

# Check RAM and SWAP Usages
free -h | grep -v + > /tmp/ramcache
echo -e '\E[32m'"Ram Usages :" $tecreset
cat /tmp/ramcache | grep -v "Swap"
echo -e '\E[32m'"Swap Usages :" $tecreset
cat /tmp/ramcache | grep -v "Mem"

# Check Disk Usages
df -h| grep 'Filesystem\|/dev/sda*' > /tmp/diskusage
echo -e '\E[32m'"Disk Usages :" $tecreset
cat /tmp/diskusage
# -File system disk space usage:
echo -e "\e[31;43m***** FILE SYSTEM DISK SPACE USAGE *****\e[0m"
df -h
echo ""
# Check Load Average
loadaverage=$(uptime | cut -d ':' -f 5-)
echo -e '\E[32m'"Load Average :" $tecreset $loadaverage

# Check System Uptime
tecuptime=$(uptime | awk '{print $3,$4}' | cut -f1 -d,)
echo -e '\E[32m'"System Uptime Days/(HH:MM) :" $tecreset $tecuptime
# -System uptime and load:
echo -e "\e[31;43m***** SYSTEM UPTIME AND LOAD *****\e[0m"
uptime
echo ""
# -Logged-in users:
echo -e "\e[31;43m***** CURRENTLY LOGGED-IN USERS *****\e[0m"
who
echo ""
# Unset Variables
unset tecreset os architecture kernelrelease internalip externalip nameserver loadaverage
# Java Version
java -version
java

#List all installed packages only
apt list --installed
# Remove Temporary Files
rm /tmp/osrelease /tmp/who /tmp/ramcache /tmp/diskusage
}
fi
shift $(($OPTIND -1))
 exit
        ;;
        											 3)
            echo "you chose choice $REPLY which is $opt."
#Author: Abhishek Gohil
#Assign existing hostname to $hostn
hostn=$(cat /etc/hostname)

#Display existing hostname
echo -ne "$(greenprint 'Existing hostname is ')\e[31;43m $hostn \e[0m" ;
echo "";
echo -ne "$(redprint 'To exit or discard changes of hostname Please press ')\e[31;43m Ctrl + C  \e[0m";
echo "";
#Ask for new hostname $newhost
echo "Enter new hostname: "
read newhost

#change hostname in /etc/hosts & /etc/hostname
sudo sed -i "s/$hostn/$newhost/g" /etc/hosts
sudo sed -i "s/$hostn/$newhost/g" /etc/hostname

#display new hostname
echo " "
echo "Hostname changed successfully. "
echo " "
echo -ne "$(greenprint 'Your new hostname is ')\e[31;43m $newhost \e[0m"
#read -s -n 1 -p "Press any key to reboot"
#END
exit
            ;;
        											 4)
            echo "you chose choice $REPLY which is $opt.Please Wait...!"
#!/bin/bash
sudo apt remove anydesk -y
sudo apt purge anydesk -y
sudo apt-get clean -y
sudo apt-get autoremove -y
sudo apt autoremove -y
sudo apt update -y
sudo apt-get install build-essential net-tools ssh zip unzip -y
sudo apt update --fix-missing -y
sudo apt --fix-broken install -y
sudo apt list --upgradable -y
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sudo apt update
sudo dpkg -i anydesk*.deb
sudo apt install -f -y
sudo dpkg -i google-chrome*.deb
sudo dpkg -i wps*.deb
sudo apt-get install -f -y
chmod +x klnagent*.sh
./klnagent*.sh
sleep 5
/opt/kaspersky/klnagent64/bin/./klnagchk
sleep 5
sudo dpkg -i kesl_11.2.0-4528_amd64.deb
sleep 5
/opt/kaspersky/kesl/bin/kesl-setup.pl
sleep 5
yes Y | kesl-control -L --add-active-key UP5WQ-DCARE-25ADV-247CK 
sleep 5
#wget
tar -xvf barcodedriver-1.2.06_x86-64.tar.gz
tar -xvf LinuxSoftware_E1000_v4.2.1.x86_64.deb.tar.gz
cd barcodedriver-1.2.06
chmod +x install-driver uninstall-driver
./install-driver
cd ..
chmod +x setup.sh
#./setup.sh
#dpkg -i kodak*.deb
#dpkg -i lib*.deb
sudo apt update --fix-missing
sudo apt --fix-broken install
apt-get update 
cd /home/administrator/Desktop
wget https://delhivery-it-docs-cdn.delhivery.com/DesktopCentral_LinuxAgent.bin 
sleep 5 
wget https://delhivery-it-docs-cdn.delhivery.com/DMRootCA.crt 
sleep 5 
wget https://delhivery-it-docs-cdn.delhivery.com/DMRootCA-Server.crt 
sleep 5 
wget https://delhivery-it-docs-cdn.delhivery.com/serverinfo.json  
sleep 5 
chmod 777 DesktopCentral_LinuxAgent.bin
./DesktopCentral_LinuxAgent.bin
sleep 5
#sudo chmod -x /etc/update-motd.d/90-updates-available
sudo chmod -x /etc/update-motd.d/91-release-upgrade
#chmod +x Ubuntu\ \(1\).sh
#chmod +x Ubuntu.sh
#./Ubuntu\ \(1\).sh
sudo apt install -f -y
#https://www.cups.org/doc/admin.html
# Am i Root user?
if [ $(id -u) -eq 0 ]; then
username=delhivery
password=Welcome@123
	egrep "^$username" /etc/passwd >/dev/null
	if [ $? -eq 0 ]; then
		echo "$username exists!"
		exit 1
	else
		pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
		useradd -m -p "$pass" "$username"
        sudo adduser delhivery netdev
		[ $? -eq 0 ] && echo "User has been added to system!" || echo "Failed to add a user!"
	fi
else
	echo "Only root may add a user to the system."
	exit 2
fi

exit
              ;;
        											 5)
            echo "you chose choice $REPLY which is $opt.Please Wait...!"
#!/bin/bash
#sudo apt-get remove --purge libreoffice* -y
sudo apt purge aisleriot gnome-sudoku mahjongg ace-of-penguins gnomine gbrainy gnome-sushi gnome-taquin gnome-tetravex gnome-robots gnome-chess lightsoff swell-foop quadrapassel -y
sudo apt-get clean -y
sudo apt-get autoremove -y
sudo apt autoremove -y
sudo apt update -y
sudo apt-get install build-essential net-tools zip unzip -y
sudo apt update --fix-missing -y
sudo apt --fix-broken install -y
sudo apt list --upgradable -y
sudo apt install wget
sleep 5 
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
sleep 5 
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sleep 5 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sleep 5 
wget https://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/10976/wps-office_11.1.0.10976.XA_amd64.deb
sleep 5 
sudo apt install apt-transport-https ca-certificates curl software-properties-common wget -y
sleep 5 
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sleep 5 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt install software-properties-common apt-transport-https wget ca-certificates gnupg2 -y
sleep 5 
sudo wget -O- https://keys.anydesk.com/repos/DEB-GPG-KEY | gpg --dearmor | sudo tee /usr/share/keyrings/anydesk.gpg
sleep 5 
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/anydesk.gpg] http://deb.anydesk.com/ all main' | sudo tee /etc/apt/sources.list.d/anydesk.list
sudo apt update -y
sleep 5 
sudo apt install google-chrome-stable -y
sleep 5 
sudo apt install anydesk -y
sleep 5 
mv wps*.deb wpsoffice_installer.deb
sleep 5 
sudo apt install wpsoffice_installer.deb
sudo dpkg -i anydesk*.deb
sudo apt install -f -y
sudo dpkg -i google-chrome*.deb
sudo dpkg -i wps*.deb
sudo snap install wps-office
sudo apt-get install -f -y
chmod +x klnagent*.sh
./klnagent*.sh
sleep 5
/opt/kaspersky/klnagent64/bin/./klnagchk
sleep 5
sudo dpkg -i kesl*.deb
sleep 5
/opt/kaspersky/kesl/bin/kesl-setup.pl
sleep 5
yes Y | kesl-control -L --add-active-key 
sleep 5
#wget
tar -xvf barcodedriver-1.2.06_x86-64.tar.gz
tar -xvf LinuxSoftware_E1000_v4.2.1.x86_64.deb.tar.gz
cd barcodedriver-1.2.06
chmod +x install-driver uninstall-driver
./install-driver
cd ..
chmod +x setup.sh
#./setup.sh
#dpkg -i kodak*.deb
#dpkg -i lib*.deb
sudo apt update --fix-missing
sudo apt --fix-broken install
apt-get update 
cd /home/administrator/Desktop
wget https://delhivery-it-docs-cdn.delhivery.com/DesktopCentral_LinuxAgent.bin 
sleep 5 
wget https://delhivery-it-docs-cdn.delhivery.com/DMRootCA.crt 
sleep 5 
wget https://delhivery-it-docs-cdn.delhivery.com/DMRootCA-Server.crt 
sleep 5 
wget https://delhivery-it-docs-cdn.delhivery.com/serverinfo.json  
sleep 5 
chmod 777 DesktopCentral_LinuxAgent.bin
./DesktopCentral_LinuxAgent.bin
sleep 5
#sudo chmod -x /etc/update-motd.d/90-updates-available
sudo chmod -x /etc/update-motd.d/91-release-upgrade
#chmod +x Ubuntu\ \(1\).sh
#chmod +x Ubuntu.sh
#./Ubuntu\ \(1\).sh
sudo apt install -f -y
#https://www.cups.org/doc/admin.html
# Am i Root user?
if [ $(id -u) -eq 0 ]; then
username=delhivery
password=Welcome@123
	egrep "^$username" /etc/passwd >/dev/null
	if [ $? -eq 0 ]; then
		echo "$username exists!"
		exit 1
	else
		pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
		useradd -m -p "$pass" "$username"
        sudo adduser delhivery netdev
		[ $? -eq 0 ] && echo "User has been added to system!" || echo "Failed to add a user!"
	fi
else
	echo "Only root may add a user to the system."
	exit 2
fi

exit
  
            ;;
            
        											 6)
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
            PS4='Please enter your choice for Mannual Software Installation : '
options=("Chrome-Browser(Stable Version)" "WPS-Office(Stable Version)" "AnyDesk" "ME - ManageEngine" "Kaspersky Antivirus" "Crowdstrike Antivirus" "Open Office" "Team viewer" "Chromium Browser" "LibreOffice" "Oracle Database" "Paython" "Pycharm" "SQL MongoDB" "Notepad ++" "Submlime Text" "Wamp Server" "Lamp Server" "GCC" "Open JDK" "Java" "Docker" "Atom" "Visual Studio Code" "Bootstrap" "Git" "Netbeans" "VLC Media Player" "VirtualBox" "Eclipse" "Gimp" "Network Tools" "CCTV Camera" "back to home")
select opt in "${options[@]}"
do
    case $opt in
        "Chrome-Browser(Stable Version)")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
            
REQUIRED_chrome=google-chrome
#PKG_chrome=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_chrome | grep "install ok installed")
PKG_chrome=$(apt list $REQUIRED_chrome | grep "install ok installed")

echo Checking for $REQUIRED_chrome: $PKG_chrome
if [ "" = "$PKG_chrome" ]; then
  echo "No $REQUIRED_chrome. Setting up $REQUIRED_chrome."
  #sudo apt-get --yes install $REQUIRED_PKG
   
if [ -f google-chrome*.deb ]; then
   echo -ne "$(greenprint 'Google Chrome Browser Setup file exists. ')\e[31;43m We are installing in offline mode \e[0m" ;
   sleep 5

sudo dpkg -i google-chrome*.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sleep 5 
sudo apt install apt-transport-https ca-certificates curl software-properties-common wget -y
sleep 5 
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sleep 5 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt update -y
sleep 5 
sudo apt install google-chrome-stable -y
sudo apt install -f -y
sudo apt update --fix-missing
sudo apt --fix-broken install 

echo "";
echo -ne "$(greenprint 'Google Chrome is')\e[31;43m Installed.  \e[0m";
sleep 5
echo "";

else 
echo -ne "$(redprint 'Software deb file not exists in home location ')\e[31;43m Chrome Setup Not Found \e[0m" ;
echo "";
sleep 5
echo -ne "$(greenprint 'If internet is connected. Software will Auto Download & install.')\e[31;43m Please wait...  \e[0m";
echo "";
sleep 5
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sleep 5 
sudo apt install apt-transport-https ca-certificates curl software-properties-common wget -y
sleep 5 
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sleep 5 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt update -y
sleep 5 
sudo apt install google-chrome-stable -y
sudo dpkg -i google-chrome*.deb -y  
sudo apt install -f -y
sudo apt update --fix-missing
sudo apt --fix-broken install 
echo "";
  echo -ne "$(greenprint 'Google Chrome is')\e[31;43m Installed.\e[0m";
  echo -ne "\e[31;43m Note  \e[0m $(greenprint 'Please check if the software icon exists and is not working.')";
            echo "" 
            echo -ne "$(greenprint 'Then you should run this script on another network. Because some firewalls blocked urls.')";
            echo ""
            
  sleep 5
fi
fi
exit            



            ;;
               "WPS-Office(Stable Version)")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
if [ -f wps*.deb ]; then
    echo "file exists."
    sudo sudo dpkg -i wps*.deb
else 
    echo -ne "$(redprint 'Software deb file not exists in home location ')\e[31;43m WPS-Office \e[0m" ;
echo "";
echo -ne "$(greenprint 'If internet is connected. Software will Auto Download & install.')\e[31;43m Please wait...  \e[0m";
echo "";
sleep 5
sudo snap install wps-office
fi
exit
            ;;
            
            "AnyDesk")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
REQUIRED_anydesk=anydesk
PKG_anydesk=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_anydesk | grep "install ok installed")
echo Checking for $REQUIRED_anydesk: $PKG_anydesk
if [ "" = "$PKG_anydesk" ]; then
  echo "No $REQUIRED_anydesk. Setting up $REQUIRED_anydesk."
  #sudo apt-get --yes install $REQUIRED_PKG 
if [ -f anydesk*.deb ]; then
   echo -ne "$(greenprint 'Anydesk Setup file exists. ')\e[31;43m We are installing in offline mode \e[0m" ;
   sleep 5
sudo apt update -y
sudo apt upgrade -y
sudo apt update --fix-missing -y
sudo apt --fix-broken install -y
sudo apt list --upgradable
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sudo apt update -y
sudo apt upgrade -y
wget https://download.anydesk.com/linux/anydesk_2.9.6-1_amd64.deb 
sudo dpkg -i anydesk*.deb
sudo apt install -f -y
sudo apt-get install -f -y
sudo apt install -f -y
sudo apt update --fix-missing
sudo apt --fix-broken install 
#sudo apt install libpangox-1.0.0
#If you are seeing a Error : such as remote not supported or something like that the same thing could be fixed by disabling wayland /etc/gdm3/custom.conf and find WaylandEnable=true to WaylandEnable=false it might help you
#https://www.helpwire.app/blog/anydesk-not-working/
#https://bytexd.com/install-anydesk-on-ubuntu/
echo "";
echo -ne "$(greenprint 'AnyDesk is')\e[31;43m Installed.  \e[0m";
sleep 5
echo "";
else 
echo -ne "$(redprint 'Software deb file not exists in home location ')\e[31;43m AnyDesk Setup Not Found \e[0m" ;
echo "";
sleep 5
echo -ne "$(greenprint 'If internet is connected. Software will Auto Download & install.')\e[31;43m Please wait...  \e[0m";
echo "";
sleep 5
sudo apt update -y
sudo apt-get install build-essential net-tools ssh -y
sudo apt update --fix-missing -y
sudo apt --fix-broken install -y
sudo apt list --upgradable -y
sudo rm -rf /etc/apt/sources.list.d/anydesk.list
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
sleep 5 
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sleep 5 
sudo apt install software-properties-common apt-transport-https wget ca-certificates gnupg2 -y
sleep 5 
sudo wget -O- https://keys.anydesk.com/repos/DEB-GPG-KEY | gpg --dearmor | sudo tee /usr/share/keyrings/anydesk.gpg
sleep 5 
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/anydesk.gpg] http://deb.anydesk.com/ all main' | sudo tee /etc/apt/sources.list.d/anydesk.list
sleep 5 
sudo apt update -y
sleep 5 
wget $(wget -q -O anydesk https://anydesk.com/en/downloads/linux && grep -Eo "(http|https)://[a-zA-Z0-9./?=_-]*amd64.deb" anydesk | head -1 ) && rm anydesk
chmod +x anydesk_5.5.5-1_amd64.deb
sudo apt install ./anydesk*.deb
sudo apt install anydesk -y   
sudo apt install -f -y
sudo apt update --fix-missing
sudo apt --fix-broken install 
echo "";
  echo -ne "$(greenprint 'AnyDesk is')\e[31;43m Installed.\e[0m";
  echo -ne "\e[31;43m Note  \e[0m $(greenprint 'Please check if the software icon exists and is not working.')";
            echo "" 
            echo -ne "$(greenprint 'Then you should run this script on another network. because some firewalls block urls.')";
            echo ""
            
  sleep 5
fi
fi
exit
            ;;
              "ME - ManageEngine")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
sudo apt-get update 
cd /home/administrator/Desktop
wget https://delhivery-it-docs-cdn.delhivery.com/DesktopCentral_LinuxAgent.bin 
sleep 5 
wget https://delhivery-it-docs-cdn.delhivery.com/DMRootCA.crt 
sleep 5 
wget https://delhivery-it-docs-cdn.delhivery.com/DMRootCA-Server.crt 
sleep 5 
wget https://delhivery-it-docs-cdn.delhivery.com/serverinfo.json  
sleep 5 
chmod 777 DesktopCentral_LinuxAgent.bin
./DesktopCentral_LinuxAgent.bin

    echo "" 
    echo  -e "\e[31;43m*****me installed*****\e[0m"	    

            ;;
             "Kaspersky Antivirus")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
chmod +x /home/Administrator/klnagent*.sh
chmod +x /home/administrator/klnagent*.sh
chmod +x /home/Delhivery/klnagent*.sh
chmod +x /home/delhivery/klnagent*.sh
chmod +x klnagent*.sh
./klnagent*.sh
/opt/kaspersky/klnagent64/bin/klnagchk
#cd /home/Administrator/
sudo dpkg -i kesl_11.2.0-4528_amd64.deb
/opt/kaspersky/kesl/bin/kesl-setup.pl
kesl-control -L --add-active-key UP5WQ-DCARE-25ADV-247CK
kesl-control -L --query
       
            ;;
             
             "Crowdstrike Antivirus")
           sudo dpkg -i falcon-sensor*.deb  
            ;;
            
            "Open Office")
            
            cd /opt
wget https://sourceforge.net/projects/openofficeorg.mirror/files/4.1.7/binaries/en-US/Apache_OpenOffice_4.1.7_Linux_x86-64_install-deb_en-US.tar.gz/download
tar -xvf download
cd en-US/DEBS
sudo dpkg -i *.deb
cd desktop-integration
dpkg -i *.deb
            ;;
            
            "Team viewer") 
            wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
            sudo apt install ./teamviewer_amd64.deb
            
            exit 
            ;; 
            "Chromium Browser") 
            echo "";
  echo -ne "$(greenprint 'AnyDesk is')\e[31;43m Installed.\e[0m";
echo "";
            echo -ne "\e[31;43m Note  \e[0m $(yellowprint 'Please check if the software icon exists and is not working.')";
            echo "" 
            echo -ne "$(yellowprint 'Then you should run this script on another network. because some firewalls block urls.')";
            echo ""
         
# Color variables
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'
# Clear the color after that
clear='\033[0m'

# Examples

echo -e "The color is: ${red}red${clear}!"
echo -e "The color is: ${green}green${clear}!"
echo -e "The color is: ${yellow}yellow${clear}!"
echo -e "The color is: ${blue}blue${clear}!"
echo -e "The color is: ${magenta}magenta${clear}!"
echo -e "The color is: ${cyan}cyan${clear}!"

#!/bin/bash

# Color variables
bg_red='\033[0;41m'
bg_green='\033[0;42m'
bg_yellow='\033[0;43m'
bg_blue='\033[0;44m'
bg_magenta='\033[0;45m'
bg_cyan='\033[0;46m'

# Examples

echo -e "The background color is: ${red}red${clear}!"
echo -e "The background color is: ${green}green${clear}!"
echo -e "The background color is: ${yellow}yellow${clear}!"
echo -e "The background color is: ${blue}blue${clear}!"
echo -e "The background color is: ${magenta}magenta${clear}!"
echo -e "The background color is: ${cyan}cyan${clear}!"
;;
            "LibreOffice")
            exit 
            ;; 
            "Oracle Database") 
            exit 
            ;; 
             "Paython")
            exit 
            ;; 
              "Pycharm") 
            exit
            ;; 
              "SQL MongoDB")
            exit 
            ;; 
              "Notepad ++" )
            exit 
            ;; 
             "Submlime Text")
            exit 
            ;; 
              "Wamp Server" )
            exit 
            ;; 
             "Lamp Server" )
            exit 
            ;; 
             "GCC") 
             exit 
            ;; 
            "Open JDK") 
           sudo apt install openjdk-8-jdk -y
           # sudo apt-get install libaio1 default-jdk openssh-server ssh libpango1.0-0 dpkg-dev libgtkglext1 -y
            exit 
            ;; 
            "Java")
            #Java
echo 'Installing Java 8'
sudo apt-get install -y oracle-java8-installer --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie"
java -version
sleep 3
            exit 
            ;; 
             "Docker")
             sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER
echo 'Logout to affect usermod.'
             exit 
            ;; 
            "Atom") 
            exit 
            ;; 
             "Visual Studio Code")
            exit 
            ;; 
             "Bootstrap")
            exit 
            ;; 
              "Git")
            exit 
            ;; 
              "Netbeans")
            exit 
            ;; 
              "VLC Media Player")
            exit 
            ;; 
              "VirtualBox")
            exit 
            ;; 
             "Eclipse")
            exit 
            ;; 
             "Gimp") 
            exit 
            ;; 
             "Network Tools" )
            exit 
            ;; 
             "CCTV Camera") 
            exit 
            ;; 
             
            "back to home")
            ./asi.sh
            break
exit
exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

exit
            ;;
        											 7)
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
            PS4='Please enter your choice for Software Uninstallation : '
options=("Chrome-Browser(Stable Version)" "WPS-Office(Stable Version)" "AnyDesk" "ME - ManageEngine" "Kaspersky Antivirus" "Crowdstrike Antivirus" "Open Office" "Team viewer" "Chromium Browser" "LibreOffice" "Oracle Database" "Paython" "Pycharm" "SQL MongoDB" "Notepad ++" "Submlime Text" "Wamp Server" "Lamp Server" "GCC" "Open JDK" "Java" "Docker" "Atom" "Visual Studio Code" "Bootstrap" "Git" "Netbeans" "VLC Media Player" "VirtualBox" "Eclipse" "Gimp" "Network Tools" "CCTV Camera" "back to home")
select opt in "${options[@]}"
do
    case $opt in
        "Chrome-Browser(Stable Version)")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"


            ;;
               "WPS-Office(Stable Version)")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"


            ;;
            
            "AnyDesk")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
            echo "" 
   echo -ne "$(redprint 'Software deb file not exists in home location ')\e[31;43m AnyDesk \e[0m" ;
echo "";
echo -ne "$(greenprint 'If internet is connected. Software will Auto Download & install.')\e[31;43m Please wait...  \e[0m";
echo "";


      echo  -e "\e[31;43m***** AnyDesk is installed.*****\e[0m"  
      
            sudo apt remove anydesk -y
sudo apt purge anydesk -y
sudo apt-get clean -y
sudo apt-get autoremove -y
sudo apt autoremove -y
       ;;
              "ME - ManageEngine")
          
    echo "" 
    echo  -e "\e[31;43m**********\e[0m"	    

          exit
            ;;
             "Kaspersky Antivirus")
            
            exit 
            ;; 
             
             "Crowdstrike Antivirus")
            exit 
            ;; 
            
            "Open Office")
            exit 
            ;; 
            
            "Team viewer") 
            sudo apt purge teamviewer
            sudo apt remove "teamview*"
            sudo apt autoclean && sudo apt autoremove
            exit 
            ;; 
            "Chromium Browser") 
            exit 
            ;; 
            "LibreOffice")
            sudo apt remove LibreOffice
             echo "" 
    echo  -e "\e[31;43m*****LibreOffice Uninstalled*****\e[0m"	    

            exit 
            ;; 
            "Oracle Database") 
            exit 
            ;; 
             "Paython")
            exit 
            ;; 
              "Pycharm") 
            exit
            ;; 
              "SQL MongoDB")
            exit 
            ;; 
              "Notepad ++" )
            exit 
            ;; 
             "Submlime Text")
            exit 
            ;; 
              "Wamp Server" )
            exit 
            ;; 
             "Lamp Server" )
            exit 
            ;; 
             "GCC") 
             exit 
            ;; 
            "Open JDK") 
             exit 
            ;; 
            "Java")
            exit 
            ;; 
             "Docker")
             exit 
            ;; 
            "Atom") 
            exit 
            ;; 
             "Visual Studio Code")
            exit 
            ;; 
             "Bootstrap")
            exit 
            ;; 
              "Git")
            exit 
            ;; 
              "Netbeans")
            exit 
            ;; 
              "VLC Media Player")
            exit 
            ;; 
              "VirtualBox")
            exit 
            ;; 
             "Eclipse")
            exit 
            ;; 
             "Gimp") 
            exit 
            ;; 
             "Network Tools" )
            exit 
            ;; 
             "CCTV Camera") 
            exit 
            ;; 
             
            "back to home")
            ./asi.sh
             break
exit
exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

exit
            ;;
        											 8)
            echo "you chose choice $REPLY which is $opt. Please Wait...!" 

cp /etc/resolv.conf /etc/resolv.conf.backup
sudo rm -rf /etc/resolv.conf
sudo cat > /etc/resolv.conf << EOF
search ad.itinfra.delhivery.com
nameserver 172.31.0.8 10.1.17.8 10.10.41.232
EOF
sudo chattr -V +i /etc/resolv.conf

sudo cat >> /etc/hosts << EOF
172.31.0.8	ad.itinfra.delhivery.com	DVAD
EOF
sudo apt install ntpdate
sudo ntpdate -q ad.itinfra.delhivery.com
sudo ntpdate ad.itinfra.delhivery.com
sudo apt-get install acl attr samba samba-dsdb-modules samba-vfs-modules winbind libpam-winbind libnss-winbind libpam-krb5 krb5-config krb5-user -y

read username
Sudo kinit $username
sudo klist
mv /etc/samba/smb.conf /etc/samba/smb.conf.initial
sudo cat > /etc/samba/smb.conf << EOF
# Global parameters
[global]
dns forwarder = 8.8.8.8
EOF
echo "";
hostn="netbios name = "$(cat /etc/hostname)
echo "$hostnm" ;
echo $hostnm >> /etc/samba/smb.conf
sudo cat >> /etc/samba/smb.conf << EOF
realm = AD.ITINFRA.DELHIVERY.COM
server role = member server
template homedir = /home/%D/%U
template shell = /bin/bash
winbind enum groups = Yeswinbind enum users = Yes
winbind nss info = rfc2307
winbind use default domain = Yes
workgroup = DVAD
idmap config *:range = 50000-1000000
idmap config * : backend = tdb
map acl inherit = Yes
store dos attributes = Yes
vfs objects = acl_xattr
bind interfaces only = yes
EOF

ifconfig -a | sed 's/[ \t].*//;/^\(lo\|\)$/d'
route | grep '^default' | grep -o '[^ ]*$' > /etc/interface.txt
ncard="interfaces = lo "$(cat /etc/interface.txt)
echo $ncard >> /etc/samba/smb.conf
sleep 5
sudo systemctl restart smbd nmbd windbind
sudo systemctl stop samba-ad-dc
sudo systemctl enable smbd nmbd winbind
sudo smbstatus
sleep 5
echo "Please enter domain name :";
read dname
echo "Please enter domain username :";
read duser
#sudo samba-tool domain join ad.itinfra.delhivery.com -U Your domain ID
sudo samba-tool domain join $dname -U $duser
cp /etc/nsswitch.conf /etc/nsswitch.conf.backup
sudo cat > /etc/nsswitch.conf << EOF
passwd:	compat
winbindgroup:	compat winbind
shadow:	compat
gshadow:	files

hosts:		files dns
networks:	files

protocols:	db files
services:	db files
ethers:	db files
rpc:		db files

netgroup:	nis
EOF

#Modify PAM settings
sudo pam-auth-update
echo "";
cp /etc/pam.d/common-account /etc/pam.d/common-account.backup
sudo cat >> /etc/pam.d/common-account << EOF
session required pam_mkhomedir.so skel=/etc/skel/ umask=0022
EOF

#Remove every occurrence of it.
#use_authtok and try_authtok
#######pending

#sudo reboot


#check
#If the above commands don’t work then something is wrong. Troubleshoot the issues.
#if else needed
wbinfo -u
wbinfo -g


exit

            ;;
        											 9)
            echo "you chose choice $REPLY which is $opt. Please Wait...!" 
            
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
            PS4='Please enter your choice for repair software or driver : '
options=(
"Reset Ubuntu" 
"Repair Grub"
"Set Boot Order - Linux First"
"Cleaning Up Ubuntu System"
"Repair Linux Boot"
"Repair Slow Boot"
"Teleport"
""
""
""
""
"Reset Terminal Permisson"
"Reset Sudo User" 
"Reset Standard User"
"Reset Graphics & icons" 
"Reset Display Resolution"
"Reset Wi-Fi Setting" 
"Debug Updates Error"
"Repair Google Chrome Browser" 
"Repair WPS Office"
"Repair AnyDesk"
"Repair open Office"
"Repair Oracle Database"
"Repair Printer Service"
)
select opt in "${options[@]}"
do
    case $opt in
  
  "Reset Ubuntu")
              echo "you chose choice $REPLY which is $opt. Please Wait...!"
                      
sudo dconf reset -f /
    exit
;;

 "Repair Grub")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
echo "================="
sudo apt-add-repository ppa:yannubuntu/boot-repair

sudo apt-get update

sudo apt-get install -y boot-repair

boot-repair
exit
	  ;;
	  "Set Boot Order - Linux First")
              echo "you chose choice $REPLY which is $opt. Please Wait...!"
           # This method requires you to boot into your Linux install first.

# On BIOS systems (sdX is the device where grub is installed)
grub-mkconfig -o /boot/grub/grub.cfg
grub-install --target=i386-pc /dev/sdX

# On EFI/UEFI systems (the bootloader id can but adjusted to suit your distro)
grub-mkconfig -o /boot/grub/grub.cfg
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=EndeavourOS-grub
    exit
;;

"Cleaning Up Ubuntu System")
              echo "you chose choice $REPLY which is $opt. Please Wait...!"
                      
sudo apt-get clean
sudo apt-get autoremove
sudo add-apt-repository ppa:utappia/stablesudo apt updatesudo apt install ucaresystem-core
sudo ucaresystem-core

    exit
;;

"Repair Linux Boot")
              echo "you chose choice $REPLY which is $opt. Please Wait...!"
sudo add-apt-repository ppa:yannubuntu/boot-repair
sudo apt-get update
sudo apt-get install -y boot-repair && boot-repair
   exit
;;

"Repair Slow Boot")
              echo "you chose choice $REPLY which is $opt. Please Wait...!"
systemd-analyze blame
                      

    exit
;;
"Repair Slow Boot")
              echo "you chose choice $REPLY which is $opt. Please Wait...!"
systemd-analyze blame
                      

    exit
;;
"Repair Slow Boot")
              echo "you chose choice $REPLY which is $opt. Please Wait...!"
systemd-analyze blame
                      

    exit
;;
"Repair Slow Boot")
              echo "you chose choice $REPLY which is $opt. Please Wait...!"
systemd-analyze blame
                      

    exit
;;
"Teleport")
              echo "you chose choice $REPLY which is $opt. Please Wait...!"

# Used with permission.

################################################################
#  Goals of the script:
#  playing with escape sequences and terminal colors.
#
#  Exercise:
#  Edit the script to make it run less randomly,
#+ set up a fake betting shop . . .     
#  Um . . . um . . . it's starting to remind me of a movie . . .
#
#  The script gives each horse a random handicap.
#  The odds are calculated upon horse handicap
#+ and are expressed in European(?) style.
#  E.g., odds=3.75 means that if you bet $1 and win,
#+ you receive $3.75.
# 
#  The script has been tested with a GNU/Linux OS,
#+ using xterm and rxvt, and konsole.
#  On a machine with an AMD 900 MHz processor,
#+ the average race time is 75 seconds.    
#  On faster computers the race time would be lower.
#  So, if you want more suspense, reset the USLEEP_ARG variable.
#
#  Script by Stefano Palmeri.
################################################################

E_RUNERR=65

# Check if md5sum and bc are installed. 
if ! which bc &> /dev/null; then
   echo bc is not installed.  
   echo "Can\'t run . . . "
   exit $E_RUNERR
fi
if ! which md5sum &> /dev/null; then
   echo md5sum is not installed.  
   echo "Can\'t run . . . "
   exit $E_RUNERR
fi

#  Set the following variable to slow down script execution.
#  It will be passed as the argument for usleep (man usleep)  
#+ and is expressed in microseconds (500000 = half a second).
USLEEP_ARG=0  

#  Clean up the temp directory, restore terminal cursor and 
#+ terminal colors -- if script interrupted by Ctl-C.
trap 'echo -en "\E[?25h"; echo -en "\E[0m"; stty echo;\
tput cup 20 0; rm -fr  $HORSE_RACE_TMP_DIR'  TERM EXIT
#  See the chapter on debugging for an explanation of 'trap.'

# Set a unique (paranoid) name for the temp directory the script needs.
HORSE_RACE_TMP_DIR=$HOME/.horserace-`date +%s`-`head -c10 /dev/urandom \
| md5sum | head -c30`

# Create the temp directory and move right in.
mkdir $HORSE_RACE_TMP_DIR
cd $HORSE_RACE_TMP_DIR


#  This function moves the cursor to line $1 column $2 and then prints $3.
#  E.g.: "move_and_echo 5 10 linux" is equivalent to
#+ "tput cup 4 9; echo linux", but with one command instead of two.
#  Note: "tput cup" defines 0 0 the upper left angle of the terminal,
#+ echo defines 1 1 the upper left angle of the terminal.
move_and_echo() {
          echo -ne "\E[${1};${2}H""$3" 
}

# Function to generate a pseudo-random number between 1 and 9. 
random_1_9 ()
{
    head -c10 /dev/urandom | md5sum | tr -d [a-z] | tr -d 0 | cut -c1 
}

#  Two functions that simulate "movement," when drawing the horses. 
draw_horse_one() {
               echo -n " "//$MOVE_HORSE//
}
draw_horse_two(){
              echo -n " "\\\\$MOVE_HORSE\\\\ 
}   


# Define current terminal dimension.
N_COLS=`tput cols`
N_LINES=`tput lines`

# Need at least a 20-LINES X 80-COLUMNS terminal. Check it.
if [ $N_COLS -lt 80 ] || [ $N_LINES -lt 20 ]; then
   echo "`basename $0` needs a 80-cols X 20-lines terminal."
   echo "Your terminal is ${N_COLS}-cols X ${N_LINES}-lines."
   exit $E_RUNERR
fi


# Start drawing the race field.

# Need a string of 80 chars. See below.
BLANK80=`seq -s "" 100 | head -c80`

clear

# Set foreground and background colors to white.
echo -ne '\E[37;47m'

# Move the cursor on the upper left angle of the terminal.
tput cup 0 0 

# Draw six white lines.
for n in `seq 5`; do
      echo $BLANK80   # Use the 80 chars string to colorize the terminal.
done

# Sets foreground color to black. 
echo -ne '\E[30m'

move_and_echo 3 1 "START  1"            
move_and_echo 3 75 FINISH
move_and_echo 1 5 "|"
move_and_echo 1 80 "|"
move_and_echo 2 5 "|"
move_and_echo 2 80 "|"
move_and_echo 4 5 "|  2"
move_and_echo 4 80 "|"
move_and_echo 5 5 "V  3"
move_and_echo 5 80 "V"

# Set foreground color to red. 
echo -ne '\E[31m'

# Some ASCII art.
move_and_echo 1 8 "..@@@..@@@@@...@@@@@.@...@..@@@@..."
move_and_echo 2 8 ".@...@...@.......@...@...@.@......."
move_and_echo 3 8 ".@@@@@...@.......@...@@@@@.@@@@...."
move_and_echo 4 8 ".@...@...@.......@...@...@.@......."
move_and_echo 5 8 ".@...@...@.......@...@...@..@@@@..."
move_and_echo 1 43 "@@@@...@@@...@@@@..@@@@..@@@@."
move_and_echo 2 43 "@...@.@...@.@.....@.....@....."
move_and_echo 3 43 "@@@@..@@@@@.@.....@@@@...@@@.."
move_and_echo 4 43 "@..@..@...@.@.....@.........@."
move_and_echo 5 43 "@...@.@...@..@@@@..@@@@.@@@@.."


# Set foreground and background colors to green.
echo -ne '\E[32;42m'

# Draw  eleven green lines.
tput cup 5 0
for n in `seq 11`; do
      echo $BLANK80
done

# Set foreground color to black. 
echo -ne '\E[30m'
tput cup 5 0

# Draw the fences. 
echo "++++++++++++++++++++++++++++++++++++++\
++++++++++++++++++++++++++++++++++++++++++"

tput cup 15 0
echo "++++++++++++++++++++++++++++++++++++++\
++++++++++++++++++++++++++++++++++++++++++"

# Set foreground and background colors to white.
echo -ne '\E[37;47m'

# Draw three white lines.
for n in `seq 3`; do
      echo $BLANK80
done

# Set foreground color to black.
echo -ne '\E[30m'

# Create 9 files to stores handicaps.
for n in `seq 10 7 68`; do
      touch $n
done  

# Set the first type of "horse" the script will draw.
HORSE_TYPE=2

#  Create position-file and odds-file for every "horse".
#+ In these files, store the current position of the horse,
#+ the type and the odds.
for HN in `seq 9`; do
      touch horse_${HN}_position
      touch odds_${HN}
      echo \-1 > horse_${HN}_position
      echo $HORSE_TYPE >>  horse_${HN}_position
      # Define a random handicap for horse.
       HANDICAP=`random_1_9`
      # Check if the random_1_9 function returned a good value.
      while ! echo $HANDICAP | grep [1-9] &> /dev/null; do
                HANDICAP=`random_1_9`
      done
      # Define last handicap position for horse. 
      LHP=`expr $HANDICAP \* 7 + 3`
      for FILE in `seq 10 7 $LHP`; do
            echo $HN >> $FILE
      done   
     
      # Calculate odds.
      case $HANDICAP in 
              1) ODDS=`echo $HANDICAP \* 0.25 + 1.25 | bc`
                                 echo $ODDS > odds_${HN}
              ;;
              2 | 3) ODDS=`echo $HANDICAP \* 0.40 + 1.25 | bc`
                                       echo $ODDS > odds_${HN}
              ;;
              4 | 5 | 6) ODDS=`echo $HANDICAP \* 0.55 + 1.25 | bc`
                                             echo $ODDS > odds_${HN}
              ;; 
              7 | 8) ODDS=`echo $HANDICAP \* 0.75 + 1.25 | bc`
                                       echo $ODDS > odds_${HN}
              ;; 
              9) ODDS=`echo $HANDICAP \* 0.90 + 1.25 | bc`
                                  echo $ODDS > odds_${HN}
      esac


done


# Print odds.
print_odds() {
tput cup 6 0
echo -ne '\E[30;42m'
for HN in `seq 9`; do
      echo "#$HN odds->" `cat odds_${HN}`
done
}

# Draw the horses at starting line.
draw_horses() {
tput cup 6 0
echo -ne '\E[30;42m'
for HN in `seq 9`; do
      echo /\\$HN/\\"                               "
done
}

print_odds

echo -ne '\E[47m'
# Wait for a enter key press to start the race.
# The escape sequence '\E[?25l' disables the cursor.
tput cup 17 0
echo -e '\E[?25l'Press [enter] key to start the race...
read -s

#  Disable normal echoing in the terminal.
#  This avoids key presses that might "contaminate" the screen
#+ during the race.  
stty -echo

# --------------------------------------------------------
# Start the race.

draw_horses
echo -ne '\E[37;47m'
move_and_echo 18 1 $BLANK80
echo -ne '\E[30m'
move_and_echo 18 1 Starting...
sleep 1

# Set the column of the finish line.
WINNING_POS=74

# Define the time the race started.
START_TIME=`date +%s`

# COL variable needed by following "while" construct.
COL=0    

while [ $COL -lt $WINNING_POS ]; do
                   
          MOVE_HORSE=0     
          
          # Check if the random_1_9 function has returned a good value.
          while ! echo $MOVE_HORSE | grep [1-9] &> /dev/null; do
                MOVE_HORSE=`random_1_9`
          done
          
          # Define old type and position of the "randomized horse".
          HORSE_TYPE=`cat  horse_${MOVE_HORSE}_position | tail -n 1`
          COL=$(expr `cat  horse_${MOVE_HORSE}_position | head -n 1`)
          
          ADD_POS=1
          # Check if the current position is an handicap position. 
          if seq 10 7 68 | grep -w $COL &> /dev/null; then
                if grep -w $MOVE_HORSE $COL &> /dev/null; then
                      ADD_POS=0
                      grep -v -w  $MOVE_HORSE $COL > ${COL}_new
                      rm -f $COL
                      mv -f ${COL}_new $COL
                      else ADD_POS=1
                fi 
          else ADD_POS=1
          fi
          COL=`expr $COL + $ADD_POS`
          echo $COL >  horse_${MOVE_HORSE}_position  # Store new position.
                            
         # Choose the type of horse to draw.         
          case $HORSE_TYPE in 
                1) HORSE_TYPE=2; DRAW_HORSE=draw_horse_two
                ;;
                2) HORSE_TYPE=1; DRAW_HORSE=draw_horse_one 
          esac       
          echo $HORSE_TYPE >>  horse_${MOVE_HORSE}_position
          # Store current type.
         
          # Set foreground color to black and background to green.
          echo -ne '\E[30;42m'
          
          # Move the cursor to new horse position.
          tput cup `expr $MOVE_HORSE + 5` \
	  `cat  horse_${MOVE_HORSE}_position | head -n 1` 
          
          # Draw the horse.
          $DRAW_HORSE
           usleep $USLEEP_ARG
          
           # When all horses have gone beyond field line 15, reprint odds.
           touch fieldline15
           if [ $COL = 15 ]; then
             echo $MOVE_HORSE >> fieldline15  
           fi
           if [ `wc -l fieldline15 | cut -f1 -d " "` = 9 ]; then
               print_odds
               : > fieldline15
           fi           
          
          # Define the leading horse.
          HIGHEST_POS=`cat *position | sort -n | tail -1`          
          
          # Set background color to white.
          echo -ne '\E[47m'
          tput cup 17 0
          echo -n Current leader: `grep -w $HIGHEST_POS *position | cut -c7`\
	  "                              "

done  

# Define the time the race finished.
FINISH_TIME=`date +%s`

# Set background color to green and enable blinking text.
echo -ne '\E[30;42m'
echo -en '\E[5m'

# Make the winning horse blink.
tput cup `expr $MOVE_HORSE + 5` \
`cat  horse_${MOVE_HORSE}_position | head -n 1`
$DRAW_HORSE

# Disable blinking text.
echo -en '\E[25m'

# Set foreground and background color to white.
echo -ne '\E[37;47m'
move_and_echo 18 1 $BLANK80

# Set foreground color to black.
echo -ne '\E[30m'

# Make winner blink.
tput cup 17 0
echo -e "\E[5mWINNER: $MOVE_HORSE\E[25m""  Odds: `cat odds_${MOVE_HORSE}`"\
"  Race time: `expr $FINISH_TIME - $START_TIME` secs"

# Restore cursor and old colors.
echo -en "\E[?25h"
echo -en "\E[0m"

# Restore echoing.
stty echo

# Remove race temp directory.
rm -rf $HORSE_RACE_TMP_DIR

tput cup 19 0

exit 0                      

    exit
;;

            "back to home")
            ./asi.sh
            break
exit
exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

exit
;;
        											 10)
              echo "you chose choice $REPLY which is $opt. Please Wait...!"
            PS4='Please enter your choice for repair software or driver : '
options=("TSC/Zenpert Barcode Printer Driver Installation" "TSC/Zenpert Barcode Printer Driver Reinstallation" "TSC/Zenpert Barcode Printer Driver Uninstallation" "HP Laserjet Pro M1136 Printer Driver Installation" "HP Laserjet Pro M1136 Printer Driver Reinstallation" "HP Laserjet Pro M1136 Printer Driver - Troubleshoot 1" "HP Laserjet Pro M1136 Printer Driver - Troubleshoot 2" "HP Laserjet Pro M1136 Printer Driver - Troubleshoot 3" "HP Laserjet Pro M1136 Printer Driver Uninstallation" "HP Network Printer" "HP Scanner Driver" "Wireless Scanner Driver" "Laptop Touchpad Driver" "Wi-Fi Driver" "Graphic Driver"  "All Existing Driver Information" "Check Existing HP Printer Driver Information" "back to home")
select opt in "${options[@]}"
do
    case $opt in
    "TSC/Zenpert Barcode Printer Driver Installation")
wget https://raw.githubusercontent.com/itabhishek94/asi/main/TE210.ppd
sleep 5
wget https://github.com/itabhishek94/asi/raw/main/barcodedriver-1.2.06_x86-64.tar.gz
sleep 5
    tar -xvf barcodedriver-1.2.06_x86-64.tar.gz
tar -xvf barcodedriver*.tar.gz
tar -xvf LinuxSoftware_E1000_v4.2.1.x86_64.deb.tar.gz
cd barcodedriver-1.2.06
chmod +x install-driver uninstall-driver
./install-driver
;;
  
  "TSC/Zenpert Barcode Printer Driver Reinstallation")
  wget https://raw.githubusercontent.com/itabhishek94/asi/main/TE210.ppd
sleep 5
wget https://github.com/itabhishek94/asi/raw/main/barcodedriver-1.2.06_x86-64.tar.gz
sleep 5
    tar -xvf barcodedriver-1.2.06_x86-64.tar.gz
tar -xvf barcodedriver*.tar.gz
tar -xvf LinuxSoftware_E1000_v4.2.1.x86_64.deb.tar.gz
cd barcodedriver-1.2.06
chmod +x install-driver uninstall-driver
./uninstall-driver
./install-driver
;;
"TSC/Zenpert Barcode Printer Driver Uninstallation")
wget https://raw.githubusercontent.com/itabhishek94/asi/main/TE210.ppd
sleep 5
wget https://github.com/itabhishek94/asi/raw/main/barcodedriver-1.2.06_x86-64.tar.gz
sleep 5
    tar -xvf barcodedriver-1.2.06_x86-64.tar.gz
tar -xvf barcodedriver*.tar.gz
tar -xvf LinuxSoftware_E1000_v4.2.1.x86_64.deb.tar.gz
cd barcodedriver-1.2.06
chmod +x install-driver uninstall-driver
./uninstall-driver
;;
    
            "HP Laserjet Pro M1136 Printer Driver Installation")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
sudo apt update
sudo apt upgrade
sudo add-apt-repository universe
sudo apt install hplip hplip-gui
sudo usermod -aG lpadmin delhivery
hp-setup
hp-plugin
  ;;
 "HP Laserjet Pro M1136 Printer Driver Reinstallation")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
apt remove hplip-data hplip hplip-gui -y
apt purge hplip-data hplip hplip-gui -y
sudo apt install python-is-python3 -y
sudo apt install libavahi-core-dev -y
apt-get --reinstall install cups -y
sudo usermod -aG lpadmin delhivery
sudo apt update
sudo apt upgrade
sudo add-apt-repository universe
sudo apt install hplip hplip-gui
sudo usermod -aG lpadmin delhivery
hp-setup
hp-plugin
  ;;
 "HP Laserjet Pro M1136 Printer Driver - Troubleshoot 1")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
# Linux all devices on the network:
hp-probe -bnet
# Search all devices on USB that support scanning:
hp-probe -busb -escan
# Search and list all devices that have queues installed in CUPS:
hp-probe -bcups
# Try to search all devices on the USB bus:
hp-probe
  ;;
  "HP Laserjet Pro M1136 Printer Driver - Troubleshoot 2")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
apt remove hplip-data hplip hplip-gui -y
apt purge hplip-data hplip hplip-gui -y
sudo add-apt-repository universe
apt install hplip-data hplip hplip-gui -y
rm -rf hplip*.run
wget https://developers.hp.com/sites/default/files/hplip-3.20.3-plugin.run
sleep 5
wget https://developers.hp.com/sites/default/files/hplip-3.20.3-plugin.run.asc
sleep 5
wget https://developers.hp.com/sites/default/files/hplip-3.22.6-plugin.run
sleep 5
wget https://developers.hp.com/sites/default/files/hplip-3.22.6-plugin.run.asc
sleep 5
chmod +x hplip*.run
chmod +x *.asc
hp-plugin
;;
  
  "HP Laserjet Pro M1136 Printer Driver - Troubleshoot 3")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
apt remove hplip-data hplip hplip-gui -y
apt purge hplip-data hplip hplip-gui -y
rm hplip*.*
#wget https://developers.hp.com/sites/default/files/hplip-3.22.11-plugin.run
wget https://www.openprinting.org/download/printdriver/auxfiles/HP/plugins/hplip-3.20.3-plugin.run
wget https://www.openprinting.org/download/printdriver/auxfiles/HP/plugins/hplip-3.20.3-plugin.run.asc
sleep 5
apt install hplip-data hplip hplip-gui -y
sleep 5
chmod +x hplip-3*.run
./hplip*.run
;;
  
 "HP Laserjet Pro M1136 Printer Driver Uninstallation")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
apt remove hplip-data hplip hplip-gui -y
apt purge hplip-data hplip hplip-gui -y
  ;;
 "Check Existing HP Printer Driver Information")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
apt-cache search hplip
echo "================="
cat /etc/lsb-release && uname -ir && groups && lsusb 
echo "================="
dpkg -l | grep hplip
echo "================="
	  ;;
            "back to home")
            ./asi.sh
            break
exit
exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

exit
            ;;										 11)
            echo "you chose choice $REPLY which is $opt. Please Wait...!"

exit
            ;;
        											 12)
            echo "you chose choice $REPLY which is $opt. Please Wait...!"


exit
            ;;
        											 13)
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
ls /sys/class/net
echo "####################"
sudo lshw -C network
echo "####################"
sudo lshw -businfo
echo "lists information about devices on the USB bus/ USB Mini Wifi Information if Device Connected.!!"
echo "PCI (internal) device"
lspci -nnk | grep 0280 -A3
sudo lsusb -v
sudo adduser delhivery netdev
#ip a
                        echo "The wifi access privileges of standard users are changed successfully. Standard users are now able to connect to various wifi networks."
 exit           
            ;;
           
        											 14)
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
apt-get update
apt-get install mokutil && mokutil --sb-state

apt-get install git build-essential linux-headers-$(uname -r) -y

apt-get install git -y
git clone https://github.com/lwfinger/rtw88.git
cd rtw88
make
make install

rm -v -R --interactive=never ~/rtw88

cd /etc/default/grub

#change GRUB_CMDLINE_LINUX_DEFAULT=“quiet splash” line as below

sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash i8042.nopnp=1 pci=nocrs"/g' /etc/default/grub 

sudo update-grub

init 6
 
            ;;
        											 15)
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
            
sudo apt-get purge -y firefox
            rm -rf ~/.mozilla
            rm -rf ~/.mozilla/firefox/
            sudo apt-get purge rhythmbox -y
sudo apt-get purge -y teamviewer -y
sudo apt-get purge -y rhythmbox firefox aisleriot gnome-sudoku mahjongg ace-of-penguins gnomine gbrainy gnome-sushi gnome-taquin gnome-tetravex  gnome-robots gnome-chess lightsoff swell-foop quadrapassel
sudo apt-get remove --purge -y rhythmbox firefox aisleriot gnome-sudoku mahjongg ace-of-penguins gnomine gbrainy gnome-sushi gnome-taquin gnome-tetravex  gnome-robots gnome-chess lightsoff swell-foop quadrapassel
sudo apt remove -y aisleriot
sudo apt-get remove --purge -y libreoffice* thunderbird*
sudo apt remove -y rhythmbox thunderbird* whatsapp telegram pacman
sudo apt-get clean -y
sudo apt-get -y purge aisleriot gnome-sudoku mahjongg ace-of-penguins gnomine gbrainy
sudo apt-get purge --auto-remove -y gnome-mahjongg
sudo apt-get purge --auto-remove -y gnome-mines
sudo apt-get remove -y fonts-opensymbol libreoffice libreoffice-\* openoffice.org-dtd-officedocument1.0 python\*-uno uno-libs3-\* ure ure-dbg
sudo apt purge aisleriot gnome-sudoku mahjongg ace-of-penguins gnomine gbrainy gnome-sushi gnome-taquin gnome-tetravex  gnome-robots gnome-chess lightsoff swell-foop quadrapassel && sudo apt autoremove
sudo apt purge gnome-2048 aisleriot atomix gnome-chess five-or-more hitori iagno gnome-klotski lightsoff gnome-mahjongg gnome-mines gnome-nibbles quadrapassel four-in-a-row gnome-robots gnome-sudoku swell-foop tali gnome-taquin gnome-tetravex -y & sudo apt autoremove -y
sudo apt-get purge gnome-games-common gbrainy && sudo apt-get autoremove
sudo apt-get remove --purge libreoffice-core -y
sudo apt-get remove libreoffice-core -y
sudo apt purge -y libreoffice*
sudo apt-get autoremove -y
sudo apt autoremove -y
sudo apt update -y
            exit           
            ;;
        											 16)
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
	    lshw | more
#SmartCTL requires the smartmontools package presented below
smartctl
	 
	    exit
            ;;
        											 17)
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
#Active Internet connections (servers and established)
netstat -natp
#information on all the network interfaces on your system
#The new naming scheme is referred to as the “Predictable Network Interface” naming. It’s been used on systemd-based Linux systems for some time. The interface name depends on the physical location of the hardware. The "en" simply means "ethernet" just like "eth" does for eth0. The "p" is the bus number of the ethernet card and the "s" is the slot number. So "enp0s25" tells us a lot about the hardware we're working with.
ip a
#information on a system's routing table
ip route show
#default route
route | grep '^default' | grep -o '[^ ]*$'



            ;;
        											 18)
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
# Am i Root user?
if [ $(id -u) -eq 0 ]; then
username=delhivery
password=Welcome@123
	egrep "^$username" /etc/passwd >/dev/null
	if [ $? -eq 0 ]; then
		echo "$username exists!"
		exit 1
	else
		pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
		useradd -m -p "$pass" "$username"
        sudo adduser delhivery netdev
		[ $? -eq 0 ] && echo "User has been added to system!" || echo "Failed to add a user!"
	fi
else
	echo "Only root may add a user to the system."
	exit 2
fi

exit
            ;;
       
        											 19)
            echo "you chose choice $REPLY which is $opt. Please Wait...!" 

exit
            ;;
        											 20)
            echo "you chose choice $REPLY which is $opt. Please Wait...!" 
wget -N https://raw.githubusercontent.com/itabhishek94/asi/main/asi.sh
echo  -e "\e[31;43m***** ASI scipt is Updated..! Enjoy..! *****\e[0m"

exit
            ;;
            
            											 21)
            echo "you chose choice $REPLY which is $opt. Please Wait...!" 

echo  -e "\e[31;43m***** ASI scipt is Updated..! Enjoy..! *****\e[0m"

exit
            ;;
            
            											 22)
            echo "you chose choice $REPLY which is $opt. Please Wait...!" 

echo  -e "\e[31;43m***** ASI scipt is Updated..! Enjoy..! *****\e[0m"

exit
            ;;
            
            											 23)
            echo "you chose choice $REPLY which is $opt. Please Wait...!" 

echo  -e "\e[31;43m***** ASI scipt is Updated..! Enjoy..! *****\e[0m"

exit
            ;;
            
            											 24)
            echo "you chose choice $REPLY which is $opt. Please Wait...!" 

echo  -e "\e[31;43m***** ASI scipt is Updated..! Enjoy..! *****\e[0m"

exit
            ;;
            
            											 25)
            echo "you chose choice $REPLY which is $opt. Please Wait...!" 

echo  -e "\e[31;43m***** ! *****\e[0m"
clear                                   # Clear the screen.

echo -n "          "
echo -e '\E[37;44m'"\033[1mContact List\033[0m"
                                        # White on blue background
echo; echo
echo -e "\033[1mChoose one of the following persons:\033[0m"
                                        # Bold
tput sgr0                               # Reset attributes.
echo "(Enter only the first letter of name.)"
echo
echo -en '\E[47;34m'"\033[1mE\033[0m"   # Blue
tput sgr0                               # Reset colors to "normal."
echo "vans, Roland"                     # "[E]vans, Roland"
echo -en '\E[47;35m'"\033[1mJ\033[0m"   # Magenta
tput sgr0
echo "ambalaya, Mildred"
echo -en '\E[47;32m'"\033[1mS\033[0m"   # Green
tput sgr0
echo "mith, Julie"
echo -en '\E[47;31m'"\033[1mZ\033[0m"   # Red
tput sgr0
echo "ane, Morris"
echo

read guide

case "$guide" in
# Note variable is quoted.

  "A" | "a" )
  # Accept upper or lowercase input.
  echo
  echo "Abhishek Gohil"
  echo "72*2***828"
  echo "Surat"
  echo "Gujarat"
  echo "India"
  echo "Hello User, Software Guide is coming soon"
  echo ""
  ;;

  "B" | "b" )
  echo
  echo "Guide for wifi"
  echo "Null"
  echo "No Details"
  echo "Please Wait"
 
  ;;

# Add info for Smith & Zane later.

          * )
   # Default option.	  
   # Empty input (hitting RETURN) fits here, too.
   echo
   echo "Not yet in database."
  ;;

esac

tput sgr0                               # Reset colors to "normal."

echo

exit 0
exit
            ;;
            
        "Logout")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"

read -p "Press Y key to Reboot, N for Exit $foo - [y/n]" answer
if [ $answer = y ] ; then
#Press a key to reboot
ls
 else
  exit
fi

            ;;
        "PowerOff Machine")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
gnome-session-quit --logout --no-prompt
sudo shutdown -h 1
            ;;
        "Reboot Machine")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
sudo reboot
            ;;
        "Learn command")
            echo -e "\nTo open Open Office 4 from shell => /opt/openoffice4/program/./soffice.bin \n"
echo -e "To Open Oracle 10 g from Shell => sudo /etc/init.d/oracle-xe force-reload \nfirefox http://localhost:8181/apex \n"
echo -e "To Open phpmyadmin from Shell => firefox http://localhost/phpmyadmin \n"
echo -e "To Open Apache LocalHost from Shell => firefox http://localhost/yourwebsitename \n "
https://www.liveagent.com/templates/ticketing/
https://blog.happyfox.com/best-canned-response-templates-for-customer-support-emails/#Closing
https://www.jitbit.com/news/ticket-queue-management/
https://askubuntu.com/questions/1705/how-can-i-create-a-select-menu-in-a-shell-script
https://phoenixnap.com/kb/bash-case-statement
https://stackoverflow.com/questions/12614011/using-case-for-a-range-of-numbers-in-bash
https://linuxize.com/post/bash-case-statement/	
https://www.thegeekstuff.com/2010/07/bash-case-statement/
https://gist.github.com/waleedahmad/a5b17e73c7daebdd048f823c68d1f57a
https://www.tecmint.com/using-shell-script-to-automate-linux-system-maintenance-tasks/
https://linuxconfig.org/bash-scripting-tutorial
###########
echo "Please Enter a User ID Number : "
read uid

 if [ $(grep -w $uid) -n </etc/passwd ] ;
 then
    grep -w $uid /etc/passwd | cut -d ":" -f "1" | xargs echo "Welcome : "
else
    echo "user not found"
fi
##########
exit
      ;;
        "Quit")
            break
exit
exit
            ;;
        *) echo "invalid option $REPLY"
        
        ./asi.sh
        ;;
    esac
}

mainmenu
#rdesktop -f ip
#press enter to connect
