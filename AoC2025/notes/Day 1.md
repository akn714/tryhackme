
#### VPN
A Virtual Private Network is a way to create a secure "tunnel" between two networks. For example, you use a VPN on TryHackMe to access the private network on which the machines operate. VPNs are also commonly used for an employee to log into their workplace when they are not on site (such as working from home or travelling for business matters). VPNs are also used where networks (such as coffee shops) do not provide encryption, and are a great way of preventing others from reading your network traffic.

`/var/log/`, a Linux directory where all security events (logs) are stored.

| Special Symbol             | Description                                                | Example                                             |
| -------------------------- | ---------------------------------------------------------- | --------------------------------------------------- |
| Pipe symbol (`\|`)         | Send the output from the first command to the second       | `cat unordered-list.txt \| sort \| uniq`            |
| Output redirect (`>`/`>>`) | Use `>` to overwrite a file, and `>>` to append to the end | `some-long-command > /home/mcskidy/output.txt`      |
| Double ampersand (`&&`)    | Run the second command if the first was successful         | `grep "secret" message.txt && echo "Secret found!"` |

---

###### README.txt
For all TBFC members,
Yesterday I spotted yet another Eggsploit on our servers.
Not sure what it means yet, but Wareville is in danger.
To be prepared, I'll write the security guide by tomorrow.
As a precaution, I'll also hide the guide from plain view.
~ McSkidy

#### Before
Chocolate egg assortments (assorted sizes and flavours)
Hand-painted decorative Easter eggs
Easter basket with plush toys and treats
Seasonal flower bouquet (tulips & daffodils)
Bunny-themed cookie gift boxes
Spring picnic hamper with pastel treats
DIY egg-decorating kit with paints and stencils
Ceramic egg display stand for mantels
Easter egg hunt supply pack (egg fillers & clues)
Pastel ribbon and wrapping set for gifts
#### After
Hardware security keys (YubiKey or similar)
Commercial password manager subscriptions (team seats)
Endpoint detection & response (EDR) licenses
Secure remote access appliances (jump boxes)
Cloud workload scanning credits (container/image scanning)
Threat intelligence feed subscription
Secure code review / SAST tool access
Dedicated secure test lab VM pool
Incident response runbook templates and playbooks
Electronic safe drive with encrypted backups


gpg --batch --yes --passphrase "some key" -o dir.tar.gz --decrypt dir.tar.gz.gpg

### Part 2


```
From: mcskidy
To: whoever finds this

I had a short second when no one was watching. I used it. I've managed to plant a few clues around the account. If you can get into the user below and look carefully, those three little "easter eggs" will combine into a passcode that unlocks a further message that I encrypted in the /home/eddi_knapp/Documents/ directory. I didn't want the wrong eyes to see it.

Access the user account:
username: eddi_knapp
password: S0mething1Sc0ming

There are three hidden easter eggs. They combine to form the passcode to open my encrypted vault. Clues (one for each egg):
1) I ride with your session, not with your chest of files. Open the little bag your shell carries when you arrive.
2) The tree shows today; the rings remember yesterday. Read the ledger’s older pages.
3) When pixels sleep, their tails sometimes whisper plain words. Listen to the tail.
   
Find the fragments, join them in order, and use the resulting passcode to decrypt the message I left. Be careful — I had to be quick, and I left only enough to get help.

~ McSkidy
```


**Access the user account:**
username: eddi_knapp
password: S0mething1Sc0ming

**Find PASSFRAGS**
```bash
grep -R "PASSFRAG" -n /home/eddi_knapp 2>/dev/null

find ~ -type d -name ".git" 2>/dev/null cd ~/.secret_git git log --oneline git show HEAD
```

PASSFRAG1: 3ast3r
PASSFRAG2: -1s-
PASSFRAG3: c0M1nG

PASSCODE: 3ast3r-1s-c0M1nG

**After decrypting the message using passcode**: UNLOCK_KEY: 91J6X7R4FQ9TQPM9JX2Q9X2Z

**command to decode ciphertext on website**
```bash
cat > /tmp/website_output.txt
openssl enc -d -aes-256-cbc -pbkdf2 -iter 200000 -salt -base64 -in /tmp/website_output.txt -out /tmp/decoded_message.txt -pass pass:'91J6X7R4FQ9TQPM9JX2Q9X2Z'
cat /tmp/decoded_message.txt
```

### Part 3

**Decoded message from Part 2**
```
Well done — the glitch is fixed. Amazing job going the extra mile and saving the site. Take this flag THM{w3lcome_2_A0c_2025}

NEXT STEP:
If you fancy something a little...spicier....use the FLAG you just obtained as the passphrase to unlock:
/home/eddi_knapp/.secret/dir

That hidden directory has been archived and encrypted with the FLAG.
Inside it you'll find the sidequest key.
```


---
# SIDEQUEST 1 KEY

Flag: THM{w3lcome_2_A0c_2025}
Message: "now_you_see_me"

---
### Actual Side Quest 1 Room: [TryHackMe | The Great Disappearing Act](https://tryhackme.com/room/sq1-aoc2025-FzPnrt2SAu)
	
##### Resources
https://chatgpt.com/share/692ebef2-bce8-8006-9780-7fe1dc572c43
https://chatgpt.com/share/692ebf0e-5910-8006-a186-ee6a742b5ded