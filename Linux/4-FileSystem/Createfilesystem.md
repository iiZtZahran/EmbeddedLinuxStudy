1-create partitions on the the sdcard using GParted 

2-choose type of filesystem to mount on vfs 

3-mount device drivers on each part -->
sudo mkdir /my_directory && sudo mount -t ext4 /dev/sda1 /my_directory 

4- sudo mkdir /p2_directory && sudo mount -t ext3 dev/sda2 /my_directory 

5- in etc/fstab you can find the info about the filesystem mounting 

6- the creation of it is just temp you have to edit in fstab to make it permenant to maintain the filesystem after rebooting 

7-to make it permenant:
    1-sudo blkid | grep "sdb"
    2-sudo nano fstab
    3-UUID=d8accf3c-f4d9-4b50-bcaf-d14f068fbfd3 /p1_dir ext4 defaults,errors=remount-ro 0       1
