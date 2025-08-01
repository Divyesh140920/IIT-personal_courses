# Review Questions - Chapter 12

1) Using the ip2 suite of tools, which command(s) would show your IP address?   

   a. `ifconfig`   
   b. `ipconfig`   
   **c. `ip address show` √**   
   **d. `ip a sh` √**    

2) Using the ip2 suite of tools, which command would show your routing table?    

   a. `ss`   
   **b. `route` √**    
   c. `ip route show`    
   d. `ip -r`    

3) What tool could you use to establish if a server is responding to requests?    

   a. `pong`    
   **b. `ping` √**    
   c. `google`    
   d. `traceroute`    

4) What is the purpose of a netmask?
    * An IP address can be split into two sections: the network portion and the host portion using a netmask, a 32-bit value. While the host portion is used to identify each specific device on a network, the network portion is used to identify the network to which a device belongs.    

    There are several uses for netmasks, such as:   
       * **Dividing large networks into smaller subnets:** Enhancing performance and security can benefit from this.   
       * **Preventing IP address conflicts:** If two devices connected to the same network are given the same IP address, this may occur.    
       * **Determining which devices are on the local network and which are not:** In order to implement security measures and route traffic, this is crucial.
   
* Like IP addresses, netmasks are commonly written in dotted-decimal format.


5) What is the purpose of DNS?
    * A distributed, hierarchical naming system for computers, services, and other resources linked to the Internet or a private network is called the Domain Name System (DNS). It facilitates users' ability to remember and access websites by converting domain names into IP addresses.    
   
    The following are some of the main purposes of DNS:    
       * **Translate domain names to IP addresses:** This is what DNS is primarily used for. DNS servers are in charge of converting a domain name entered into a web browser into the matching IP address, which is the website's server's numerical address.     
       * **Provide redundancy and reliability:** Since DNS is a distributed system, there are numerous DNS servers located all over the world. Users may easily visit the websites they require and DNS availability is guaranteed thanks to this redundancy.     
       * **Cache DNS records:** DNS servers cache DNS records to enhance performance. This implies that they avoid having to contact different DNS servers for each request by storing the IP addresses for domain names that are often requested.     
       * **Support different types of domain names:** DNS supports a variety of top-level domains (TLDs), such as .com, .net, and .org. This allows for a flexible and hierarchical naming system.     
       * **Provide security features:** DNS can be used to provide security features, such as DNSSEC (DNS Security Extensions), which helps to protect against DNS spoofing attacks.     

* DNS is an essential part of the Internet infrastructure, and it plays a critical role in making the Internet user-friendly and accessible.


6) What is the name of the systemd firewall?    

   a. systemd-firewalld     
   b. systemd-firewall   
   **c. firewalld-cmd √**   
   d. ufw   

7) What would be the command to list all of the firewalld public zone ports in use?   

   a. `sudo systemctl status firewalld`   
   b. `sudo firewalld-cmd --zone=public --list-all`    
   **c. `sudo firewall-cmd --zone=public --list-all` √**    
   d. `sudo firewall-cmd --list-all`    

8) If you had a CIDR block of /24 and a network address of 192.168.1.0, how many IP addresses would you have?    

   a. 10    
   b. 0    
   c. 24    
   **d. 256 √**    

9) What is the default port for HTTPS (TLS/SSL)?    

   a. 80    
   b. 3000   
   c. 8080    
   **d. 443 √**    

10) What is the name of the protocol that automatically discovers and gives you an IP address on the network upon boot/resume?    

    a. `dns`       
    b. `ipconfig`     
    **c. `dhcp` √**     
    d. `networkctl`     

11) Using the ip2 suite, what command can be used to monitor and examine all current local ports and TCP/IP connections?      

    **a.  `ss` √**    
    b.  `net`    
    c.  `wireshark`    
    d.  `netstat`    

12) Where is the name of the network layer abstraction software created by Canonical and used by Ubuntu?
    * Ubuntu utilizes netplan, a network layer abstraction program developed by Canonical.

    * A program for network configuration called Netplan makes complicated network configuration easier to understand and more uniform. It is a YAML file that describes a system's network setup. Ubuntu Core, Ubuntu Pro, and other Ubuntu derivatives use Netplan.


13) What is the default service for managing your network in Fedora Workstation?
    * The default service for managing your network in Fedora Workstation is NetworkManager.

14) What is the default service for managing your network in Ubuntu Server?
    * The default service for managing your network in Ubuntu Server is systemd-networkd

15) What are the two major opensource webservers?    

    **a. Apache, Nginx √**    
    b. openhttpd, Nginx    
    c. Apache, IIS    
    d. Apache, Tomcat    

16) What are two related and major opensource relational databases?    

    a. SQL and MySQL    
    **b. MariaDB and MySQL √**    
    c. MySQL and Oracle DB     
    d. Nginx and MySQL     

17) What command would you type to get to the MySQL command line prompt as the root user?     
    * ```bash
      sudo mysql -u root -p
      ```

18) What is the file location that the system uses as a *local DNS* for resolving IP?    

    a. `etc/systemd/hostd`    
    **b. `/etc/hosts` √**     
    c. `/etc/allow`     
    d. `/etc/etc/etc`     

19) What flag would you add to this command to make it survive a reboot: `sudo firewall-cmd --zone=public --add-port=22/tcp`    

    a. `--peppermint`    
    **b. `--permenant` √**    
    c. `--allow`    
    d. `--list-all`     

20) Before systemd, NIC interface naming schemes depended on a driver based enumeration process. They switched to a predictable network interface naming process that depends on what for the interface names?     

    a. driver loading order     
    **b. interface names depend on physical location of hardware (bus enumeration) √**      
    c. kernel version     
    d. What ever Lennart Poettering feels like naming them      

