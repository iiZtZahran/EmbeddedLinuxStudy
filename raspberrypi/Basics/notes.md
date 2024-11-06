## connecting to host 
``` cpp 
ssh zahranpi.local 
ssh zahranpi@ipaddress 
```

## configure target 
``` cpp
sudo raspi-config  
```
## ssh without password 
cat ~/.ssh/ 
ls .ssh/ 

## get ip 
```cpp
ipscan
sudo nmap -sn 192.168.1.0/24
``` 
## on vscode open remote ssh 
-it produce .vscode server on target 

## check rasp pi temp 
``` cpp
vcgencmd measure_temp
```
## enable gui apps display for raspberry pi 
``` cpp 
nano /etc/ssh/sshd_config
//x11forwarding yes 
```
## share files between host and target 
``` cpp 
scp pi@192.168.1.4:/Desktop . //move from rasp to host current directory 
```

## show the pinout of the raspberry pi 
``` cpp 
pintout 
```

## check if gpio pin is active or used 
``` cpp 
cd /sys/class/gpio/ 
gpioinfo | grep 21 
```

## get info about raspi device drivers 
``` cpp 
git clone https://github.com/raspberrypi/linux.git
```

## get info about gpio pin 
``` cpp 
cd /sys/class/gpio 
echo 21 > export 
echo 21 > unexport 
cd gpio21 //change value - direction etc 
```
## pwm 
``` cpp 
cd /sys/class/pwm 
echo 1000000 > period 
echo 1000000 > duty_cycle // etc
```

