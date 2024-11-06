<!-- ***Why we need Class***

Perhaps the biggest difficulty with structs is that they do not provide an effective way to document and enforce class invariants.

a class invariant is a condition that must be true throughout the lifetime of an object in order for the object to remain in a valid state




***Const class objects and const member functions***

A const member function is a member function that guarantees it will not modify the object or call any non-const member functions (as they may modify the object). 

We need member functions because even if the function doesnt modify member variable the compiler doesnt allow so 

Best practice: A member function that does not (and will not ever) modify the state of the object should be made const, so that it can be called on both const and non-const objects.

Member function const and non-const overloading


***Public and private members and access specifiers***

The members of a ***struct*** are public by default. Public members can be accessed by other members of the class type, and by the public.

The members of a ***class*** are private by default: Members that have the private access level are called private members. Private members are members of a class type that can only be accessed by other members of the same class.

In C++, it is a common convention to name private data members starting with an “m_” prefix, This helps make it clear that this function is changing the state of the class. 

This is the same reason we recommend using ***“s_” prefixes for local static variables***, and ***“g_” prefixes for globals***

 -->


# C++ Object-Oriented Programming Notes

## 1. Why We Need Classes

The main difficulty with **structs** is that they do not provide an effective way to document and enforce **class invariants**.

- A **class invariant** is a condition that must remain true throughout the lifetime of an object to ensure the object stays in a valid state.
- **Classes** offer mechanisms to enforce these invariants, which is why they are preferred for creating more complex objects over structs.

## 2. Const Class Objects and Const Member Functions

- A **const member function** guarantees it will not modify the object or call any non-const member functions (as they might modify the object).
- Even if a function doesn't modify member variables, the compiler may require it to be marked as `const`.
  
### Best Practice:
- A member function that does not (and will not ever) modify the state of the object should be made `const`. 
- This allows the function to be called on both `const` and non-`const` objects.

### Const and Non-Const Overloading:
- You can overload a member function to provide both `const` and non-`const` versions. This is useful when you need the function to behave differently depending on whether the object is `const` or not.

## 3. Access Specifiers: Public vs Private Members

### **Struct**:
- Members of a `struct` are **public by default**. This means public members can be accessed by other members of the class type and by any external code.

### **Class**:
- Members of a `class` are **private by default**. This means private members can only be accessed by other members of the same class.

### Naming Conventions for Member Variables:
- Private members often follow a convention where their names start with an `m_` prefix (e.g., `m_variable`). This helps identify that they belong to the class and indicate that these variables change the state of the class.
- Local static variables should use the prefix `s_`, and global variables should use the prefix `g_` for clarity.

### Best practice:
-Classes should generally make member variables private (or protected), and member functions public.
-Structs should generally avoid using access specifiers (all members will default to public).

### Access levels work on a per-class basis
-One nuance of C++ access levels that is often missed or misunderstood is that access to members is defined on a `per-class basis`, not on a `per-object basis`.

## Access Functions
-Access functions come in two flavors: `getters` and `setters`. `Getters` (also sometimes called accessors) are public member functions that return the value of a private member variable. `Setters` (also sometimes called mutators) are public member functions that set the value of a private member variable.
-`Getters` are usually made `const`, so they can be called on both const and non-const objects. Setters should be `non-const`, so they can modify the data members.

## Constructors
-A constructor is a special member function that is automatically called after a non-aggregate class type object is created. When a non-aggregate class type object is defined, the compiler looks to see if it can find an accessible constructor that is a match for the initialization values provided by the caller (if any).
-If an accessible matching constructor is found, memory for the object is allocated, and then the constructor function is called.
-If no accessible matching constructor can be found, a compilation error will be generated.
-Constructors must have the same name as the class (with the same capitalization). For template classes, this name excludes the template parameters.
-Constructors have no return type (not even void).
-**The const promise takes effect only after the constructor completes. thats why we can use const object with non const constructor**
-**To have a constructor initialize members, we do so using a member initializer list (often called a “member initialization list”). **
-`Foo(int x, int y) : m_x { x }, m_y { y }` 
-members in the member initializer list should be listed in the order in which they are defined in the class.
-if a member has both a default member initializer and is listed in the member initializer list for the constructor, the `member initializer list value takes precedence`.
-Default constructor is a constructor that accepts no arguments. Typically, this is a constructor that has been defined with no parameters.
-Foo() = default; // generates an explicitly defaulted default constructor

## Delegating Constructors 
-Constructors are allowed to delegate `(transfer responsibility for)` initialization to another constructor from the same class type. This process is sometimes called `constructor chaining` 

```cpp
Employee(std::string_view name)
        : Employee{ name, 0 } // delegate initialization to Employee(std::string_view, int) constructor
    {
    }

    Employee(std::string_view name, int id)
        : m_name{ name }, m_id{ id } // actually initializes the members
    {
        std::cout << "Employee " << m_name << " created\n";
    }
```

-Default values can also sometimes be used to reduce multiple constructors into fewer constructors

```cpp
Employee(std::string_view name, int id = 0) // default argument for id
        : m_name{ name }, m_id{ id }
    {
        std::cout << "Employee " << m_name << " created\n";
    } 
```
## Copy Constructor 
-A copy constructor is a constructor that is used to initialize an object with an existing object of the same type.
```cpp
    //this is implicit copy constructor   
    Fraction f { 5, 3 };  // Calls Fraction(int, int) constructor
    Fraction fCopy { f }; // What constructor is used here?
```
-Prefer the implicit copy constructor, unless you have a specific reason to create your own.

