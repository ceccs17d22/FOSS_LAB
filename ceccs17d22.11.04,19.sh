s4d1@CC2-24:~$ cd /
s4d1@CC2-24:/$ cd etc
s4d1@CC2-24:/etc$ cd vsftpd
bash: cd: vsftpd: No such file or directory
s4d1@CC2-24:/etc$ ls
acpi                           hosts                    profile
adduser.conf                   hosts~                   profile.d
alternatives                   hosts.allow              protocols
anacrontab                     hosts.deny               pulse
apg.conf                       hp                       python
apm                            ifplugd                  python2.7
apparmor                       init                     python3
apparmor.d                     init.d                   python3.4
apport                         initramfs-tools          rc0.d
apt                            inputrc                  rc1.d
aptdaemon                      insserv                  rc2.d
at-spi2                        insserv.conf             rc3.d
avahi                          insserv.conf.d           rc4.d
bash.bashrc                    iproute2                 rc5.d
bash_completion                issue                    rc6.d
bash_completion.d              issue.net                rc.local
bindresvport.blacklist         java-7-openjdk           rcS.d
blkid.conf                     kbd                      resolvconf
blkid.tab                      kernel                   resolv.conf
bluetooth                      kernel-img.conf          rmt
brlapi.key                     kerneloops.conf          rpc
brltty                         ldap                     rsyslog.conf
brltty.conf                    ld.so.cache              rsyslog.d
ca-certificates                ld.so.conf               samba
ca-certificates.conf           ld.so.conf.d             sane.d
ca-certificates.conf.dpkg-old  legal                    securetty
calendar                       libaudit.conf            security
chatscripts                    libnl-3                  selinux
click                          libpaper.d               sensors3.conf
colord.conf                    libreoffice              sensors.d
compizconfig                   lightdm                  services
console-setup                  lintianrc                sgml
cracklib                       locale.alias             shadow
cron.d                         localtime                shadow-
cron.daily                     logcheck                 shells
cron.hourly                    login.defs               signond.conf
cron.monthly                   logrotate.conf           signon-ui
crontab                        logrotate.d              skel
cron.weekly                    lsb-release              speech-dispatcher
cups                           ltrace.conf              ssh
cupshelpers                    machine-id               ssl
dbus-1                         magic                    subgid
dconf                          magic.mime               subgid-
debconf.conf                   mailcap                  subuid
debian_version                 mailcap.order            subuid-
default                        manpath.config           sudoers
deluser.conf                   mime.types               sudoers.d
depmod.d                       mke2fs.conf              sysctl.conf
dhcp                           modprobe.d               sysctl.d
dictionaries-common            modules                  sysstat
dnsmasq.d                      modules-load.d           systemd
doc-base                       mtab                     system-image
dpkg                           mtab.fuselock            terminfo
drirc                          mtools.conf              thermald
emacs                          mysql                    thunderbird
environment                    nanorc                   timezone
firefox                        netscsid.conf            ucf.conf
fonts                          network                  udev
fstab                          NetworkManager           udisks2
fstab.d                        networks                 ufw
ftpusers                       newt                     updatedb.conf
fuse.conf                      nginx                    update-manager
gai.conf                       nsswitch.conf            update-motd.d
gconf                          obex-data-server         update-notifier
gdb                            opt                      UPower
ghostscript                    os-release               upstart-xsessions
gnome                          pam.conf                 usb_modeswitch.conf
gnome-app-install              pam.d                    usb_modeswitch.d
gnome-settings-daemon          papersize                vim
groff                          parallel                 vsftpd.conf
group                          passwd                   vtrgb
group-                         passwd-                  wgetrc
grub.d                         pcmcia                   wodim.conf
gshadow                        perl                     wpa_supplicant
gshadow-                       pki                      X11
gtk-2.0                        pm                       xdg
gtk-3.0                        pnm2ppa.conf             xml
hdparm.conf                    polkit-1                 xul-ext
host.conf                      popularity-contest.conf  zsh_command_not_found
hostname                       ppp
hostname~                      printcap
s4d1@CC2-24:/etc$ sudo gedit vsftpd.conf 
[sudo] password for s4d1: 

(gedit:15595): Gtk-WARNING **: Calling Inhibit failed: GDBus.Error:org.freedesktop.DBus.Error.ServiceUnknown: The name org.gnome.SessionManager was not provided by any .service files

