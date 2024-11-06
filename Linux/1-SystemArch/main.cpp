#include <iostream>
#include <unistd.h>
#include <sys/types.h>

int main(void ) {

    std::cout << "USERID = "<< getuid() << std::endl;
    std::cout << "Name = " << getlogin()<< std::endl;

    //glibc 
        //constant functions name, dont depend on variable sys calls name 
        //hadling logic for example: error handling mechanisms 
    //syscall 
        //name not fixed as its kernel dependant 
        //you have to write the logic by yourself 

    return 0 ;
}