#!/usr/bin/env bash 

: ' 
yjkim1@ntels-sn-di-yjkim1:~/workspace/dotfiles$ sudo blkid
/dev/sda7: UUID="258f758a-4e92-4a26-bdb3-a28a82a61941" TYPE="ext4" PARTUUID="2576005c-eccc-498a-a0a7-29af84fff9ac"
/dev/loop0: TYPE="squashfs"
/dev/loop1: TYPE="squashfs"
/dev/loop2: TYPE="squashfs"
/dev/loop3: TYPE="squashfs"
/dev/sda1: UUID="E48B-D62E" TYPE="vfat" PARTLABEL="EFI system partition" PARTUUID="8cc4b81f-fc19-443e-a091-589f507821db"
/dev/sda2: PARTLABEL="Microsoft reserved partition" PARTUUID="e577bdc2-00b8-4109-818b-26c16cc414df"
/dev/sda3: UUID="D81294071293E8B0" TYPE="ntfs" PARTLABEL="Basic data partition" PARTUUID="6c55d7dd-32ce-4446-8dbf-eae83adf16bb"
/dev/sda4: UUID="60E40DFCE40DD4E6" TYPE="ntfs" PARTUUID="29353a45-3231-46e4-9c6f-428a3d3e7ef8"
/dev/sda5: UUID="10DE97EBDE97C6FE" TYPE="ntfs" PARTLABEL="Basic data partition" PARTUUID="0c33d8b3-340e-43b9-8736-2067e5b23cf1"     # permantly mount target 
/dev/sda6: UUID="8D15-4065" TYPE="vfat" PARTUUID="bec9e381-8bae-403a-83ee-5123be8343f0"

UUID=10DE97EBDE97C6FE /home/yjkim1/d ntfs rw,nosuid,nodev,relatime,user_id=0,group_id=0,default_permissions,allow_other 0 0  
'

echo '
UUID=10DE97EBDE97C6FE /home/yjkim1/d ntfs rw,nosuid,nodev,relatime,user_id=0,group_id=0,default_permissions,allow_other 0 0  
' >> /etc/fstab 

mount -a 

: '
# result 
yjkim1@ntels-sn-di-yjkim1:~/workspace/dotfiles$ lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
loop0    7:0    0    55M  1 loop /snap/core18/1705
loop1    7:1    0  27.1M  1 loop /snap/snapd/7264
loop2    7:2    0    16K  1 loop /snap/software-boutique/54
loop3    7:3    0  14.9M  1 loop /snap/ubuntu-mate-welcome/524
sda      8:0    0 238.5G  0 disk 
├─sda1   8:1    0   100M  0 part /boot/efi
├─sda2   8:2    0    16M  0 part 
├─sda3   8:3    0  97.3G  0 part 
├─sda4   8:4    0   532M  0 part 
├─sda5   8:5    0 101.5G  0 part /home/yjkim1/d
├─sda6   8:6    0    95M  0 part 
└─sda7   8:7    0    39G  0 part /

'