(gedit:15595): Gtk-WARNING **: Calling Inhibit failed: GDBus.Error:org.freedesktop.DBus.Error.ServiceUnknown: The name org.gnome.SessionManager was not provided by any .service files
^Cs4d1@CC2-24:/etc$ cd ..
s4d1@CC2-24:/$ sudo systemctl restart vsftpd.service
s4d1@CC2-24:/$ sudo systemctl start vsftpd.service
s4d1@CC2-24:/$ sudo systemctl enable vsftpd.service
ln -s '/etc/systemd/system/vsftpd.service' '/etc/systemd/system/multi-user.target.wants/vsftpd.service'
s4d1@CC2-24:/$ sudo ufw allow 20/tcp
Rules updated
Rules updated (v6)
s4d1@CC2-24:/$ sudo ufw allow 21/tcp
Rules updated
Rules updated (v6)
s4d1@CC2-24:/$ sudo ufw status
Status: inactive
s4d1@CC2-24:/$ sudo ufw enable
Firewall is active and enabled on system startup
s4d1@CC2-24:/$ sudo ufw status
Status: active

To                         Action      From
--                         ------      ----
Nginx HTTP                 ALLOW       Anywhere
Nginx HTTPS                ALLOW       Anywhere
Apache                     ALLOW       Anywhere
Apache Full                ALLOW       Anywhere
20/tcp                     ALLOW       Anywhere
21/tcp                     ALLOW       Anywhere
Nginx HTTP (v6)            ALLOW       Anywhere (v6)
Nginx HTTPS (v6)           ALLOW       Anywhere (v6)
Apache (v6)                ALLOW       Anywhere (v6)
Apache Full (v6)           ALLOW       Anywhere (v6)
20/tcp (v6)                ALLOW       Anywhere (v6)
21/tcp (v6)                ALLOW       Anywhere (v6)

s4d1@CC2-24:/$ sudo cp /etc/vsftpd.config /etc/vsftpd.conf.orig
cp: cannot stat ‘/etc/vsftpd.config’: No such file or directory
s4d1@CC2-24:/$ cd etc
s4d1@CC2-24:/etc$ ls
acpi                           hosts                    profile
adduser.conf                   hosts~                   profile.d
alternatives                   hosts.allow              protocols
anacrontab                     hosts.deny               pulse
apg.conf                       hp                       python
apm                            ifplugd                  python2.7
apparmor                       init                     python3
apparmor.d                     init.d                   python3.4
apport                         initramfs-tools          rc0.d
apt                            inputrc                  rc1.d
aptdaemon                      insserv                  rc2.d
at-spi2                        insserv.conf             rc3.d
avahi                          insserv.conf.d           rc4.d
bash.bashrc                    iproute2                 rc5.d
bash_completion                issue                    rc6.d
bash_completion.d              issue.net                rc.local
bindresvport.blacklist         java-7-openjdk           rcS.d
blkid.conf                     kbd                      resolvconf
blkid.tab                      kernel                   resolv.conf
bluetooth                      kernel-img.conf          rmt
brlapi.key                     kerneloops.conf          rpc
brltty                         ldap                     rsyslog.conf
brltty.conf                    ld.so.cache              rsyslog.d
ca-certificates                ld.so.conf               samba
ca-certificates.conf           ld.so.conf.d             sane.d
ca-certificates.conf.dpkg-old  legal                    securetty
calendar                       libaudit.conf            security
chatscripts                    libnl-3                  selinux
click                          libpaper.d               sensors3.conf
colord.conf                    libreoffice              sensors.d
compizconfig                   lightdm                  services
console-setup                  lintianrc                sgml
cracklib                       locale.alias             shadow
cron.d                         localtime                shadow-
cron.daily                     logcheck                 shells
cron.hourly                    login.defs               signond.conf
cron.monthly                   logrotate.conf           signon-ui
crontab                        logrotate.d              skel
cron.weekly                    lsb-release              speech-dispatcher
cups                           ltrace.conf              ssh
cupshelpers                    machine-id               ssl
dbus-1                         magic                    subgid
dconf                          magic.mime               subgid-
debconf.conf                   mailcap                  subuid
debian_version                 mailcap.order            subuid-
default                        manpath.config           sudoers
deluser.conf                   mime.types               sudoers.d
depmod.d                       mke2fs.conf              sysctl.conf
dhcp                           modprobe.d               sysctl.d
dictionaries-common            modules                  sysstat
dnsmasq.d                      modules-load.d           systemd
doc-base                       mtab                     system-image
dpkg                           mtab.fuselock            terminfo
drirc                          mtools.conf              thermald
emacs                          mysql                    thunderbird
environment                    nanorc                   timezone
firefox                        netscsid.conf            ucf.conf
fonts                          network                  udev
fstab                          NetworkManager           udisks2
fstab.d                        networks                 ufw
ftpusers                       newt                     updatedb.conf
fuse.conf                      nginx                    update-manager
gai.conf                       nsswitch.conf            update-motd.d
gconf                          obex-data-server         update-notifier
gdb                            opt                      UPower
ghostscript                    os-release               upstart-xsessions
gnome                          pam.conf                 usb_modeswitch.conf
gnome-app-install              pam.d                    usb_modeswitch.d
gnome-settings-daemon          papersize                vim
groff                          parallel                 vsftpd.conf
group                          passwd                   vsftpd.conf~
group-                         passwd-                  vtrgb
grub.d                         pcmcia                   wgetrc
gshadow                        perl                     wodim.conf
gshadow-                       pki                      wpa_supplicant
gtk-2.0                        pm                       X11
gtk-3.0                        pnm2ppa.conf             xdg
hdparm.conf                    polkit-1                 xml
host.conf                      popularity-contest.conf  xul-ext
hostname                       ppp                      zsh_command_not_found
hostname~                      printcap
s4d1@CC2-24:/etc$ cd ..
s4d1@CC2-24:/$ sudo cp /etc/vsftpd.conf /etc/vsftpd.conf.orig
s4d1@CC2-24:/$ sudo gedit /etc/vsftpd.conf

