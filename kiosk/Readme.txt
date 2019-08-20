start mint or whatever (i used mint becasue it already had all the files i needed installed)
set root password (sudo passwd enter toor)
log out
ctrl + alt + f1 login as root
set UID and GID as 1000 if not already. (essential or kiosk won't work)


usermod -u <NEWUID> <LOGIN>    
groupmod -g <NEWGID> <GROUP>
find / -user <OLDUID> -exec chown -h <NEWUID> {} \;
find / -group <OLDGID> -exec chgrp -h <NEWGID> {} \;
usermod -g <NEWGID> <LOGIN>
exit
login mint
just press enter no password
startx to start gui
check user id = 1000 gid=1000 etc


install chrome or whatever want to add

get base kiosk iso to desktop and extract

(might have to install tools)
example: unsquashfs 003-settings.xzm

**don't modify any premade modules create a new module or some stuff wont' work like ssh**


ex. modify folders  - (copy .config folder to /home/guest (after installing chrome and extensions and tweaking etc)
ex. modify chrome.json 
"ExtensionInstallWhitelist": ["extensionid"]
"ExtensionInstallForcelist": ["extensionid;https://clients2.google.com/service/update2/crx"]

any more chrome extension want to add etc.. https://www.chromium.org/administrators/policy-list-3


ex. mksquashfs squashfs-root 003-settings.xzm -comp xz -b 256K -Xbcj x86 -noappend
ex. mksquashfs squashfs-root newmodule.xzm -comp xz -b 256k -Xbcj x86 -noappend

rm -rf squashfs-root

edited /etc/rc.d/rc.inet1 and added rc.inet2 as backup because overwrites rc.inet1 and same for wpa_supplicant.conf and wpa_supplicant1.conf

change .jpg in doc so don't have porteus jpg

./make_iso.sh (may have to download mkisofs from porteus and move to another folder. and chmod +x

isohybrid Porteus-Kiosk.iso 
rename if want
burn to whatever
dd if=kiosk.iso of=dev/sdx?



some References to help get started.

http://pascal-mietlicki.fr/en/blog/post/work/porteus-kiosk-specific-linux-public-access/
https://muffinresearch.co.uk/linux-changing-uids-and-gids-for-user/
http://linuxcommand.org/lts0070.php
http://porteus-kiosk.org/modules.html
http://porteus-kiosk.org/kiosk-customization.html
https://forum.porteus.org/viewtopic.php?f=81&t=4912
