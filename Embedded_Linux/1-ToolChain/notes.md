## Intro to tool chain 

``` cpp
$gcc -dump version //--> x86_64-linux-gnu // cpu architecture:x86, kernal: linux, user-space: GNU
```
-A toolchain is a set of tools that compiles source code into executables that can run on your target device and includes a compiler, a linker, and runtime libraries.
-Embdedded Linux = Tool chain + Bootloader + Kernel + Root FileSystem
-Types of toolchains
For our purposes, there are two types of toolchain:
• **Native**: This toolchain runs on the same type of system (sometimes the same actual
system) as the programs it generates. This is the usual case for desktops and servers,
and it is becoming popular on certain classes of embedded devices. The Raspberry
Pi running Debian for ARM, for example, has self-hosted native compilers.
• **Cross**: This toolchain runs on a different type of system than the target, allowing the
development to be done on a fast desktop PC and then loaded onto the embedded
target for testing.
-Almost all embedded Linux development is done using a cross-development toolchain, even if you chose native you need initially to set things up on the target with cross tool chains




## Cross ng Tool 
-`Input`: Target + Configuration --> Cross-ng Tool --> `Output`: ToolChain //takes kernal repo and toolchain repo


## Explanation for the produced toolchain 
-the produced tools used for kernel compilation and files or programs compilation 
-**Sysroot**: is like a copy or real time sim for the files needed to compile the app on the `target` but the `sysroot` is placed on the `host` to emulate the process 