(gedit:15892): Gtk-WARNING **: Calling Inhibit failed: GDBus.Error:org.freedesktop.DBus.Error.ServiceUnknown: The name org.gnome.SessionManager was not provided by any .service files

(gedit:15892): Gtk-WARNING **: Calling Inhibit failed: GDBus.Error:org.freedesktop.DBus.Error.ServiceUnknown: The name org.gnome.SessionManager was not provided by any .service files
^Cs4d1@CC2-24:/$ systemctl restart vsftpd
Failed to issue method call: Access denied
s4d1@CC2-24:/$ sudosystemctl restart vsftpd
sudosystemctl: command not found
s4d1@CC2-24:/$ sudo systemctl restart vsftpd
s4d1@CC2-24:/$ sudo useradd -m -c "Pythagoras,Contributor" -s /bin/bash pythagoras
s4d1@CC2-24:/$ sudo passwd pythagoras
Enter new UNIX password: 
Retype new UNIX password: 
passwd: password updated successfully
s4d1@CC2-24:/$ echo "pythagoras" | sudo tee -a /etc/vsftpd.userlist
pythagoras
s4d1@CC2-24:/$ cat /etc/vsftpd.userlist
pythagoras
s4d1@CC2-24:/$ ftp 192.168.0.214
Connected to 192.168.0.214.
220 (vsFTPd 3.0.2)
Name (192.168.0.214:s4d1): anonymous
331 Please specify the password.
Password:
530 Login incorrect.
Login failed.
ftp> ^C
ftp> exit
221 Goodbye.
s4d1@CC2-24:/$ ftp 192.168.0.214
Connected to 192.168.0.214.
220 (vsFTPd 3.0.2)
Name (192.168.0.214:s4d1): pythagoras
331 Please specify the password.
Password:
230 Login successful.
Remote system type is UNIX.
Using binary mode to transfer files.
ftp> ls
200 PORT command successful. Consider using PASV.
150 Here comes the directory listing.
-rw-r--r--    1 1014     1014         8980 Oct 04  2013 examples.desktop
226 Directory send OK.
ftp> lcd
Local directory now /
ftp> lcd /home
Local directory now /home
ftp> lls
?Invalid command
ftp> ls
421 Timeout.
ftp> lcd
Local directory now /home
ftp> exit
s4d1@CC2-24:/$ ftp 192.168.0.105
Connected to 192.168.0.105.
220 (vsFTPd 3.0.3)
Name (192.168.0.105:s4d1): joremote
331 Please specify the password.
Password:
230 Login successful.
Remote system type is UNIX.
Using binary mode to transfer files.
ftp> ls
200 PORT command successful. Consider using PASV.
150 Here comes the directory listing.
drwxr-xr-x    2 1001     1001         4096 Apr 11 11:32 files
226 Directory send OK.
ftp> exit
^C


