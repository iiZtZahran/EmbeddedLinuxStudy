#include <iostream>

class Calc {
private:
  int m_value{};

public:
  Calc &add(int value) {
    m_value += value;
    return *this;
  }
  Calc &sub(int value) {
    m_value -= value;
    return *this;
  }
  Calc &mult(int value) {
    m_value *= value;
    return *this;
  }

  int getValue() const { return m_value; }
  void reset() { *this = {}; }
};

int main() {
  Calc calc{};
  calc.add(5).sub(3).mult(4); // method chaining

  std::cout << calc.getValue() << '\n';

  return 0;
}
