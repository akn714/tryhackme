
---
**Tools Used**:
1. Sandboxes (Safe Isolated Environment to execute malwares safely)
2. Regshot (Registry Snapshot)
3. ProcMon (Process Monitor)
---

**Static Analysis of Malware**: The process of analyzing malware without executing it, but in a controlled environment.
**Dynamic Analysis of Malware**: The process of analyzing malware by running it in a controlled environment like a sandbox.


**Credentials for VM**:
Username: ElfMcBlue
Password: TryH@cKMe1!


**Sandboxes**
In cyber security, sandboxes are used to execute potentially dangerous code. Think of this as disposable digital play-pens. These sandboxes are safe, isolated environments where potentially malicious applications can perform their actions without risking sensitive data or impacting other systems.



Static analysis can be a quick and effective way to understand how the sample _may_ operate, as well as how it can be identified. Some of the information that can be gathered from static analysis has been included in the table below:

| **Information** | **Explanation**                                                                                                                                                                                                                                                                                                                                               | **Example**                                                                     |
| --------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| Checksums       | These checksums are used within cyber security to track and catalogue files and executables. For example, you can Google the checksum to see if this has been identified before.                                                                                                                                                                              | `a93f7e8c4d21b19f2e12f09a5c33e48a`                                              |
| Strings         | "Strings" are sequences of readable characters within an executable. This could be, for example, IP addresses, URLs, commands, or even passwords!                                                                                                                                                                                                             | `138.62.51.186`                                                                 |
| Imports         | "Imports" are a list of libraries and functions that the application depends upon. For example, rather than building everything from scratch, applications will use operating system functions and libraries to interact with the OS.<br><br>These are useful, especially in Windows, as they allow you to see how the application interacts with the system. | `CreateFileW`<br><br>This library is used to create a file on a Windows system. |
| Resources       | "Resources" contain data such as the icon that is displayed to the user. This is useful to examine, especially since malware might use a Word document icon to trick the user.  <br>  <br>Additionally, malware itself has been known to hide in this section!                                                                                                | N/A                                                                             |


file > sha256: F29C270068F865EF4A747E2683BFA07667BF64E768B38FBB9A2750A3D879CA33

**Persistence**:
Malware often tries to keep a footprint in the system such that it keeps running even after a system restart. This is called persistence. For example, If a malware adds itself to the startup registry keys, it will persist even after a system restart.

 [Basic Static Analysis](https://tryhackme.com/room/staticanalysis1)
 [Basic Dynamic Analysis](https://tryhackme.com/room/basicdynamicanalysis)
 