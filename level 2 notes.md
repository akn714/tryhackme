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
    * First purpose of this layer is to choose the protocol over which the data is to be transmitted.
    * The 2 protocols used by this layer are:
        * 1. TCP (Transmission Control Protocol)
        * 2. UDP (User Datagram Protocol)
    * With TCP the transmission is connection based which means that a connection between the computers is established adn maintained for the duration of the request.
    * In UDP data is transmitted to the receiving computer, if the receiving computer can't keep up then that's it's problem.
    * The UDP is usually used in video streaming, that why when the connection is bad then the video is pixelated.
    * conclusion:
        * TCP is used when data is important instead of speed. (eg. File sharing)
        * UDP is used when speed is important instead of data. (eg. Video streaming)
    * When Protocol is selected, the transport layer then divides the tramission up into bite-sized pieces (for TCP these are called segments, for UDP they're called datagrams)
* 3: Network
    * This layer is responsible for locating the destination of your request.
    * This layer focuses on IP addresses (IPv4).
    * 192.168.1.1 is a common address for a home router.
* 2: Data Link
    * This layer focuses on physical (MAC) address of the remote computer.
    * It receives a packet from the network layer (that includes the IP address for the  remote computer) and adds in the physical (MAC) address of the receiving endpoint.
    * Inside a network enabled computer is a NIC (Network Interface Card) which comes with a unique MAC (Media Access Control) address to identify it.
    * When information is sent across a network, it's actually the physical address that is used to identify where exactly to send the information.
    * The data link layer serves an important function when it receives data, as it checks the received information to make sure that it hasn't been corrupted during transmission, which could well happen when the data is transmitted by layer 1 (The physical layer).
* 1: Physical
    * This is the hardware of the computer.
    * This layer converts binary data of the transmission into signals and transmit them across the network, as well as receive incoming signals and convert them back into binary data.

**Encapsulation**

<img src='encapsulation.jpg'>

* When the data is passed down in each layer of the model, headers of each layer is added to data, This process is known as Encapsulation in OSI Model.
* In stage 1 data is in Application layer (layer 7), data is passed down with adding perticular headers in every layer until the Physical layer (layer 1) comes.
* Additional security layer is added while the data is in Data Link layer (layer 6), a tailer is added at the end of data that is used to verify that the data is not been corrupted on transmission.

**De-Encapsulation**

* It is the reverse process of Encapsulation.
* Same things happen in reverse direction.

### TCP/IP Model
* The TCP/IP Model consists of 4 layers
    * 1: Application
    * 2: Transport
    * 3: Internet
    * 4: Network Interface

**OSI Model and TCP/IP Model comparision**
<table style="border: 1px solid #80808086; border-collapse: collapse;">
    <tr style="border: 1px solid #80808086; border-collapse: collapse;">
        <th style="border: 1px solid #80808086; border-collapse: collapse;">OSI Model</th>
        <th style="border: 1px solid #80808086; border-collapse: collapse;">TCP/IP Model</th>
    </tr>
    <tr style="border: 1px solid #80808086; border-collapse: collapse;">
        <td style="border: 1px solid #80808086; border-collapse: collapse;">Application</td>
        <td style="border: 1px solid #80808086; border-collapse: collapse;" rowspan="3">Application</td>
    </tr>
    <tr style="border: 1px solid #80808086; border-collapse: collapse;">
        <td style="border: 1px solid #80808086; border-collapse: collapse;">Presentation</td>
    </tr>
    <tr style="border: 1px solid #80808086; border-collapse: collapse;">
        <td style="border: 1px solid #80808086; border-collapse: collapse;">Session</td>
    </tr>
    <tr style="border: 1px solid #80808086; border-collapse: collapse;">
        <td style="border: 1px solid #80808086; border-collapse: collapse;">Transport</td>
        <td style="border: 1px solid #80808086; border-collapse: collapse;">Transport</td>
    </tr>
    <tr style="border: 1px solid #80808086; border-collapse: collapse;">
        <td style="border: 1px solid #80808086; border-collapse: collapse;">Network</td>
        <td style="border: 1px solid #80808086; border-collapse: collapse;">Internet</td>
    </tr>
    <tr style="border: 1px solid #80808086; border-collapse: collapse;">
        <td style="border: 1px solid #80808086; border-collapse: collapse;">Data Link</td>
        <td style="border: 1px solid #80808086; border-collapse: collapse;" rowspan="2">Network Interfaces</td>
    </tr>
    <tr style="border: 1px solid #80808086; border-collapse: collapse;">
        <td style="border: 1px solid #80808086; border-collapse: collapse;">Physical</td>
    </tr>
</table>



