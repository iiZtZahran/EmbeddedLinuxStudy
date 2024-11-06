#include <iostream>
#ifndef _MATH_HPP 
#define _MATH_HPP

template <typename T, typename U> 
auto sum(const T& a,const U& b){
    return a+b;
}

//template specialisaion

template <typename T, typename U> 
auto sum(const std::string& a,const std::string& b){
    return a.length() + b.length();
}

#endif