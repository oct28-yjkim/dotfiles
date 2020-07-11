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
