#include <iostream>



struct IntPair {
    int num1{}; 
    int num2{};

    void print(void){
        std::cout << num1 << " and " << num2 << std::endl;
    }

    bool isEqual(void){
        if(num1 == num2){
            return true;
        }
        else {
            return false;
        }
    }
};





int main(void){



    IntPair st1{1,3,};
    IntPair st2{5,5};
    st1.print();
    st1.isEqual();
    bool out2 = st2.isEqual();
    std::cout << out2;
    //std::cout << "hello world";
    return 0 ;
}

