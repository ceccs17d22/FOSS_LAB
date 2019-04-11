Found linux image: /boot/vmlinuz-4.4.0-143-generic
Found initrd image: /boot/initrd.img-4.4.0-143-generic
Found linux image: /boot/vmlinuz-3.16.0-77-generic
Found initrd image: /boot/initrd.img-3.16.0-77-generic
Found linux image: /boot/vmlinuz-3.16.0-30-generic
Found initrd image: /boot/initrd.img-3.16.0-30-generic
Adding boot menu entry for EFI firmware configuration
done
Removing linux-image-3.16.0-30-generic (3.16.0-30.40~14.04.1) ...
Examining /etc/kernel/postrm.d .
run-parts: executing /etc/kernel/postrm.d/initramfs-tools 3.16.0-30-generic /boot/vmlinuz-3.16.0-30-generic
update-initramfs: Deleting /boot/initrd.img-3.16.0-30-generic
run-parts: executing /etc/kernel/postrm.d/zz-update-grub 3.16.0-30-generic /boot/vmlinuz-3.16.0-30-generic
Generating grub configuration file ...
Warning: Setting GRUB_TIMEOUT to a non-zero value when GRUB_HIDDEN_TIMEOUT is set is no longer supported.
Found linux image: /boot/vmlinuz-4.4.0-144-generic
Found initrd image: /boot/initrd.img-4.4.0-144-generic
Found linux image: /boot/vmlinuz-4.4.0-143-generic
Found initrd image: /boot/initrd.img-4.4.0-143-generic
Found linux image: /boot/vmlinuz-3.16.0-77-generic
Found initrd image: /boot/initrd.img-3.16.0-77-generic
Adding boot menu entry for EFI firmware configuration
done
Removing nginx-core (1.4.6-1ubuntu3.9) ...
Removing nginx-common (1.4.6-1ubuntu3.9) ...
Processing triggers for libc-bin (2.19-0ubuntu6.14) ...
Processing triggers for man-db (2.6.7.1-1ubuntu1) ...
s4d1@CC2-24:~$ sudo ufw app list
Available applications:
  Apache
  Apache Full
  Apache Secure
  CUPS
  Nginx Full
  Nginx HTTP
  Nginx HTTPS
  OpenSSH
s4d1@CC2-24:~$ whereis apache2
apache2: /etc/apache2
s4d1@CC2-24:~$ sudo rm -rf /etc/apache2
s4d1@CC2-24:~$ sudo ufw app list
Available applications:
  Apache
  Apache Full
  Apache Secure
  CUPS
  Nginx Full
  Nginx HTTP
  Nginx HTTPS
  OpenSSH
s4d1@CC2-24:~$ sudo apt-get --purge remove apache2
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following packages will be REMOVED:
  apache2*
0 upgraded, 0 newly installed, 1 to remove and 47 not upgraded.
After this operation, 0 B of additional disk space will be used.
Do you want to continue? [Y/n] y
(Reading database ... 240394 files and directories currently installed.)
Removing apache2 (2.4.7-1ubuntu4.22) ...
Purging configuration files for apache2 (2.4.7-1ubuntu4.22) ...
dpkg: warning: while removing apache2, directory '/var/www/html' not empty so not removed
s4d1@CC2-24:~$ sudo apt-get remove apache2-common
Reading package lists... Done
Building dependency tree       
Reading state information... Done
E: Unable to locate package apache2-common
s4d1@CC2-24:~$ ^C
s4d1@CC2-24:~$ sudo apt-get install apache2
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following extra packages will be installed:
  apache2-bin apache2-data libapr1 libaprutil1 libaprutil1-dbd-sqlite3
  libaprutil1-ldap
Suggested packages:
  apache2-doc apache2-suexec-pristine apache2-suexec-custom apache2-utils
The following NEW packages will be installed:
  apache2 apache2-bin apache2-data libapr1 libaprutil1 libaprutil1-dbd-sqlite3
  libaprutil1-ldap
