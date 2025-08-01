# Lab - Chapter 11

## Lab 11 Objectives

* Creating virtual disks in VirtualBox
* Creating new logical disks using LVM
* Creating new filesystems with mkfs
* Creating new filesystems in ZFS and Btrfs
* Mounting new filesystems using the systemd `.mount` unit

## Lab 11 Outcomes

At the conclusion of this lab you will have successfully created new virtual disks in VirtualBox. You will have succesfully created logical volumes using LVM. Finally you will have created next-generation filesystems (Btrfs and ZFS) along with systemd `.mount` unit files.

## Lab 11 Activities

1. Create 2 virtual drives in VirtualBox (10 GB each):

   a. Use LVM to create 2 Physical Volumes
   * `sudo fdisk /dev/sdb && sudo fdisk /dev/sdc`   
   * `sudo pvcreate /dev/sdb1 && sudo pvcreate /dev/sdc1`    
   b. Create 1 Volume Group
   * `sudo vgcreate my_vg /dev/sdb1 /dev/sdc1`    
   c. Create 3 Logical Volumes of 5 GB each    
   * `sudo lvcreate -L 5G -n lv1 my_vg && sudo lvcreate -L 5G -n lv2 my_vg && sudo lvcreate -L 5G -n lv3 my_vg`    
   d. Format each LV using ext4
   * `sudo mkfs.ext4 /dev/my_vg/lv1 && sudo mkfs.ext4 /dev/my_vg/lv2 && sudo mkfs.ext4 /dev/my_vg/lv3`    

   ![lab](../lab/Images/1.png)

2. Using Fedora Linux, create 2 virtual drives in VirtualBox (10 GB each):     

   a. Use LVM to create 2 Physical Volumes
   * `sudo fdisk /dev/sdb && sudo fdisk /dev/sdc`
   * `sudo pvcreate /dev/sdb1 && sudo pvcreate /dev/sdc1`     
   b. Create 1 Volume Group
   * `sudo vgcreate my_vg /dev/sdb1 /dev/sdc1`    
   c. Create 3 Logical Volumes of 5 GB each
   * `sudo lvcreate -L 5G -n lv1 my_vg && sudo lvcreate -L 5G -n lv2 my_vg && sudo lvcreate -L 5G -n lv3 my_vg`      
   d. Format one LV using ext4, xfs, and then btrfs
   * `sudo mkfs.ext4 /dev/my_vg/lv1 && sudo mkfs.xfs /dev/my_vg/lv2 && sudo mkfs.btrfs /dev/my_vg/lv3`     

   ![lab](../lab/Images/2.png)

3. Using the same Fedora Linux from questions two extend the ext4 partition to be 10 GB    

   a. Use the `lvextend` command to extend the LV 
   * `sudo lvextend -L 10G /dev/my_vg/lv1`    
   b. Use the `resize2fs` command to extend the filesystem size
   * `sudo resize2fs /dev/my_vg/lv1`     

   ![lab](../lab/Images/3.png)

4. Using the same Fedora Linux from questions two extend the xfs partition to be 10 GB    

   a. Use the `lvextend` command to extend the LV 
   * `sudo lvextend -L 10G /dev/my_vg/lv2`     
   b. Use the `xfs_growfs` command to extend the filesystem size
   * `sudo xfs_growfs /mnt/xfs_mount_point`    

   ![lab](../lab/Images/4.png)

5. Using Fedora Linux create 4 additional virtual disks (can be of 5-10 GB)     

   a. Using Btrfs create a stripped mirror named `datastorage`
   * `sudo mkfs.btrfs -d raid1 -m raid0 /dev/sdX /dev/sdY /dev/sdZ /dev/sdW -L datastorage`    
   b. Use Btrfs to print out status of Btrfs disks: `btrfs filesystem show`     
   c. use the command: `btrfs filesystem df` to show filesystem use compare the results to `df -H`    

   ![lab](../lab/Images/5-1.png)
   ![lab](../lab/Images/5-2.png)
   ![lab](../lab/Images/5-3.png)
   ![lab](../lab/Images/5-4.png)
   ![lab](../lab/Images/5.png)

6. Create a `.mount` file to mount the Btrfs disk created in previous question

   a. Run the `df -H` before creating the `.mount` file and after reboot to show the disk has been mounted     
   b. You will need the UUID from the `lsblk -fs` command     
   b. Remember like systemd, you will have to enable and start  the `.mount` file     
   c. Change ownership of the mount directory to your user     
   d. Write a file named `helloworld.txt` to the newly mounted directory      

   ![lab](../lab/Images/6.png)

