// #include <iostream>
// #include <string>

// class Ball {
// private:
//   std::string color{"none"};
//   float rad{0.0};

// public:
//   Ball(std::string col, float radius) : color(col), rad(radius) {
//     std::cout << "Constructor initailization" << std::endl;
//   }
//   const std::string getColor(void) const { return color; }
//   float getRad(void) const { return rad; }
// };

// void print(const Ball &ball) {
//   std::cout << "The color is: " << ball.getColor() << std::endl;
//   std::cout << "the radius= " << ball.getRad() << std::endl;
// }

// int main() {
//   Ball blue{"blue", 10.0};
//   print(blue);

//   Ball red{"red", 12.0};
//   print(red);

//   return 0;
// }

// #include <iostream>

// class Foo
// {
// private:
//     int m_x { };
//     int m_y { };

// public:
//     Foo(int x=0, int y=0) // has default arguments
//         : m_x { x }
//         , m_y { y }
//     {
//         std::cout << "Foo(" << m_x << ", " << m_y << ") constructed\n";
//     }
// };

// int main()
// {
//     Foo foo1{};     // calls Foo(int, int) constructor using default
//     arguments Foo foo2{6, 7}; // calls Foo(int, int) constructor

//     return 0;
// }
#include <iostream>
#include <string>

class Ball {

private:
  std::string color{"black"};
  float radius{0.0};

public:
  //   Ball() = default;
  //   Ball(std::string col) : color(col) {}
  //   Ball(float rad) : radius(rad) {}
  //   Ball(std::string col, float rad) : color(col), radius(rad) {}

  Ball(float radius) : Ball{"black", radius} {
    std::cout << "constructed";
  }

  Ball(std::string color = "black", float rad = 0.0)
      : color(color), radius(rad) {}
};

int main() {
  Ball def{};
  Ball blue{"blue"};
  Ball twenty{20.0};
  Ball blueTwenty{"blue", 20.0};

  return 0;
}