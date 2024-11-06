#include <iostream>

class Date {

private:
  int m_year{2000};
  int m_day{15};
  int m_month{2};

public:
  int& getYear(void) { return m_year; }
  void setYear(int year) { m_year = year; }

  int getmonth(void) const { return m_month; }
  void setMonth(int month) { m_month = month; }

  int getDay(void) const { return m_day; }
  void setDay(int day) { m_day = day; }
};

int main() {

  Date d{};
  d.setYear(2021);
  std::cout << "The year is: " << d.getYear() << '\n';

  return 0;
}

 