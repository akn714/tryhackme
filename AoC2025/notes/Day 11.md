

**XSS (Cross Site Scripting)**
A type of security vulnerability typically found in web applications. It allows attackers to inject malicious scripts into web pages viewed by other users. These scripts can then steal sensitive information, like user's cookies, session tokens, or other sensitive data.

[TryHackMe | XSS](https://tryhackme.com/room/axss)

## Reflected XSS
- You see reflected variants when the injection is immediately projected in a response.
- You could act, view information, or modify information that your friend or any user could do, view, or access. It's usually exploited via phishing to trick users into clicking a link with malicious code injected.
- Reflected XSS, which targets individual victims

## Stored XSS

A Stored XSS attack occurs when malicious script is saved on the server and then loaded for every user who views the affected page. Unlike Reflected XSS, which targets individual victims, Stored XSS becomes a "set-and-forget" attack, anyone who loads the page runs the attacker’s script.

---
THM{Evil_Bunny}
THM{Evil_Stored_Egg}

---

#### Key practices you can implement are:

- **Disable dangerous rendering raths:** Instead of using the `innerHTML` property, which lets you inject any content directly into HTML, use the `textContent` property instead, it treats input as text and parses it for HTML.
- **Make cookies inaccessible to JS:** Set session cookies with the [HttpOnly](https://owasp.org/www-community/HttpOnly), [Secure](https://owasp.org/www-community/controls/SecureCookieAttribute), and [SameSite](https://owasp.org/www-community/SameSite) attributes to reduce the impact of XSS attacks.
- **Sanitise input/output and encode:**

- In some situations, applications may need to accept limited HTML input—for example, to allow users to include safe links or basic formatting. However it's critical to sanitize and encode all user-supplied data to prevent security vulnerabilities. Sanitising and encoding removes or escapes any elements that could be interpreted as executable code, such as scripts, event handlers, or JavaScript URLs while preserving safe formatting.