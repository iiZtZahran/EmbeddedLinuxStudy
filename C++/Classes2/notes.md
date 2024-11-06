## This pointer 
-Inside every member function, the keyword this is a `const pointer` that holds the address of the current implicit object.
-All `non-static` member functions have a this const pointer that holds the address of the implicit object.


```cpp
void print() const { std::cout << m_id; }       // implicit use of this
void print() const { std::cout << this->m_id; } // explicit use of this
```

```cpp 
void setID(int id) { m_id = id; }
//resolves to:
static void setID(Simple* const this, int id) { this->m_id = id; }
```

## Method Chaining using *this
-When you write *this in a class member function, it represents the current instance of the class as an object
```cpp
class Calc
{
private:
    int m_value{};

public:
    Calc& add(int value) { m_value += value; return *this; }
    Calc& sub(int value) { m_value -= value; return *this; }
    Calc& mult(int value) { m_value *= value; return *this; }

    int getValue() const { return m_value; }
};
```
## Inline keyword 
-**Inline** has actually two different meaning at same time:
1-As said in other comments, a hint for the compiler to decide to make the function inline (to emmbed the assembly code every time it is called in the source code).
2-To bypass the One Definition Rule (ODR): it allow the define the same function in different compilation units (obj) without error at linking time (the function is not exported). In this way the definition can be coded in a header file.

## Destructors 
-Destructors are designed to allow a class to do any necessary clean up before an object of the class is destroyed.
``` cpp
~Simple() // here's our destructor
    {
        std::cout << "Destructing Simple " << m_id << '\n';
    }
```
```cpp
class NetworkData
{
private:
    std::string m_serverName{};
    DataStore m_dataQueue{};

public:
	NetworkData(std::string_view serverName)
		: m_serverName { serverName }
	{
	}

	~NetworkData()
	{
		sendData(); // make sure all data is sent before object is destroyed
	}

	void addData(std::string_view data)
	{
		m_dataQueue.add(data);
	}

	void sendData()
	{
		// connect to server
		// send all data
		// clear data
	}
};
```
-With such a `destructor`, our NetworkData object will always send whatever data it has before the object is destroyed! The cleanup happens automatically, which means less chance for errors, and less things to think about.


## Static Member Variables

-Unlike normal member variables, static member variables are shared by all objects of the class. Consider the following program, similar to the above
-Access static members using the class name and the scope resolution operator `(::)`
```cpp
int Something::s_value{ 1 }; // defines the static member variable
```

## Static Member functions 
static member functions can directly access other static members (variables or functions), but not `non-static members`. This is because non-static members must belong to a class object, and static member functions have no class object to work with!


## Friend Members
-inside the body of a class, a friend declaration (using the friend keyword) can be used to tell the compiler that some other class or function is now a friend. In C++, a friend is a class or function (member or non-member) that has been granted full access to the private and protected members of another class. 

```cpp
#include <iostream>

class Accumulator
{
private:
    int m_value { 0 };

public:
    void add(int value) { m_value += value; }

    // Friend functions defined inside a class are non-member functions
    friend void print(const Accumulator& accumulator)
    {
        // Because print() is a friend of Accumulator
        // it can access the private members of Accumulator
        std::cout << accumulator.m_value;
    }
};
```
-Friendship is granted by the class doing the data hiding with the expectation that the friend will access its private members. Think of a friend as an extension of the class itself

## Friend Class 
A friend class is a class that can access the private and protected members of another class.

