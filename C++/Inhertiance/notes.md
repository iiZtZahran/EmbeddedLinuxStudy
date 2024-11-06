## Introduction To Inheritance 
-inheritance involves creating new objects by directly acquiring the attributes and behaviors of other objects and then extending or specializing them

``` cpp 
// BaseballPlayer publicly inheriting Person
class BaseballPlayer : public Person //person is base class and baseballplayer is derived class
{
public:
    double m_battingAverage{};
    int m_homeRuns{};

    BaseballPlayer(double battingAverage = 0.0, int homeRuns = 0)
       : m_battingAverage{battingAverage}, m_homeRuns{homeRuns}
    {
    }
};
```
## Derived constructor 
```cpp
class Derived: public Base
{
public:
    double m_cost {};

    Derived(double cost=0.0, int id=0)
        : Base{ id } // Call Base(int) constructor with value id!
        , m_cost{ cost }
    {
    }

    double getCost() const { return m_cost; }
};
```
-constructors build up from the base to bottom 
-When a derived class is destroyed, each `destructor` is called in the reverse order of construction. In the above example, when c is destroyed, the C destructor is called first, then the B destructor, then the A destructor.

## Protected Access Specifier 
-allow derived classes to use the member 
```cpp
class Base
{
public:
    int m_public {}; // can be accessed by anybody
protected:
    int m_protected {}; // can be accessed by Base members, friends, and derived classes
private:
    int m_private {}; // can only be accessed by Base members and friends (but not derived classes)
};

class Derived: public Base
{
public:
    Derived()
    {
        m_public = 1; // allowed: can access public base members from derived class
        m_protected = 2; // allowed: can access protected base members from derived class
        m_private = 3; // not allowed: can not access private base members from derived class
    }
};

int main()
{
    Base base;
    base.m_public = 1; // allowed: can access public members from outside class
    base.m_protected = 2; // not allowed: can not access protected members from outside class
    base.m_private = 3; // not allowed: can not access private members from outside class

    return 0;
}
```