
**Extension Used**: FoxyProxy

**Insecure direct object references (IDOR)** are a type of access control vulnerability that arises when an application uses user-supplied input to access objects directly. The term IDOR was popularized by its appearance in the OWASP 2007 Top Ten.

**SDOR (Secure Direct Object Reference)**

**Authentication:** The process by which you verify who you are. For example, supplying your username and password.
**Authorization:** The process by which the web application verifies your permissions. For example, are you allowed to visit the admin page of a web application, or are you allowed to make a payment using a specific account?

**Privilege Escalation**:
- **Vertical privilege escalation:** This refers to privilege escalation where you gain access to more features. For example, you may be a normal user on the application, but can perform actions that should be restricted for an administrator.
- **Horizontal privilege escalation:** This refers to privilege escalation where you use a feature you are authorized to use, but gain access to data that you are not allowed to access. For example, you should only be able to see your accounts, not someone else's accounts.

***IDOR*** is usually a form of horizontal privilege escalation.

[Base64 Encode and Decode - Online](https://www.base64encode.org/)
Identify Hash Algorithm: [Hash Type Identifier - Identify unknown hashes](https://hashes.com/en/tools/hash_identifier)
Decrypt Hash's: [Decrypt MD5, SHA1, MySQL, NTLM, SHA256, MD5 Email, SHA256 Email, SHA512, Wordpress, Bcrypt hashes for free online](https://hashes.com/en/decrypt/hash)

## Ways to fix IDOR

Now that we learned about what IDOR is, let's discuss how to fix it. The best way to stop IDOR is to make sure the server checks who is asking for the data every time. It's not enough to hide or change the ID number; the system must confirm that the logged-in user is authorized to see or change that information.

Don't rely on tricks like Base64 or hashing the IDs; those can still be guessed or decoded. Instead, keep all the real permission checks on the server. Whenever a request comes in, check: _"Does this user own or have permission to view this item?"_

Use random or hard-to-guess IDs for public links, but remember that random IDs alone don't make your app safe. Always test your app by trying to open another user's data and making sure it's blocked. Finally, record and monitor failed access attempts; they can be early signs of someone trying to exploit an IDOR.

[UUID Vouchers Payload - Pastebin.com](https://pastebin.com/4dBCpfYk)
[CyberChef](https://gchq.github.io/CyberChef/)