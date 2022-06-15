#!/bin/bash
#Abhishek  Gohil
echo ""
echo  -e "\e[31;43m*****Automatic Software Installation By Abhishek Gohil W84459 - DELHIVERY *****\e[0m"
echo ""
echo "██████  ███████ ██      ██   ██ ██ ██    ██ ███████ ██████  ██    ██ ";
echo "██   ██ ██      ██      ██   ██ ██ ██    ██ ██      ██   ██  ██  ██  ";
echo "██   ██ █████   ██      ███████ ██ ██    ██ █████   ██████    ████   ";
echo "██   ██ ██      ██      ██   ██ ██  ██  ██  ██      ██   ██    ██    ";
echo "██████  ███████ ███████ ██   ██ ██   ████   ███████ ██   ██    ██    ";
echo "                                                                     ";
echo "                                                                     ";
echo ""

echo  -e "\e[31;43m*****Software is Not Completed - i'm Working on my offtime*****\e[0m"
echo ""
echo  -e "\e[31;43m*****************Note : To stop The Script Press Ctrl + C or Ctrl + D *****************\e[0m"
PS3='Please enter your choice : '
options=("Ubuntu Full Audit" "Edit Hostname" "Automatic All Software Installation" "Mannual Software Installation" "Custom Audit" "Role-wise Software Installation" "Repair Software/Reinstallation" "Remove Temp" "Repair Wi-fi" "Repair User" "Download Software" "Find/Remove Unwanted Software" "asi Update")
select opt in "${options[@]}"
do
    case $opt in
        "Ubuntu Full Audit")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
# -Hostname information:
echo -e "\e[31;43m***** HOSTNAME INFORMATION *****\e[0m"
hostnamectl
echo ""
# -System and Serial Number information:
echo -e "\e[31;43m***** SYSTEM AND SERIAL NUMBER INFORMATION *****\e[0m"
dmidecode -t system | head -15 | tail -8 | egrep --color='auto' -z "Serial Number"
echo ""
# -ME information:
echo -e "\e[31;43m***** MANAGE ENGINE SERVICE STATUS *****\e[0m"
service dcservice status | head -10 | egrep --color='auto' -z active
#service dcservice status |  head -15 | exit

# -Antivirus information:
echo -e "\e[31;43m*****KASPERSKY ANTIVIRUS SERVICE STATUS *****\e[0m"
service klnagent64 status | head -10 | egrep --color='auto' -z active
echo ""

# -Antivirus Activation information:
echo -e "\e[31;43m*****KASPERSKY ANTIVIRUS ACTIVATION - STATUS *****\e[0m"
kesl-control -L --query
echo ""
# -File system disk space usage:
echo -e "\e[31;43m***** FILE SYSTEM DISK SPACE USAGE *****\e[0m"
df -h
echo ""
# -Free and used memory in the system:
echo -e "\e[31;43m ***** FREE AND USED MEMORY *****\e[0m"
free -m
echo ""
# -System uptime and load:
echo -e "\e[31;43m***** SYSTEM UPTIME AND LOAD *****\e[0m"
uptime
echo ""
# -Logged-in users:
echo -e "\e[31;43m***** CURRENTLY LOGGED-IN USERS *****\e[0m"
who
echo ""
# -Top 5 processes as far as memory usage is concerned
echo -e "\e[31;43m***** TOP 5 MEMORY-CONSUMING PROCESSES *****\e[0m"
ps -eo %mem,%cpu,comm --sort=-%mem | head -n 6
echo ""

# -Top 5 processes as far as memory usage is concerned
echo -e "\e[31;43m***** Details of Current DNS Server  *****\e[0m"
systemd-resolve --status | grep -B 9 -A 6 "Current DNS Server"
echo ""
echo -e "\e[1;32mCreated by Abhishek Gohil (W84459) \e[0m"
exit
            ;;
        "Edit Hostname" )
            echo "you chose choice $REPLY which is $opt."
#!/bin/bash
#Author: Abhi Gohil
#Assign existing hostname to $hostn
hostn=$(cat /etc/hostname)

#Display existing hostname
echo "Existing hostname is $hostn"

#Ask for new hostname $newhost
echo "Enter new hostname: "
read newhost

#change hostname in /etc/hosts & /etc/hostname
sudo sed -i "s/$hostn/$newhost/g" /etc/hosts
sudo sed -i "s/$hostn/$newhost/g" /etc/hostname

