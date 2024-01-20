### tmux
* Cheat sheet link: https://imgur.com/bL9Dn3U
* tmux is a tool to run multiple sessions on a single terminal
```sh
tmux # command to start a new session
```
* All tmux commands starts with a keyboard combination which starts with 'ctrl + b'
```sh
ctrl+b + d   # to detach a tmux session
```
```sh
tmux ls      # list all the tmux sessions
```
* Default name of first sessions is '0'
```sh
tmux new -s {sessions name} # create a new session with {sessions name} session name
```

### Nmap
* Every computer has total of 65535 available ports
* HTTP service -> port 80
* HTTPS service -> port 443
* Starting any attack with a port scan
* Nmap does port scanning