0 upgraded, 7 newly installed, 0 to remove and 47 not upgraded.
Need to get 0 B/1,273 kB of archives.
After this operation, 5,264 kB of additional disk space will be used.
Do you want to continue? [Y/n] y
Selecting previously unselected package libapr1:amd64.
(Reading database ... 240239 files and directories currently installed.)
Preparing to unpack .../libapr1_1.5.0-1_amd64.deb ...
Unpacking libapr1:amd64 (1.5.0-1) ...
Selecting previously unselected package libaprutil1:amd64.
Preparing to unpack .../libaprutil1_1.5.3-1_amd64.deb ...
Unpacking libaprutil1:amd64 (1.5.3-1) ...
Selecting previously unselected package libaprutil1-dbd-sqlite3:amd64.
Preparing to unpack .../libaprutil1-dbd-sqlite3_1.5.3-1_amd64.deb ...
Unpacking libaprutil1-dbd-sqlite3:amd64 (1.5.3-1) ...
Selecting previously unselected package libaprutil1-ldap:amd64.
Preparing to unpack .../libaprutil1-ldap_1.5.3-1_amd64.deb ...
Unpacking libaprutil1-ldap:amd64 (1.5.3-1) ...
Selecting previously unselected package apache2-bin.
Preparing to unpack .../apache2-bin_2.4.7-1ubuntu4.22_amd64.deb ...
Unpacking apache2-bin (2.4.7-1ubuntu4.22) ...
Selecting previously unselected package apache2-data.
Preparing to unpack .../apache2-data_2.4.7-1ubuntu4.22_all.deb ...
Unpacking apache2-data (2.4.7-1ubuntu4.22) ...
Selecting previously unselected package apache2.
Preparing to unpack .../apache2_2.4.7-1ubuntu4.22_amd64.deb ...
Unpacking apache2 (2.4.7-1ubuntu4.22) ...
Processing triggers for man-db (2.6.7.1-1ubuntu1) ...
Processing triggers for ufw (0.34~rc-0ubuntu2) ...
Rules updated for profile 'Nginx HTTP'
Rules updated for profile 'Nginx HTTPS'

Processing triggers for ureadahead (0.100.0-16) ...
Setting up libapr1:amd64 (1.5.0-1) ...
Setting up libaprutil1:amd64 (1.5.3-1) ...
Setting up libaprutil1-dbd-sqlite3:amd64 (1.5.3-1) ...
Setting up libaprutil1-ldap:amd64 (1.5.3-1) ...
Setting up apache2-bin (2.4.7-1ubuntu4.22) ...
Setting up apache2-data (2.4.7-1ubuntu4.22) ...
Setting up apache2 (2.4.7-1ubuntu4.22) ...
Enabling module mpm_event.
Enabling module authz_core.
Enabling module authz_host.
Enabling module authn_core.
Enabling module auth_basic.
Enabling module access_compat.
Enabling module authn_file.
Enabling module authz_user.
Enabling module alias.
Enabling module dir.
Enabling module autoindex.
Enabling module env.
Enabling module mime.
Enabling module negotiation.
Enabling module setenvif.
Enabling module filter.
Enabling module deflate.
Enabling module status.
Enabling conf charset.
Enabling conf localized-error-pages.
Enabling conf other-vhosts-access-log.
Enabling conf security.
Enabling conf serve-cgi-bin.
Enabling site 000-default.
 * Starting web server apache2                                                  AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 127.0.1.1. Set the 'ServerName' directive globally to suppress this message
 * 
Processing triggers for libc-bin (2.19-0ubuntu6.14) ...
Processing triggers for ufw (0.34~rc-0ubuntu2) ...
Rules updated for profile 'Apache'
Rules updated for profile 'Nginx HTTP'
Rules updated for profile 'Nginx HTTPS'

Processing triggers for ureadahead (0.100.0-16) ...
s4d1@CC2-24:~$ sudo ufw app list
Available applications:
  Apache
  Apache Full
  Apache Secure
  CUPS
  Nginx Full
  Nginx HTTP
  Nginx HTTPS
  OpenSSH
s4d1@CC2-24:~$ sudo ufw allow 'Apache Full'
Rules updated
Rules updated (v6)
s4d1@CC2-24:~$ sudo ufw status
Status: inactive
s4d1@CC2-24:~$ sudo ufw allow 'Apache Full'
Skipping adding existing rule
Skipping adding existing rule (v6)
s4d1@CC2-24:~$ sudo ufw status
Status: inactive
s4d1@CC2-24:~$ ^C
s4d1@CC2-24:~$ sudo ufw default allow
Default incoming policy changed to 'allow'
(be sure to update your rules accordingly)
s4d1@CC2-24:~$ sudo ufw status
Status: inactive
s4d1@CC2-24:~$ sudo systemctl status apache2
apache2.service
   Loaded: error (Reason: No such file or directory)
   Active: inactive (dead)

