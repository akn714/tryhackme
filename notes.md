#### openvpn
* Connected to THM vpn using openvpn configuration file
* Commands:
  * `sudo apt install openvpn`
  * `sudo openvpn /home/pio/Downloads/spyc.ovpn`
* Before connecting to THM VPN I can't ping `10.17.109.14` (IP address provided by THM)
* After connecting to THM VPN I can ping `10.17.109.14`

#### [27 Dec 2023]
* Captive Portal (login page which appears when we want to connect to a free public network): It will intercept the first http connections, display the terms etc, require the user to accept them or use a password etc.

#### linux permissions
* `ls -l`: command to see permissions of file and folder
```sh
-rw-r--r-- 1 user2     user2       14 May  5  2021 important
-rw-r--r-- 1 tryhackme tryhackme   16 May  5  2021 myfile
drwxr-xr-x 2 tryhackme tryhackme 4096 May  4  2021 myfolder
-rw-r--r-- 1 tryhackme tryhackme   17 May  4  2021 unknown1
```
* Permissions: Read, Write and Execute
* Type of Users:
  * Regular User: Created by the administrator and can access the system and its resources based on their permissions
  * System User: Created by the system during installation and are used to run system services and applications

##### Switching between users
* `su [username]`: command to switch to other user
  * when using su to switch to other user, our new session drops us into our previous user's home directory. 
* `su -l [username]`: completely switching to other user
  * after using -l, our new session has dropped us into the home directory of other user automatically. 

#### Common Folders
* /etc (etcetera):
  * Commonplace location to store system files that are used by your operating system.
  * Contains: shadowm passwd, sudoers, sudoers.d, etc.
* /var (variable data):
  * This folder stores data that is frequently accessed or written by services or applications running on the system.
  * Contains: cache, log, backups etc.
* /root: Home directory of root user (system user)
* /tmp (temporary):
  * The /tmp directory is volatile
  * Used to store data that is only needed to be accessed once or twice
  * Once the computer is restarted, the contents of this folder are cleared out

#### [11 jan 2024]
* `wget` can also download file from a server using its ip address
  * `wget http://10.10.111.241:8000/.flag.txt`
* PID's of processes in a machine are in sequence, it starts from 1 and increases as number of processes increases
* How do processes Start?
  * Namespaces:
    * Namespaces are a feature of the Linux kernel that partitions kernel resources such that one set of processes sees one set of resources while another set of processes sees a different set of resources.
    * It enables us to create isolated environments for running processes
  * 
* Backgrounding process
  * processes or commands can be backgrounded using `&` operator at the end of command or using `Ctrl + Z` after running the command
* Forgrounding process
  * processes or commands can be forgrounded using `fg [PID]` command
  * PID can be found using `ps` command

#### [12 jan 2024]
* `cron` is a process
* Crontab is one of the processes that is started during boot, which is responsible for facilitating and managing cron jobs.

* package installation
  * first we have to add GPG (Gnu Privacy Guard) keys of the software that has to be downloaded
    * for example: downlading sublime text
    * first we need to add the GPG key for the developers of Sublime Text 3
    `wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -`
  * Now that we have added this key to our trusted list, we can now add Sublime Text 3's repository to our apt sources list. A good practice is to have a separate file for every different community/3rd party repository that we add.
    * Let's create a file named sublime-text.list in /etc/apt/sources.list.d and enter the repository information like so:
    * `touch sublime-text.list`
    * And now use Nano or a text editor of your choice to add & save the Sublime Text 3 repository into this newly created file:
    * `echo 'deb https://download.sublimetext.com/ apt/stable/' > sublime-text.list`
  * After we have added this entry, we need to update apt to recognise this new entry -- this is done using the `apt update` command
  * Once successfully updated, we can now proceed to install the software that we have trusted and added to apt using `apt install sublime-text`

* removing packages
  * Removing packages is as easy as reversing. This process is done by using the `add-apt-repository --remove ppa:PPA_Name/ppa` command or by manually deleting the file that we previously added to. Once removed, we can just use `apt remove [software-name-here]` i.e. `apt remove sublime-text`

#### [13 jan 2024]
* OSINT (Open Source Intelligence): It is the act of gathering and analyzing publicly available data for intelligence purposes.
* wigle.net: get location using Bssid
* BSSID: Basic Service Set Identifier
  * The BSSID is a 48bit identity used to identify a particular BSS (Basic Servie Set) within as area.
* WAP: Wireless Application Protocol
  * Wireless Application Protocol is a technical standard for accessing information over a mobile wireless network.