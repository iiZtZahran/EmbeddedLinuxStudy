// #include <iostream>

// class Date // now a class instead of a struct
// {
//     // class members are private by default, can only be accessed by other members
//     int m_year {};     // private by default
//     int m_month {};    // private by default
//     int m_day {};      // private by default

//     void print() const // private by default
//     {
//         // private members can be accessed in member functions
//         std::cout << m_year << '/' << m_month << '/' << m_day;
//     }
// };

// int main()
// {
//     Date today { 2020, 10, 14 }; // compile error: can no longer use aggregate initialization

//     // private members can not be accessed by the public
//     today.m_day = 16; // compile error: the m_day member is private
//     today.print();    // compile error: the print() member function is private

//     return 0;
// }


#include <iostream>

class Point3d{

    private:
        int m_x;
        int m_y;
        int m_z;

    public:
        void setValues(int x, int y ,int z){
            m_x = x;
            m_y = y;
            m_z = z;
        }

        void print(){
            std::cout << m_x << "and" << m_y << " and " << m_z<<std::endl;
        }
        bool isEqual(Point3d& p ){
            if (m_x == p.m_x) {
                return true;
            }else{
                return false;
            }
        }


};

int main()
{
	Point3d point1{};
	point1.setValues(1, 2, 3);

	Point3d point2{};
	point2.setValues(1, 2, 3);

	std::cout << "point 1 and point 2 are" << (point1.isEqual(point2) ? "" : " not") << " equal\n";

	Point3d point3{};
	point3.setValues(3, 4, 5);

	std::cout << "point 1 and point 3 are" << (point1.isEqual(point3) ? "" : " not") << " equal\n";

	return 0;
}


