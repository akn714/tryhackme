

**Obfuscation**
Obfuscation is the practice of making data hard to read and analyze. Attackers use it to evade basic detection and delay investigations.

##### You can use these quick visual clues to guess the obfuscation technique used:
- ROT1 - common words look “one letter off”, spaces stay the same. Easy enough to detect.
- ROT13 - Look for three-letter words. Common ones like  `the` become `gur`. And `and` becomes `naq`. spaces stay the same.
- Base64 - Long strings containing mostly alphanumeric characters (i.e., `A-Z`, `a-z`, `0–9`), sometimes with `+` or `/`, often ending in `=` or `==`.
- XOR - A bit more tricky. Looks like random symbols but stays the same length as the original. If a short secret was reused, you may notice a tiny repeat every few characters.