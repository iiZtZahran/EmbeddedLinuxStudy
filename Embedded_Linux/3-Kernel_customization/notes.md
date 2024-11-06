## kernel 
-After editing the kconfig and customize our kernel we build and compile and pass it to the kernel as input 
``` cpp 
make ARCH=arm64 CROSS_COMPILE=aarch64-rpi3-linux-gnu- menuconfig

```
-this command read the kconfig files and open menuconfig to produce the built kernel binary compressed and the bootloader will uncompress it 

-we could produce kernel image which is bootloader specific 
vmlinux --> uncompressed 
zimage --> compressed 

``` cpp
make -j3  ARCH=arm64 CROSS_COMPILE=aarch64-rpi3-linux-gnu- Image
```

