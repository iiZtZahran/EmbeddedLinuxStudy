#include <iostream>

class Fraction {
    private: 
        int m_num{0};
        int m_den{1};

    public:
        Fraction(int num1 = 0 , int den1 = 1):m_num(num1) , m_den(den1){


        }
        Fraction(Fraction& fraction) : m_num(fraction.m_num) , m_den(fraction.m_den){
            std::cout << "copy constructed " ; 
        }
        void print() const
    {
        std::cout << "Fraction(" << m_num << ", " << m_den << ")\n";
    }
};

int main()
{
    Fraction f { 5, 3 };  // Calls Fraction(int, int) constructor
    Fraction fCopy { f }; // Calls Fraction(const Fraction&) copy constructor

    f.print();
    fCopy.print();

    return 0;
}
