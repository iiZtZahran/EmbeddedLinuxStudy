## 1-install uboot
```cpp
git clone git://git.denx.de/u-boot.git
```
## 2-get your dts and dtb ready 

## 3-set up config (board/arch/soc)
```cpp
cd u-boot
ls | grep "rpi" 
ls | grep "bcm"
ls | grep "arm"
```
## 4-find dts 
find . -name "*dts" | grep "bcm"

## 5- build for raspi pi 
make rpi_3_defconfig
make CROSS_COMPILE=<toolchain prefix> --> make CROSS_COMPILE=aarch64-rpi3-linux-gnu-
ls -al u-boot*
//With PATH
make CROSS_COMPILE=`$raspi3`
make CROSS_COMPILE=`${raspi3}`