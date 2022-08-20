sudo apt-get purge wps-office   # for a8 or earlier versions.
sudo apt-get purge kingsoft-office  # for a9 or later versions.
sudo apt-get remove wps-office
sudo dpkg -r wps-office
sudo apt-get clean
sudo apt-get autoremove


sudo apt-get remove --purge libreoffice*
sudo apt-get clean
sudo apt-get autoremove


sudo snap install wps-office-multilang

apt remove LibreOffice -y
apt install openjdk-8-jdk -y
wget https://sourceforge.net/projects/openofficeorg.mirror/files/4.1.7/binaries/en-US/Apache_OpenOffice_4.1.7_Linux_x86-64_install-deb_en-US.tar.gz
sleep 5
tar -xvf Apache_OpenOffice_*.tar.gz
sleep 5
sudo dpkg -i en-US/DEBS/*.deb
sleep 5
sudo dpkg -i en-US/DEBS/desktop-integration/*.deb 
 
 PS4='Please enter your choice for Mannual Software Installation : '
options=(
"Anydesk"
"Chrome-Stable"
"Libra Office"
"Open Office Latest" 
"WPS Stable Office" 
"ME - Manage Engine" 
"Kaspersky Antivirus" 

"back to home"
)

select opt in "${options[@]}"
do
    case $opt in
        "Chrome-Stable")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
if [ -f google-chrome*.deb ]; then
    echo "file exists."
    sudo dpkg -i google-chrome-stable_current_amd64.deb
else 
    echo "" 
    echo  -e "\e[31;43m*****google-chrome deb file not found in Home Directory.Please Check file in Home Directory and try again*****\e[0m"
fi

            exit
            ;;
               "Latest Chrome")
            echo "you chose choice $REPLY which is $opt. Please Wait...!" 
nohup gedit &>/dev/null &
exit

            ;;
        "WPS-Stable Office")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
if [ -f wps*.deb ]; then
    echo "file exists."
    sudo sudo dpkg -i wps*.deb
else 
    echo "" 
    echo  -e "\e[31;43m*****wps office deb file not found in Home Directory.Please Check file in Home Directory and try again*****\e[0m"
fi
            ;;
            
        "Latest WPS Office")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
kill -9 -1

            ;;
            "Anydesk")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
if [ -f anydesk*.deb ]; then
    echo "file exists."
sudo apt remove anydesk -y
sudo apt purge anydesk -y
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sudo apt update
sudo dpkg -i anydesk*.deb
sudo apt install -f -y
sudo apt-get install -f -y
else 
    echo "" 
    echo  -e "\e[31;43m*****Anydesk deb file not found in Home Directory.Please Check file in Home Directory and try again*****\e[0m"
fi
exit
            ;;
              "ME - Manage Engine")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
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

    echo "" 
    echo  -e "\e[31;43m*****me installed*****\e[0m"	    
exit

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
kesl-control -L --add-active-key BQFBG-K8SGC-W78VR-FD2FG
kesl-control -L --query
            exit
            ;;
             
            "Open Office")
            ;;
            "back to home")
            ./asi.sh
            
            break
exit
