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

#### TCP

### OSI Model
* Layers
    * 7: Application
    * 6: Presentation
    * 5: Session
    * 4: Transport
    * 3: Network
    * 2: Data Link
    * 1: Physical
* 7: Application
    * The application layer allows users to send each other files through a network.
    * When data is given to the application layer, it is passed down into the presentation layer.
* 6: Presentation
    * This layer transformation the data into another formate (binary/human readable).
    * This transformation includes encryption, compression, etc.
    * After transformation, data it sent to session layer.
* 5: Session
    * This layer ensures if the connection can be established between the client and the host.
    * If the connection can not be established then it throws an error and the process doesn't procced forward.
    * If the connection can be established then it's the job of session layer to maintain it, as well as to co-operate with the session layer of the host/client.
* 4: Transport
    * 
