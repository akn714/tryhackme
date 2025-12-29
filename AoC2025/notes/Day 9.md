
**Dictionary Attacks**
Checks all the passwords present in the wordlist to crack the password.

**Brute-Force/Mask Attacks**
A brute-force attack systematically tries every possible combination of characters until it finds the right one. While this guarantees success eventually, the time it takes grows exponentially with the length and complexity of the password.

**Command to initialize dictionary attack on pdf**
```bash
pdfcrack -f flag.pdf -w /usr/share/wordlists/rockyou.txt
```

---
pdf password: naughtylist
zip password: winter4ever

open pdf: `pdftotext -upw "naughtylist" flag.pdf  -`
open zip: `7z x -pwinter4ever flag.zip`

---


**Process creation:** Password cracking has a small set of well-known binaries and command patterns that we can look out for. A mix of process events, file activity, GPU signals, and network touches tied to tooling and wordlists. Our goal is to make the activity obvious without drowning in noise.

- Binaries and aliases: `john`, `hashcat`, `fcrackzip`, `pdfcrack`, `zip2john`, `pdf2john.pl`, `7z`, `qpdf`, `unzip`, `7za`, `perl` invoking `pdf2john.pl`.
- Command‑line traits: `--wordlist`, `-w`, `--rules`, `--mask`, `-a 3`, `-m` in Hashcat, references to `rockyou.txt`, `SecLists`, `zip2john`, `pdf2john`.
- Potfiles and state: `~/.john/john.pot`, `.hashcat/hashcat.potfile`, `john.rec`.


**Incident Response (IR)** is a structured approach to managing and addressing the aftermath of a security breach or cyberattack, also known as an IT incident, computer incident, or security incident. It involves identifying, investigating, handling, and learning from security events or incidents to prevent a similar occurrence.

#### View png in termianl
`chafa wallpaper.png`
