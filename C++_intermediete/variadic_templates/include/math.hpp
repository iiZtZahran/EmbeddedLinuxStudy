#include <iostream>
#ifndef _MATH_HPP 
#define _MATH_HPP

template <typename T, typename U, typename ... Ts> //parameter packing
auto sum(const T& a,const U& b , const Ts& ... values){

    //tail recursion 
    //if values == 0 --> add a + b 
        //if values > 0 --> sum(result,sum(values))
    if constexpr(sizeof...(Ts) > 0){
        auto r = a+b;
        return sum(r,values ...);//parameters unpack 
    }
    else {
        return a+b;
    }
    
}

//template specialisaion

template <typename T, typename U> 
auto sum(const std::string& a,const std::string& b){
    return a.length() + b.length();
}

#endif