#display new hostname
echo "Your new hostname is $newhost"

read -p "Press y key to reboot or n for exit $foo? [yn]" answer
if [ $answer = y ] ; then
#Press a key to reboot
sudo reboot
 else
  exit
fi
#read -s -n 1 -p "Press any key to reboot"
#END
exit
            ;;
        "Automatic All Software Installation")
            echo "you chose choice $REPLY which is $opt.Please Wait...!"
#!/bin/bash
sudo apt remove anydesk -y
sudo apt autoremove -y
sudo apt update
sudo apt update --fix-missing
sudo apt --fix-broken install
sudo dpkg -P anydesk  
sudo apt-get install dpkg-dev -y
sudo apt-get install libgtkglext1 -y
sudo apt-get install libpango1.0-0 -y
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sudo apt update
sudo dpkg -i anydesk*.deb
sudo apt install -f -y
sudo apt install net-tools -y
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo dpkg -i wps*.deb
#sudo snap install wps-office
sudo apt-get install -f -y
chmod +x klnagent*.sh
./klnagent*.sh
cd /opt/kaspersky/klnagent64/bin
sudo ./klnagchk
cd /home/delhivery/
sudo dpkg -i kesl_11.2.0-4528_amd64.deb
/opt/kaspersky/kesl/bin/kesl-setup.pl
kesl-control -L --add-active-key BQFBG-K8SGC-W78VR-FD2FG
kesl-control -L --query
#wget
tar -xvf barcodedriver-1.2.06_x86-64.tar.gz
tar -xvf LinuxSoftware_E1000_v4.2.1.x86_64.deb.tar.gz
cd barcodedriver-1.2.06
chmod +x install-driver uninstall-driver
./install-driver
cd ..
chmod +x setup.sh
#./setup.sh
dpkg -i kodak*.deb
dpkg -i lib*.deb
apt install -f -y
#hp-plugin
chmod +x Ubuntu\ \(1\).sh
chmod +x Ubuntu.sh
./Ubuntu\ \(1\).sh
#need display timeout setting and battary setting
#ssh install
#lpadmin -p printername -E -v socket://11.22.33.44 -m drv:///sample.drv/laserjet.ppd
# lpadmin -p printer1 -n /path/mynewHPppdfile.ppd
#wget https://download.anydesk.com/linux/anydesk_6.1.1-1_amd64.deb
#sudo dpkg -i anydesk*.deb
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -f -y
#https://www.cups.org/doc/admin.html

exit
            ;;
        "Mannual Software Installation" )
            echo "you chose choice $REPLY which is $opt. Please Wait...!"

exit
            ;;
        "Custom Audit")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
nohup rdesktop -f 192.168.1.100 &>/dev/null &
exit
            ;;
        "PhpMyadmin")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
nohup firefox http://localhost/phpmyadmin &>/dev/null &
exit


            ;;
        "FInd User")
            echo "you chose choice $REPLY which is $opt. Please Wait...!" 

echo "Please Enter a User ID Number : "
read uid

 if [ $(grep -w $uid) -n </etc/passwd ] ;
 then
    grep -w $uid /etc/passwd | cut -d ":" -f "1" | xargs echo "Welcome : "
else
    echo "user not found"
fi

exit
            ;;
        "gedit")
            echo "you chose choice $REPLY which is $opt. Please Wait...!" 
nohup gedit &>/dev/null &
exit

            ;;
        "Logout")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
kill -9 -1

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
echo -e "To Open Turbo c from Shell => dosbox \n "
echo -e "To Open Windows Remote Desktop with rdesktop command Shell => rdesktop -f 192.168.1.100 \n"
echo -e "To Open Oracle 10 g from Shell => sudo /etc/init.d/oracle-xe force-reload \nfirefox http://localhost:8181/apex \n"
echo -e "To Open sublime from Shell => subl \n"
echo -e "To Open phpmyadmin from Shell => firefox http://localhost/phpmyadmin \n"
echo -e "To Open data backup from Shell => firefox http://192.168.1.200 \n"
echo -e "To Open Apache LocalHost from Shell => firefox http://localhost/yourwebsitename \n "
exit
      ;;
        "Quit")
            break
exit
exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
#how to remote windows login
#open terminal ( Ctrl + Alt + T )
#type this command


#rdesktop -f 192.168.1.100

#press enter to connect