s4d1@CC2-24:~$ sudo systemctl status apache2
apache2.service
   Loaded: error (Reason: No such file or directory)
   Active: inactive (dead)

s4d1@CC2-24:~$ sudo systemctl start apache2
Failed to issue method call: Unit apache2.service failed to load: No such file or directory. See system logs and 'systemctl status apache2.service' for details.
s4d1@CC2-24:~$ sudo systemctl start apache
Failed to issue method call: Unit apache.service failed to load: No such file or directory. See system logs and 'systemctl status apache.service' for details.
s4d1@CC2-24:~$ sudo systemctl stop nginx
s4d1@CC2-24:~$ sudo systemctl start apache
Failed to issue method call: Unit apache.service failed to load: No such file or directory. See system logs and 'systemctl status apache.service' for details.
s4d1@CC2-24:~$ sudo systemctl start apache2
Failed to issue method call: Unit apache2.service failed to load: No such file or directory. See system logs and 'systemctl status apache2.service' for details.
s4d1@CC2-24:~$ ^C
s4d1@CC2-24:~$ sudo service apache2 status
 * apache2 is running
s4d1@CC2-24:~$ sudo service apache2 start
 * Starting web server apache2                                                   * 
s4d1@CC2-24:~$ sudo ufw status
Status: inactive
s4d1@CC2-24:~$ sudo systemctl status apache2
apache2.service
   Loaded: error (Reason: No such file or directory)
   Active: inactive (dead)

s4d1@CC2-24:~$ ^C
s4d1@CC2-24:~$ systemctl list-unit-files
Failed to issue method call: Access denied
s4d1@CC2-24:~$ sudo systemctl status apache2
apache2.service
   Loaded: error (Reason: No such file or directory)
   Active: inactive (dead)

s4d1@CC2-24:~$ sudo apt-get remove --purge apache2 apache2-utils
Reading package lists... Done
Building dependency tree       
Reading state information... Done
Package 'apache2-utils' is not installed, so not removed
The following packages were automatically installed and are no longer required:
  apache2-bin apache2-data libapr1 libaprutil1 libaprutil1-dbd-sqlite3
  libaprutil1-ldap
Use 'apt-get autoremove' to remove them.
The following packages will be REMOVED:
  apache2*
0 upgraded, 0 newly installed, 1 to remove and 47 not upgraded.
After this operation, 476 kB disk space will be freed.
Do you want to continue? [Y/n] y
(Reading database ... 240872 files and directories currently installed.)
Removing apache2 (2.4.7-1ubuntu4.22) ...
 * Stopping web server apache2                                                   * 
Purging configuration files for apache2 (2.4.7-1ubuntu4.22) ...
dpkg: warning: while removing apache2, directory '/var/www/html' not empty so not removed
Processing triggers for man-db (2.6.7.1-1ubuntu1) ...
Processing triggers for ufw (0.34~rc-0ubuntu2) ...
Rules updated for profile 'Nginx HTTP'
Rules updated for profile 'Nginx HTTPS'

s4d1@CC2-24:~$ sudo rm -rf /etc/apache2
s4d1@CC2-24:~$ sudo ufw applist
ERROR: Invalid syntax

Usage: ufw COMMAND

Commands:
 enable                          enables the firewall
 disable                         disables the firewall
 default ARG                     set default policy
 logging LEVEL                   set logging to LEVEL
 allow ARGS                      add allow rule
 deny ARGS                       add deny rule
 reject ARGS                     add reject rule
 limit ARGS                      add limit rule
 delete RULE|NUM                 delete RULE
 insert NUM RULE                 insert RULE at NUM
 reload                          reload firewall
 reset                           reset firewall
 status                          show firewall status
 status numbered                 show firewall status as numbered list of RULES
 status verbose                  show verbose firewall status
 show ARG                        show firewall report
 version                         display version information

Application profile commands:
 app list                        list application profiles
 app info PROFILE                show information on PROFILE
 app update PROFILE              update PROFILE
 app default ARG                 set default application policy

s4d1@CC2-24:~$ sudo ufw app list
Available applications:
  CUPS
  Nginx Full
  Nginx HTTP
  Nginx HTTPS
  OpenSSH
