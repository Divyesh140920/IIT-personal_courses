# Chapter 03 - Review Questions

1. What is the term for the industry standard file format that is used to install a Linux distro?  
  **a. ISO √**  
  b. ZIP  
  c. Disk-ISO  
  d. Distro
2. What is currently the most common Linux install media type?  
  a. CD-ROMs  
  b. Network based installs  
  **c. USB √**  
  d. Thunderbolt  
3. What is the name of recommended tool used to create bootable Linux install media?  
  a. Pendrive Linux  
  b. etcher.io  
  **c. UNetbootin √**  
  d. Image Magick  
4. What is the technology that is inserted between ring 1 and ring 0 that enables virtualization?  
   **Hypervisor mode**  
   VT-x and SVM inject a new privilege level under Ring 0 to aid virtualization. Both introduce nine brand-new, hypervisor-specific machine code instructions that only function at "Ring 1."
 
5. The operating system that the hypervisor resides on is called the _________ system?  
   **Host Operating System**  
6. Hosted or desktop virtualization is called what type of hypervisor?  

   A virtual machine (VM) manager that is deployed as a software program on an already-existing operating system (OS) is referred to as a Type 2 hypervisor, also known as a hosted hypervisor. Type 1 and Type 2 hypervisors are the two varieties.

7. Bare Metal or Native Virtualization is called what type of hypervisor?  

   A Type 1 hypervisor, commonly referred to as a bare-metal hypervisor, is a virtualization tool that is installed directly on the hardware. This kind of hypervisor also manages one or more guest operating systems (OSes), in addition to the hardware.

8. Each Linux installation distro provides a mechanism to compare what you downloaded with what you expected to download, what is that called?  
  a. mount point  
  **b. checksum √**  
  c. receipt  
  d. mdsum  
9. What is the name of the driver package you can install in VirtualBox in order to enable features such as shared clipboard, larger screen resolution, and mouse pointer integration?  
  a. Kernel modules  
  b. Kernel drivers  
  **c. VirtualBox extensions √**  
  d. ISO extensions  
10. What is the name for a Linux distribution that runs in memory?  
  a. Rapid CD  
  **b. Live ISO √**  
  c. Install Disk  
  d. Trick question  
11. What feature doesn't dpkg handle/support?  
  a. Removing software  
  **b. Installing dependencies √**  
  c. Versioning  
  d. Author Information  
12. What is the APT command to add an additional software repository in Ubuntu/Debian, named: `ppa:linux-libre/ppa`, to your APT system?  
  a. `sudo add-repository ppa:linux-libre/ppa`  
  **b. `sudo add-apt-repository ppa:linux-libre/ppa` √**   
  c. `sudo apt-add-repository ppa:linux-libre/ppa`  
  d. `sudo apt-add ppa:linux-libre/ppa`    
13. Which distro(s) supports the .deb package?  
  a. Ubuntu only  
  **b. Debian Family √**  
  c. Debian and Red Hat  
  d. None of the above  
14. Which distro(s) supports the RPM package?  
  a. CentOS only  
  **b. Red Hat Family √**  
  c. Debian and Red Hat  
  d. None of the above  
15. We talked about using GCC to compile and install software, what was the other language/package manager discussed in the chapter?  
  a. G++  
  b. APT  
  c. Python  
  **d. None of the above √**  

16. Describe the purpose of VirtualBox Guest Additions?  
    * Essential software elements called VirtualBox Guest Additions improve the functioning of virtual machines in VirtualBox. They make it simpler to collaborate between the host and guest operating systems by delivering enhanced graphics performance, smooth mouse interaction, and shared clipboard capability. They also include functions like automatic resizing and folder sharing, which enhances the usefulness of virtualized environments overall.

17. What is the RPM command to install a package from the command line?  
  a. `rpm -qa *.rpm`  
  b. `rpm install *.rpm`  
  c. `rpm -q *.rpm`  
  d. `rpm -i *.rpm`  

18. After building software from source and running the ```./configure``` command, what is the next step?  
  a. Run the ```make install``` command  
  b. Run the ```sudo make install``` command  
  c. Run the ```install``` command  
  **d. Run the ```make``` command √**  

19. What is the name of the new package managers developed by Canonical and Red Hat?  
  a.  flatpak and apt  
  **b.  flatpak and snap √**  
  c.  snapcraft and flatter  
  d.  dnf and apt  

20. What is the DNF command used to install additional software repositories? Use this URL to an RPM: http://download1.rpmfusion.org/free/el/updates/7/x86_64/r/rpmfusion-free-release-7-4.noarch.rpm  
  a. `sudo dnf install repo http://download1.rpmfusion.org/free/el/updates/7/x86_64/r/rpmfusion-free-release-7-4.noarch.rpm`  
  b. `sudo dnf http://download1.rpmfusion.org/free/el/updates/7/x86_64/r/rpmfusion-free-release-7-4.noarch.rpm`  
  **c. `sudo dnf install http://download1.rpmfusion.org/free/el/updates/7/x86_64/r/rpmfusion-free-release-7-4.noarch.rpm`  √**  
  d. `sudo install http://download1.rpmfusion.org/free/el/updates/7/x86_64/r/rpmfusion-free-release-7-4.noarch.rpm`  
  