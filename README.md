# DESCRIPTION

Everything I did was on a VM running Debian Jessie (3.16.0-4-amd64). Was curious how to create and build a Linux kernel module and had an interest in file systems. This is what got me on my way.

### Linux Kernel - Hello World Example

http://www.cyberciti.biz/tips/build-linux-kernel-module-against-installed-kernel-source-tree.html

### A Simple File System Example

https://lwn.net/Articles/57369/

Largely used the source with a minor change.


# INSTRUCTIONS

1. Follow the directions under the Hello World Example to get all the tools needed to build a kernel module.  

2. Create a file that can be mounted as a file system; [followed advice here](https://samindaw.wordpress.com/2012/03/21/mounting-a-file-as-a-file-system-in-linux/)
- $ dd if=/dev/zero of=/path/to/file bs=1024 count=100 ; create file to represent block device
- \# losetup /dev/loop0 ; check if loop back device is in use
- \# losetup /dev/loop0 /path/to/file ; assign file to loop back device

3. Build & install the module.
- $ make
- \# insmod ./lwnfs.ko
- $ lsmod | less ; can check to see if it's in the list of mods

4. Mount & play
- \# mount -t lwnfs /dev/loop0 /path/to/file
- \# cat /path/to/file/counter

Don't need to, but can check out [how to build & install a custom linux kernel](http://www.cyberciti.biz/faq/debian-ubuntu-building-installing-a-custom-linux-kernel/) too; was satisfying and something else I covered while covering this topic.