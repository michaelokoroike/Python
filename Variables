#### Examples of Python variables

name = "Michael" #string
age = 27 #integer
pi = 3.1415 #float

print(name)
print(age)
print(pi)


#### Declare and Re-Declare variables

age = 27
print("Before declare: ", age)

age = 28 #re-declared
print("After declare: ", age)


#### Assign single value to multiple variables

a = b = c = 15
print(a)
print(b)
print(c)

#### Assign different values to multiple variables

a, b, c = 5, 10, "Henry"
print(a)
print(b)
print(c)

#### How + operator works

a = 1
b = 2
print(a+b)

a = 'Hello'
b = 'World'
print(a+b)


#### Global and Local variables

def f(): #local
  s = "Welcome"
  print(s)
  
def f(): #global
  print(s)
  
 s = "Welcome"
 f()
 
 
 
#### Global keyword in Python 
 
# Python program to modify a global
# value inside a function
 
x = 15
def change():
 
    # using a global keyword
    global x
 
    # increment value of a by 5
    x = x + 5
    print("Value of x inside a function :", x)
 
 
change()
print("Value of x outside a function :", x)


####Variable Type

 numberic
var = 123
print("Numbric data : ", var)
 
# Sequence Type
String1 = 'Welcome to the Geeks World'
print("String with the use of Single Quotes: ")
print(String1)
 
# Boolean
print(type(True))
print(type(False))
 
# Creating a Set with
# the use of a String
set1 = set("GeeksForGeeks")
print("\nSet with the use of String: ")
print(set1)
 
# Creating a Dictionary
# with Integer Keys
Dict = {1: 'Geeks', 2: 'For', 3: 'Geeks'}
print("\nDictionary with the use of Integer Keys: ")
print(Dict)

####

 numberic
var = 123
print("Numbric data : ", var)
 
# Sequence Type
String1 = 'Welcome to the Geeks World'
print("String with the use of Single Quotes: ")
print(String1)
 
# Boolean
print(type(True))
print(type(False))
 
# Creating a Set with
# the use of a String
set1 = set("GeeksForGeeks")
print("\nSet with the use of String: ")
print(set1)
 
# Creating a Dictionary
# with Integer Keys
Dict = {1: 'Geeks', 2: 'For', 3: 'Geeks'}
print("\nDictionary with the use of Integer Keys: ")
print(Dict)

#### Object references

# Python program to show that the variables with a value
# assigned in class declaration, are class variables and
# variables inside methods and constructors are instance
# variables.
   
# Class for Computer Science Student
class CSStudent:
  
    # Class Variable
    stream = 'cse'           
  
    # The init method or constructor
    def __init__(self, roll):
    
        # Instance Variable   
        self.roll = roll      
   
# Objects of CSStudent class
a = CSStudent(101)
b = CSStudent(102)
   
print(a.stream)  # prints "cse"
print(b.stream)  # prints "cse"
print(a.roll)    # prints 101
   
# Class variables can be accessed using class
# name also
print(CSStudent.stream) # prints "cse"
