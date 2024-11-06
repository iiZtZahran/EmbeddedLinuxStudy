#include "math.hpp"
#include <iostream>
#include <string>



int main(void){
    //template instantiation
    std::string a {"hello"};
    std::string b {"world"};
    std::cout << sum<std::string,std::string>(a,b) << std::endl ;
}
