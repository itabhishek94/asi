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
date
echo  -e "\e[31;43m*****Software is Not Completed - i'm Working on my offtime*****\e[0m"
echo ""
echo  -e "\e[31;43m*****************Note : To stop The Script Press Ctrl + C or Ctrl + D *****************\e[0m"
PS3='Please enter your choice : '
options=("Ubuntu Full Audit" "Edit Hostname" "Automatic All Software Installation" "Mannual Software Installation" "Custom Audit" "Connect to Windows Server" "Repair Software/Reinstallation" "RemoveTemp" "Repair Wi-fi" "Wifi Rights to standard users" "Install Wifi Driver" "Uninstall All Software" "Repair User" "Download Software" "Find/Remove Unwanted Software" "asi Update")
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
#Author: Abhishek Gohil
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
sudo apt purge anydesk firefox rhythmbox team -y
sudo apt-get remove --purge libreoffice*
sudo apt-get clean -y
sudo apt-get remove fonts-opensymbol libreoffice libreoffice-\* openoffice.org-dtd-officedocument1.0 python\*-uno uno-libs3-\* ure ure-dbg -y
sudo apt-get remove --purge libreoffice-core -y
sudo apt-get remove libreoffice-core -y
sudo apt purge -y libreoffice*
sudo apt-get remove --purge -y libreoffice*
sudo apt purge aisleriot gnome-sudoku mahjongg ace-of-penguins gnomine gbrainy gnome-sushi gnome-taquin gnome-tetravex  gnome-robots gnome-chess lightsoff swell-foop quadrapassel -y
sudo apt-get autoremove -y
sudo apt autoremove -y
sudo apt update -y
sudo apt-get install build-essential net-tools -y
#sudo apt-get install libaio1 default-jdk openssh-server ssh libpango1.0-0 dpkg-dev libgtkglext1 -y
sudo apt update --fix-missing -y
sudo apt --fix-broken install -y
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sudo apt update
sudo dpkg -i anydesk*.deb
sudo apt install -f -y
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
#dpkg -i kodak*.deb
#dpkg -i lib*.deb
sudo apt update --fix-missing
sudo apt --fix-broken install
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
sudo adduser delhivery netdev
exit
            ;;
        "Mannual Software Installation" )
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
            PS3='Please enter your choice for Mannual Software Installation : '
options=("Chrome-Stable" "Latest Chrome" "WPS-Stable Office" "Latest WPS Office" "Anydesk" "ME - Manage Engine" "Kaspersky Antivirus" "Remove Temp" "Repair Wi-fi" "Repair User" "Download Software" "Find/Remove Unwanted Software" "asi Update")
select opt in "${options[@]}"
do
    case $opt in
        "Chrome-Stable")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
            exit
            ;;
               "Latest Chrome")
            echo "you chose choice $REPLY which is $opt. Please Wait...!" 
nohup gedit &>/dev/null &
exit

            ;;
        "WPS-Stable Office")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"

            ;;
            
        "Latest WPS Office")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
kill -9 -1

            ;;
            "Anydesk")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
kill -9 -1

            ;;
             "ME - Manage Engine")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
kill -9 -1

            ;;
             "Kaspersky Antivirus")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
kill -9 -1

            ;;
             "WPS-Stable Office")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
kill -9 -1

            ;;
             "WPS-Stable Office")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
kill -9 -1

            ;;
            "Latest WPS Office")
            break
exit
exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

exit
            ;;
        "Custom Audit")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
nohup rdesktop -f 192.168.1.100 &>/dev/null &
exit
            ;;
      "Connect to Windows Server")
            echo "you chose choice $REPLY which is $opt. Please Wait...!" 
nohup gedit &>/dev/null &
exit

            ;;
        "Repair Software/Reinstallation")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
kill -9 -1

            ;;
            "RemoveTemp")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
nohup rdesktop -f 192.168.1.100 &>/dev/null &
exit
            ;;
 "Repair Wi-fi")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"

echo "asking for a administrator password while connect to wifi in ubuntu- Ubutnu Admin System policy
Wifi not connecting, Wifi need admin password for connect, Wifi asking for administrative password, Wifi not working in ubuntu.
For ubuntu system : -
step 1 : Open Terminal.
step 2 : Login with sudo user.
setp 3 : Type the below command and [PRESS ENTER KEY].

gedit /usr/share/polkit-1/actions/org.freedesktop.NetworkManager.policy
Note : This  will open gedit network manager file.Do not delete any lines in this file.

step 4 : Copy below Command.

<allow_active>auth_admin_keep</allow_active>

step 5 : find the keyword using ctrl + f

step 6 :Replace with this lines



Step 7 : Save FIle with [ Ctrl + x ] & Exit.

Step 8 : Reboot the system is optional."

