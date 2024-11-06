// #include <iostream>

// struct Date
// {
//     int year {};
//     int month {};
//     int day {};

//     void incrementDay() {
//         ++day; 
//     }

//     void print() const 
//     {
//         std::cout << year << '/' << month << '/' << day;
//     }

// };


// int main(){

//     const Date today { 2020, 10, 14 }; // const

//     today.print();


//     return 0 ;
// }


#include <iostream>

struct Date
{
    int year {};
    int month {};
    int day {};

    void print() const// non-const
    {
        std::cout << year << '/' << month << '/' << day;
    }
};

void doSomething(const Date& date)
{
    date.print();
}

int main()
{
    Date today { 2020, 10, 14 }; // non-const
    today.print();

    doSomething(today);

    return 0;
}