s4d1@CC2-24:~$ ifconfig
eth0      Link encap:Ethernet  HWaddr 38:d5:47:b8:da:8a  
          inet addr:192.168.0.214  Bcast:192.168.0.255  Mask:255.255.255.0
          inet6 addr: fe80::3ad5:47ff:feb8:da8a/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:42587 errors:0 dropped:0 overruns:0 frame:0
          TX packets:11284 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:10867936 (10.8 MB)  TX bytes:1534344 (1.5 MB)

lo        Link encap:Local Loopback  
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:160 errors:0 dropped:0 overruns:0 frame:0
          TX packets:160 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1 
          RX bytes:23472 (23.4 KB)  TX bytes:23472 (23.4 KB)

s4d1@CC2-24:~$ sudo add-apt-repository ppa:nginx/stable
Cannot add PPA: 'ppa:nginx/stable'.
Please check that the PPA name or format is correct.
s4d1@CC2-24:~$ sudo apt-get update
Ign http://extras.ubuntu.com trusty InRelease
Get:1 http://extras.ubuntu.com trusty Release.gpg [72 B]            
Get:2 http://security.ubuntu.com trusty-security InRelease [65.9 kB]           
Ign http://dl.google.com stable InRelease                                      
Ign http://in.archive.ubuntu.com trusty InRelease                     
Get:3 http://dl.google.com stable Release.gpg [819 B]                 
Hit http://extras.ubuntu.com trusty Release                                    
Get:4 http://in.archive.ubuntu.com trusty-updates InRelease [65.9 kB]          
Hit http://extras.ubuntu.com trusty/main Sources                               
Hit http://extras.ubuntu.com trusty/main amd64 Packages                        
Get:5 http://dl.google.com stable Release [943 B]                              
Hit http://extras.ubuntu.com trusty/main i386 Packages                         
Hit http://in.archive.ubuntu.com trusty-backports InRelease                    
Get:6 http://dl.google.com stable/main amd64 Packages [1,111 B]                
Hit http://in.archive.ubuntu.com trusty Release.gpg                            
Get:7 http://security.ubuntu.com trusty-security/main Sources [172 kB]         
Get:8 http://in.archive.ubuntu.com trusty-updates/main Sources [430 kB]        
Get:9 http://security.ubuntu.com trusty-security/restricted Sources [4,931 B]  
Get:10 http://in.archive.ubuntu.com trusty-updates/restricted Sources [6,313 B]
Ign http://extras.ubuntu.com trusty/main Translation-en_IN                     
Ign http://extras.ubuntu.com trusty/main Translation-en                        
Get:11 http://security.ubuntu.com trusty-security/universe Sources [102 kB]
Get:12 http://security.ubuntu.com trusty-security/multiverse Sources [3,263 B] 
Ign http://dl.google.com stable/main Translation-en_IN                         
Ign http://dl.google.com stable/main Translation-en                   
Get:13 http://security.ubuntu.com trusty-security/main amd64 Packages [831 kB]
Get:14 http://security.ubuntu.com trusty-security/restricted amd64 Packages [14.2 kB]
Get:15 http://security.ubuntu.com trusty-security/universe amd64 Packages [293 kB]
Get:16 http://in.archive.ubuntu.com trusty-updates/universe Sources [231 kB]   
Get:17 http://in.archive.ubuntu.com trusty-updates/multiverse Sources [7,535 B]
Get:18 http://security.ubuntu.com trusty-security/multiverse amd64 Packages [4,806 B]
Get:19 http://security.ubuntu.com trusty-security/main i386 Packages [747 kB]  
Get:20 http://security.ubuntu.com trusty-security/restricted i386 Packages [13.9 kB]
Get:21 http://security.ubuntu.com trusty-security/universe i386 Packages [276 kB]
Get:22 http://security.ubuntu.com trusty-security/multiverse i386 Packages [4,969 B]
Get:23 http://security.ubuntu.com trusty-security/main Translation-en [446 kB] 
Get:24 http://security.ubuntu.com trusty-security/multiverse Translation-en [2,564 B]
Get:25 http://security.ubuntu.com trusty-security/restricted Translation-en [3,556 B]
Get:26 http://in.archive.ubuntu.com trusty-updates/main amd64 Packages [1,166 kB]
Get:27 http://security.ubuntu.com trusty-security/universe Translation-en [161 kB]
Get:28 http://in.archive.ubuntu.com trusty-updates/restricted amd64 Packages [17.2 kB]
Get:29 http://in.archive.ubuntu.com trusty-updates/universe amd64 Packages [523 kB]
Get:30 http://in.archive.ubuntu.com trusty-updates/multiverse amd64 Packages [14.6 kB]
Get:31 http://in.archive.ubuntu.com trusty-updates/main i386 Packages [1,082 kB]
Get:32 http://in.archive.ubuntu.com trusty-updates/restricted i386 Packages [17.0 kB]
Get:33 http://in.archive.ubuntu.com trusty-updates/universe i386 Packages [504 kB]
Get:34 http://in.archive.ubuntu.com trusty-updates/multiverse i386 Packages [15.1 kB]
Get:35 http://in.archive.ubuntu.com trusty-updates/main Translation-en [576 kB]
Get:36 http://in.archive.ubuntu.com trusty-updates/multiverse Translation-en [7,616 B]
Get:37 http://in.archive.ubuntu.com trusty-updates/restricted Translation-en [4,028 B]
Get:38 http://in.archive.ubuntu.com trusty-updates/universe Translation-en [280 kB]
Hit http://in.archive.ubuntu.com trusty-backports/main Sources                 
Hit http://in.archive.ubuntu.com trusty-backports/restricted Sources           
Hit http://in.archive.ubuntu.com trusty-backports/universe Sources             
Hit http://in.archive.ubuntu.com trusty-backports/multiverse Sources           
Hit http://in.archive.ubuntu.com trusty-backports/main amd64 Packages          
Hit http://in.archive.ubuntu.com trusty-backports/restricted amd64 Packages    
Hit http://in.archive.ubuntu.com trusty-backports/universe amd64 Packages      
Hit http://in.archive.ubuntu.com trusty-backports/multiverse amd64 Packages    
Hit http://in.archive.ubuntu.com trusty-backports/main i386 Packages           
Hit http://in.archive.ubuntu.com trusty-backports/restricted i386 Packages     
Hit http://in.archive.ubuntu.com trusty-backports/universe i386 Packages       
Hit http://in.archive.ubuntu.com trusty-backports/multiverse i386 Packages     
Hit http://in.archive.ubuntu.com trusty-backports/main Translation-en          
Hit http://in.archive.ubuntu.com trusty-backports/multiverse Translation-en    
Hit http://in.archive.ubuntu.com trusty-backports/restricted Translation-en    
Hit http://in.archive.ubuntu.com trusty-backports/universe Translation-en      
Hit http://in.archive.ubuntu.com trusty Release                                
Hit http://in.archive.ubuntu.com trusty/main Sources                           
Hit http://in.archive.ubuntu.com trusty/restricted Sources                     
Hit http://in.archive.ubuntu.com trusty/universe Sources                       
Hit http://in.archive.ubuntu.com trusty/multiverse Sources                     
Hit http://in.archive.ubuntu.com trusty/main amd64 Packages                    
Hit http://in.archive.ubuntu.com trusty/restricted amd64 Packages              
Hit http://in.archive.ubuntu.com trusty/universe amd64 Packages                
Hit http://in.archive.ubuntu.com trusty/multiverse amd64 Packages              
Hit http://in.archive.ubuntu.com trusty/main i386 Packages                     
Hit http://in.archive.ubuntu.com trusty/restricted i386 Packages               
Hit http://in.archive.ubuntu.com trusty/universe i386 Packages                 
Hit http://in.archive.ubuntu.com trusty/multiverse i386 Packages               
Hit http://in.archive.ubuntu.com trusty/main Translation-en                    
Hit http://in.archive.ubuntu.com trusty/multiverse Translation-en              
Hit http://in.archive.ubuntu.com trusty/restricted Translation-en              
Hit http://in.archive.ubuntu.com trusty/universe Translation-en                
Ign http://in.archive.ubuntu.com trusty/main Translation-en_IN                 
Ign http://in.archive.ubuntu.com trusty/multiverse Translation-en_IN           
Ign http://in.archive.ubuntu.com trusty/restricted Translation-en_IN           
Ign http://in.archive.ubuntu.com trusty/universe Translation-en_IN             
Fetched 8,095 kB in 35s (227 kB/s)                                             
Reading package lists... Done
s4d1@CC2-24:~$ sudo apt-get install nginx
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following packages were automatically installed and are no longer required:
  apache2-bin apache2-data libapr1 libaprutil1 libaprutil1-dbd-sqlite3
  libaprutil1-ldap
