#!/bin/bash

# enable auth login  EOF
sudo vi /usr/share/lightdm/lightdm.conf.d/60-lightdm-gtk-greeter.conf
[SeatDefaults]
greeter-session=lightdm-gtk-greeter
autologin-user=yjkim1
# EOF


# disable problam detection couse openfortivpn
sudo vi /etc/default/apport 
enabled=0 # 0 disable, 1 enable 

# user grant root privileges an sudoers
sudo bash -c 'cat << EOF > /etc/sudoers.d/yjkim1
yjkim1 ALL=(ALL:ALL)ALL
EOF'
sudo usermod -aG sudo yjkim1