7. Using Ubuntu Server, enable an additional host-only network interface and SSH from your Host OS into this system     

    a. Create 3 virtual disks to attach to the virtual machine in VirtualBox     
    b. Install the `zfsutils-linux` package for the zfs tools    
    c. Create a 3 disk zfs stripe named: `datadisk`    
    * `sudo zpool create datadisk /dev/sdb /dev/sdc /dev/sdd`     
    d. Change ownership of the mountpoint to your user     
    e. Write a file named: `helloworld.txt` to the new mountpoint    

    ![lab](../lab/Images/7.png)

8. Using Ubuntu Server, SSH from your Host OS into this system     

    b. Attach 4 additional virtual disks to the virtual machine in VirtualBox    
    c. Create a 4 disk RaidZ named: `customers`
    * `sudo zpool create customers raidz /dev/sde /dev/sdf /dev/sdg /dev/sdh`    
    d. Change ownership of the mountpoint to your user     
    e. Write a file named: `helloworld.txt` to the new mountpoint    
    f. Display the `zpool status` and take a screenshot of the output    

    ![lab](../lab/Images/8.png)
 
9. Using Ubuntu Server, SSH from your Host OS into this system    

    b. Inside of zfspool named `customers`, create 2 `datasets` named: `customers/joseph` and `customers/evelyn`    
    * `sudo zfs create customers/joseph && sudo zfs create customers/evelyn`    
    c. List the `datasets`    
    d. Issue the command: `truncate -s 500m accounts.csv` to create a 500 mb file named accounts.csv in each dataset    
    e. Create a ZFS snapshot of the volume named `customers/joseph` naming it: `customer-snap1`    
    f. Using the `truncate` command create two more files: `ubuntu-distros.csv` and `fedora-distros.csv` of 100 mb on the `customers/joseph` volume    
    g. Issue the `ls -lh` command on the `customers/joseph` volume to show that the new files have been created    
    h. Using the `zfs list` command list the current snapshots    
    i. Using the `zfs rollback` command the `customer-snap1` snapshot     
    j. Issue the `ls -lh` command on the `customers/joseph` volume to show that the snapshot has been rolled back     
    * `sudo ls -lh /customers/joseph`    

    ![lab](../lab/Images/9.png)

10. Using Ubuntu Server, SSH from your Host OS    

    a. Execute a `zpool status customers/evelyn` command    
    * `sudo zpool status customers/evelyn`    
    b. Enable LZ4 compression on the zpool datapool    
    * `sudo zfs set compression=lz4 customers`     
    c. Execute a `zfs get all | grep compression` command to display that compression is enabled    
    * `sudo zfs get all | grep compression`    

    ![lab](../lab/Images/10.png)

11. Execute any of the commands listed in the text to print out the disk serial numbers     
* `lsblk -o NAME,SERIAL`     

![lab](../lab/Images/11.png)

12. Attach an additional 2 GB virtual disk and format it with Btrfs and we will mount is in read-only mode. Using the command `lsblk --fs /dev/sdX` determine the UUID of the newest virtual disk you just created. Add an entry for this disk to the `/etc/fstab` file with the following values:    

    a. file system is UUID=    
    b. mount point is `/mnt/disk100` (create this partition if it doesn't exist)     
    * `sudo mkdir -p /mnt/disk100`    
    c. type is btrfs     
    d. options: defaults,ro  (ro for read-only)    
    e. dump and pass fields can be 0     
    f. Change owner and group to your username for `/mnt/disk100` (using `chmod`)      
    g. Reboot your system. Change directory to `/mnt/disk100`   and take a screenshot to demonstrate that the disk is in read-only mode by trying to create a file via this command:  `touch demo.txt`

    ![lab](../lab/Images/12-1.png)

    ![lab](../lab/Images/12-2.png)

13. Using `wget`, retrieve this URL: https://mirrors.edge.kernel.org/pub/linux/kernel/v5.x/linux-5.11.19.tar.xz

   * `wget https://mirrors.edge.kernel.org/pub/linux/kernel/v5.x/linux-5.11.19.tar.xz`

   a. Untar/uncompress this archive.
   * `tar -xvf linux-5.11.19.tar.xz`

   b. Tar the directory and compress it using bzip2, make sure to keep the original input
   * `tar -cvjf linux-5.11.19.tar.bz2 linux-5.11.19/`

   c. Tar the directory and compress it using gzip, make sure to keep the original input
   * `tar -czvf linux-5.11.19.tar.gz linux-5.11.19/`

   d. Tar the directory and compress it using ztd, make sure to keep the original input
   * `tar -cf - linux-5.11.19/ | zstd -o linux-5.11.19.tar.zst`

   e. Tar the directory and compress it using xz, make sure to keep the original input
   * `tar -cJvf linux-5.11.19.tar.xz linux-5.11.19/`

   ![lab](../lab/Images/13.png)
