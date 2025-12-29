
### Windows Registery
Your brain stores all the information that you need to function effectively. This includes:
- How should you behave?
- What would be the first thing you would do after waking up?
- How would you dress yourself?
- What are your habits?
- What happened in the recent past?

These are just a few things. Your brain knows pretty much everything about you. It's just like a database storing the human configuration.

Windows OS is not a human, but it also needs a brain to store all its configurations. This brain is known as the **Windows Registry**. The registry contains all the information that the Windows OS needs for its functioning.

##### Hives
Now, this Windows brain (Registry) is not stored in one single place, unlike a human brain, which is situated in one single place inside the head. It is made up of several separate files, each storing information on different configuration settings. These files are known as **Hives**.

**Example**
Hive name: SAM
Contains:
- Usernames and their Metadata
- Password Hashes
- Group Memberships
- Account Statuses
Location: C:\Windows\System32\config\SAM


|Hive Name|Contains|Location|
|---|---|---|
|SYSTEM|- Services<br>- Mounted Devices<br>- Boot Configuration<br>- Drivers<br>- Hardware|`C:\Windows\System32\config\SYSTEM`|
|SECURITY|- Local Security Policies<br>- Audit Policy Settings|`C:\Windows\System32\config\SECURITY`|
|SOFTWARE|- Installed Programs<br>- OS Version and other info<br>- Autostarts<br>- Program Settings|`C:\Windows\System32\config\SOFTWARE`|
|SAM|- Usernames and their Metadata<br>- Password Hashes<br>- Group Memberships<br>- Account Statuses|`C:\Windows\System32\config\SAM`|
|NTUSER.DAT|- Recent Files<br>- User Preferences<br>- User-specific Autostarts|`C:\Users\username\NTUSER.DAT`|
|USRCLASS.DAT|- Shellbags<br>- Jump Lists|`C:\Users\username\AppData\Local\Microsoft\Windows\USRCLASS.DAT`|


| Hive on Disk | Where You See It in Registry Editor      |
| ------------ | ---------------------------------------- |
| SYSTEM       | `HKEY_LOCAL_MACHINE\SYSTEM`              |
| SECURITY     | `HKEY_LOCAL_MACHINE\SECURITY`            |
| SOFTWARE     | `HKEY_LOCAL_MACHINE\SOFTWARE`            |
| SAM          | `HKEY_LOCAL_MACHINE\SAM`                 |
| NTUSER.DAT   | `HKEY_USERS\<SID> and HKEY_CURRENT_USER` |
| USRCLASS.DAT | `HKEY_USERS\<SID>\Software\Classes`      |

### Registry Explorer Tool: https://ericzimmerman.github.io/


Navigate to either: HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist or ROOT\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store