Use 'apt-get autoremove' to remove them.
The following extra packages will be installed:
  nginx-common nginx-core
Suggested packages:
  fcgiwrap nginx-doc
The following NEW packages will be installed:
  nginx nginx-common nginx-core
0 upgraded, 3 newly installed, 0 to remove and 55 not upgraded.
Need to get 0 B/349 kB of archives.
After this operation, 1,300 kB of additional disk space will be used.
Do you want to continue? [Y/n] y
Preconfiguring packages ...
Selecting previously unselected package nginx-common.
(Reading database ... 240676 files and directories currently installed.)
Preparing to unpack .../nginx-common_1.4.6-1ubuntu3.9_all.deb ...
Unpacking nginx-common (1.4.6-1ubuntu3.9) ...
Selecting previously unselected package nginx-core.
Preparing to unpack .../nginx-core_1.4.6-1ubuntu3.9_amd64.deb ...
Unpacking nginx-core (1.4.6-1ubuntu3.9) ...
Selecting previously unselected package nginx.
Preparing to unpack .../nginx_1.4.6-1ubuntu3.9_all.deb ...
Unpacking nginx (1.4.6-1ubuntu3.9) ...
Processing triggers for ureadahead (0.100.0-16) ...
Processing triggers for ufw (0.34~rc-0ubuntu2) ...
Rules updated for profile 'Nginx HTTP'
Rules updated for profile 'Nginx HTTPS'

