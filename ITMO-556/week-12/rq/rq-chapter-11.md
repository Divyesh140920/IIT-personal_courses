# Review Questions - Chapter 11

1. What is the `fdisk` program?   

   **a. a dialog-driven program for the creation and manipulation of partition tables. √**   
   b. a filesystem creation tool   
   c. a tool for formatting floppy disks   
   d. a tool for removing disks from a system   

2. What is the default VirtualBox disk type?   

   **a. VDI √**   
   b. HDD   
   c. COW   
   d. VDD    

3. After attaching a new virtual disk, what is the next step?   

   **a. partitioning √**   
   b. make a filesystem    
   c. mount a filesystem    
   d. add an extent   

4. Which command will print out currently all the block devices, their device name, and their partitions in a nice tree based format?   

   a. lspci   
   **b. lsblk √**    
   c. lsusb    
   d. lstree    

5. `fdisk` is part of what package?   

   a. utils    
   b. GNU    
   **c. utils-linux √**    
   d. utils-unix    

6. What would be the name of the second SATA disk attached to your system?    

   a. sda    
   **b. sdb √**    
   c. sdc     
   d. sdd     

7. What is the name of the first native Linux filesystem released in 1992?    

   a. ext2    
   b. minix    
   c. ext4    
   **d. ext √**    

8. What is the name of the current default Linux Filesystem?   

   a. ext   
   b. btrfs    
   c. ext3    
   **d. ext4 √**    

9. Ext4 breaks up data into __________, which is the smallest sized piece of data that can be read or written?    

   a. sectors    
   b. tracks    
   **c. blocks √**    
   d. clusters    

10. If you use the ext2 filesystem and choose a 4 KiB block, what is the maximum filesystem size?    

    a. 2 TiB    
    **b. 16 TiB √**    
    c. 4 TiB    
    d. 4 GiB    

11. What is the name of the maintainer of the ext4 filesystem?    

    a. Brian Kernighan    
    **b. Theodore Ts'o √**    
    c. Andrew Tanenbaum    
    d. Google    

12. What is the name of the filesystem that the ext4 maintainer, Theodore Ts'o, is recommending to replace ext4?    

    a. XFS     
    **b. Btrfs √**     
    c. ZFS    
    d. HAMMER     

13. What is the name of the filesystem that Red Hat adopted on their RHEL platform to replace ext4 and support better performance on large filesystems?    

    a. ZFS    
    **b. XFS √**    
    c. Btrfs    
    d. HAMMER    

14. Which is the correct command needed to install on Ubuntu to be able to create XFS filesystems?    

    **a. `sudo apt-get install xfsprogs` √**    
    b. `sudo apt-get install zprogs`     
    c. `sudo apt-get install file-progs`    
    d. `sudo apt-get install zfsprogs`    

15. What is the name of the combined filesystem and logical volume manager designed by Sun Microsystems?    

    a. XFS     
    b. SunFS     
    **c. ZFS √**     
    d. Btrfs    

16. Which is the correct command for making an ext4 filesystem on a partition /dev/sdb1?     

    a. `sudo mkfs.ext4 /dev/sdb`    
    **b. `sudo mkfs.ext4 /dev/sdb1` √**      
    c. `sudo mkfs /dev/sdb1`     
    d. `sudo makefs`     

17. Which is the correct command to mount an ext4 filesystem, /dev/sdb1 on a mount point /mnt/data-drive-2?    

    a. `sudo mnt /dev/sdb1 /mnt/data-drive-2`    
    b. `sudo mnt -t ext4 /dev/sdb1 /mnt/data-drive-2`     
    **c. `sudo mount -t ext4 /dev/sdb1 /mnt/data-drive-2` √**     
    d. `sudo mount /dev/sdb1 /mnt/data-drive-2`     

18. Which file contains the mountpoints that will be mounted automatically at boot?    

    a. /etc/mtab     
    b. /etc/default/grub.conf      
    **c. /etc/fstab √**      
    d. /etc/tab     

19. What is the command used to create a LVM physical volume?     

    **a. `pvcreate` √**     
    b. `pvck`      
    c. `pvadd`      
    d. `pvscan`     

20. What is the command used to create a LVM volume group?     

    **a. `vgcreate` √**     
    b. `vgck`    
    c. `vgdisplay`    
    d. `vgmknodes`    