exit
            ;;
           "Wifi Rights to standard users")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
  
            sudo adduser delhivery netdev
                        echo "The wifi access privileges of standard users are changed successfully. Standard users are now able to connect to various wifi networks."
 exit           
            ;;
           
           "Install Wifi Driver")
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
           "Uninstall All Software")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
  
           sudo apt remove anydesk -y
sudo apt purge anydesk firefox rhythmbox teamviewer chromium* -y
sudo apt-get remove --purge libreoffice*
sudo apt-get clean -y
sudo apt-get remove fonts-opensymbol libreoffice libreoffice-\* openoffice.org-dtd-officedocument1.0 python\*-uno uno-libs3-\* ure ure-dbg -y
sudo apt-get remove --purge libreoffice-core -y
sudo apt-get remove libreoffice-core -y
sudo apt purge -y libreoffice*
sudo apt-get remove --purge -y libreoffice*
sudo apt purge aisleriot gnome-sudoku mahjongg ace-of-penguins gnomine gbrainy gnome-sushi gnome-taquin gnome-tetravex  gnome-robots gnome-chess lightsoff swell-foop quadrapassel -y
sudo apt-get autoremove -y
sudo apt autoremove -y
sudo apt update -y
            exit           
            ;;
            
    "ssh")
            echo "you chose choice $REPLY which is $opt. Please Wait...!"
sudo cat > /etc/ssh/sshd_config << EOF
# Package generated configuration file
# See the sshd_config(5) manpage for details
 
# What ports, IPs and protocols we listen for
Port 22
# Use these options to restrict which interfaces/protocols sshd will bind to
#ListenAddress ::
#ListenAddress 0.0.0.0
Protocol 2
# HostKeys for protocol version 2
HostKey /etc/ssh/ssh_host_rsa_key
HostKey /etc/ssh/ssh_host_dsa_key
HostKey /etc/ssh/ssh_host_ecdsa_key
HostKey /etc/ssh/ssh_host_ed25519_key
#Privilege Separation is turned on for security
UsePrivilegeSeparation yes
 
# Lifetime and size of ephemeral version 1 server key
KeyRegenerationInterval 3600
ServerKeyBits 1024
 
# Logging
SyslogFacility AUTH
LogLevel INFO
 
# Authentication:
LoginGraceTime 120
PermitRootLogin yes
StrictModes yes
 
RSAAuthentication yes
PubkeyAuthentication yes
#AuthorizedKeysFile %h/.ssh/authorized_keys
 
# Don't read the user's ~/.rhosts and ~/.shosts files
IgnoreRhosts yes
# For this to work you will also need host keys in /etc/ssh_known_hosts
RhostsRSAAuthentication no
# similar for protocol version 2
HostbasedAuthentication no
# Uncomment if you don't trust ~/.ssh/known_hosts for RhostsRSAAuthentication
#IgnoreUserKnownHosts yes
 
# To enable empty passwords, change to yes (NOT RECOMMENDED)
PermitEmptyPasswords no
 
# Change to yes to enable challenge-response passwords (beware issues with
# some PAM modules and threads)
ChallengeResponseAuthentication no
 
# Change to no to disable tunnelled clear text passwords
#PasswordAuthentication yes
 
# Kerberos options
#KerberosAuthentication no
#KerberosGetAFSToken no
#KerberosOrLocalPasswd yes
#KerberosTicketCleanup yes
 
# GSSAPI options
#GSSAPIAuthentication no
#GSSAPICleanupCredentials yes
 
X11Forwarding yes
X11DisplayOffset 10
PrintMotd no
PrintLastLog yes
TCPKeepAlive yes
#UseLogin no
 
#MaxStartups 10:30:60
#Banner /etc/issue.net
 
# Allow client to pass locale environment variables
AcceptEnv LANG LC_*
 
Subsystem sftp /usr/lib/openssh/sftp-server
 
# Set this to 'yes' to enable PAM authentication, account processing,
# and session processing. If this is enabled, PAM authentication will
# be allowed through the ChallengeResponseAuthentication and
# PasswordAuthentication.  Depending on your PAM configuration,
# PAM authentication via ChallengeResponseAuthentication may bypass
# the setting of "PermitRootLogin without-password".
# If you just want the PAM account and session checks to run without
# PAM authentication, then enable this but set PasswordAuthentication
# and ChallengeResponseAuthentication to 'no'.
UsePAM yes

EOF
sudo service ssh restart
exit
            ;;
       
        "Find User")
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
        "SSH CHECKING")
            echo "you chose choice $REPLY which is $opt. Please Wait...!" 

#Plugin for checking if the SSH service is running

SERVICE='ssh'

if [ ps aux | grep -v grep | grep $SERVICE > /dev/null ];
then
        exit 0
else
        exit 1
fi
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

#rdesktop -f ip
#press enter to connect
