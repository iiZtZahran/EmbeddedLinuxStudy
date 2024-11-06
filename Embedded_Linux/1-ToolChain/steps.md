## Setting up Tools 
```cpp
sudo apt-get install autoconf automake bison bzip2 cmake 
sudo apt-get install flex g++ gawk gcc gettext git gperf help2man 
sudo apt-get install libncurses5-dev libstdc++6 libtool libtool-bin make
sudo apt-get install patch python3-dev rsync texinfo unzip wget xz-utils

git clone https://github.com/crosstool-ng/crosstool-ng.git
cd crosstool-ng
./bootstrap
./configure --prefix=${PWD}
make
make install
```
```cpp
bin/ct-ng distclean //Clean the previously built toolchain
bin/ct-ng list-samples //
bin/ct-ng <choose sample>
bin/ct-ng menuconfig
bin/ct-ng build

# output path: ~/x-tools
```

## Main Steps 
```cpp

cd crosstool-ng 
bin/ct-ng aarch64-rpi3-linux-gnu //configure for specific target output:.config

bin/ct-ng menuconfig //input: default .config --> output: customized Config 

./ct-ng build

cd x-tools
cd crosstool-ng

```