Processing triggers for man-db (2.6.7.1-1ubuntu1) ...
Setting up nginx-common (1.4.6-1ubuntu3.9) ...
Setting up nginx-core (1.4.6-1ubuntu3.9) ...
Setting up nginx (1.4.6-1ubuntu3.9) ...
s4d1@CC2-24:~$ sudo /etc/init.d/nginx start
s4d1@CC2-24:~$ sudo ufw status
Status: inactive
s4d1@CC2-24:~$ sudo systemctl staus nginx
Unknown operation 'staus'.
s4d1@CC2-24:~$ sudo systemctl status nginx
nginx.service
   Loaded: error (Reason: No such file or directory)
   Active: inactive (dead)

s4d1@CC2-24:~$ status
status: missing job name
Try `status --help' for more information.
s4d1@CC2-24:~$ sudo /etc/init.d/nginx start
s4d1@CC2-24:~$ cd /
s4d1@CC2-24:/$ ls
bin    dev   initrd.img  lost+found  opt   run   sys  var
boot   etc   lib         media       proc  sbin  tmp  vmlinuz
cdrom  home  lib64       mnt         root  srv   usr  vmlinuz.old
s4d1@CC2-24:/$ cd var
s4d1@CC2-24:/var$ ls
backups  crash  local  log   metrics  run    tmp
cache    lib    lock   mail  opt      spool  www
s4d1@CC2-24:/var$ cd www
s4d1@CC2-24:/var/www$ mkdir this
mkdir: cannot create directory ‘this’: Permission denied
s4d1@CC2-24:/var/www$ sudo mkdir this
s4d1@CC2-24:/var/www$ cd this
s4d1@CC2-24:/var/www/this$ scp -r * root@192.168.0.214:/var/www/this.com
ssh: connect to host 192.168.0.214 port 22: Connection refused
lost connection
s4d1@CC2-24:/var/www/this$ cd ..
s4d1@CC2-24:/var/www$ ls
html  this
s4d1@CC2-24:/var/www$ cd html
s4d1@CC2-24:/var/www/html$ ls
index.html
s4d1@CC2-24:/var/www/html$ sudo gedit index.html 
s4d1@CC2-24:/var/www/html$ cd..
cd..: command not found
s4d1@CC2-24:/var/www/html$ cd ..
s4d1@CC2-24:/var/www$ cd ..
s4d1@CC2-24:/var$ cd ..
s4d1@CC2-24:/$ sudo systemctl restart nginx
[sudo] password for s4d1: 
Failed to issue method call: Unit nginx.service failed to load: No such file or directory. See system logs and 'systemctl status nginx.service' for details.
