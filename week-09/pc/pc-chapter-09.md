# Podcast Questions - Chapter 09

Watch this presentation, [How Secure Shell (SSH) works](https://www.youtube.com/watch?v=ORcvSkgdA58 "youtube how ssh works") and answer the questions listed.

* ~0:12 What does SSH stand for and when did it first appear?
  * SSH stands for "Secure Shell," and it first appeared in the mid-1990s.
* ~0:30 What was the security problem with the predecessors of SSH?
  * A basic security issue plagued Telnet, Rlogin, and RSH, the forerunners of SSH. They used the network to send unencrypted data, including commands and login passwords. Due to the lack of encryption, bad actors were able to easily intercept and view the data as it was sent between the client and the distant server using packet sniffers. 
* ~1:19 Who wrote the first version of SSH and why?
  * The first version of SSH was written by Finnish computer scientist Tatu Ylönen. He developed SSH in response to a security issue. After a password-sniffing attack on his university network, Tatu Ylönen designed SSH to provide a secure and encrypted protocol for connecting to remote servers.
* ~1:50 What is the first thing that happens when a machine makes a connection via SSH to another machine?
  * The first thing that happens when a machine initiates an SSH connection to another machine is the establishment of a TCP (Transmission Control Protocol) connection between the two machines. This TCP connection serves as the underlying transport for the SSH communication. Once the TCP connection is established, the SSH protocol begins its process of secure communication by encrypting the data exchanged between the client and the server.
* ~2:45 How does the SSH protocol encrypt the payload and how does padding impact the encryption
  * The SSH protocol encrypts the payload by using various encryption algorithms that are negotiated during the key exchange. When encryption is in effect, the payload, along with other elements such as the packet length, padding length, and padding fields, is encrypted using the chosen encryption algorithm. This encryption process ensures the confidentiality and integrity of the data being transmitted.
* ~3:41 How do the server and the client in an SSH connection know which encryption algorithm to use?
  * The negotiation of encryption methods takes place during the key exchange procedure between the client and server in an SSH (Secure Shell) connection. Key exchange, encryption ciphers, and MAC (Message Authentication Code) algorithms are among the preferred encryption techniques that the client delivers to the server. Subsequently, the server notifies the client of the algorithms that will be utilized for secure communication after choosing appropriate algorithms from its list of available algorithms. By guaranteeing that both sides employ the same encryption standards, this mutual agreement creates a secure route for data flow during the SSH connection.
* ~6:18 When connecting to an SSH server using the -v option, explain the output printed to the screen?
  * When the -v (verbose) option is used to connect to an SSH server, comprehensive information about the connection procedure is written to the screen. It comprises:

     1. **Debug Messages**: During the connection, the SSH client's actions are described in detail via the verbose mode's debug messages. This can contain details about encryption, authentication, and key exchange.
     2. **Authentication Information**: Provides specifics regarding the methods of authentication that are being tried. It might, for instance, include a list of the password or public key authentication techniques in use.
     3. **Encryption and Cipher Details**: The verbose output lists the ciphers and encryption methods that are being discussed in order to ensure safe data transfer.
     4. **Server Information** : Details about the SSH server, including version and supported algorithms, may be shown.
     5. **Indicators of Progress**: Advancement
  