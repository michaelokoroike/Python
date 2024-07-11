## Conditions and Branching (section #1)

Video 1 - Conditions and Branching (counts for Reading: Conditions and Branching)
- Comparison operators compare some value/operand and, based on some condition, produce a boolean
  - Example: a=6...if we sat a==7, we are testing if a is equal to 7 which it is not; this would return False (True if a==6). Strings are comparable as well ("A" is not equal to "B", and equal to "A")
  - Other comparison operators: > (greater than), >= (greater than or equal to), < (less than), <= (less than or equal to), == (equal to), != (not equal to)
- Branching allows us to run different statements for different inputs
  - If statement
    - if(age>18):
        print("You are allowed in") #run if it is True
      print("Move on") #run regardless of whether True or False
  - Else statement
    - if(age>18):
        print("You are allowed in") #run if it is True
      else:
        print("See other concert")
      print("Move on") #run regardless of whether True or False
  - Elif statement
    - if(age>18):
        print("You are allowed in") #run if it is True
      elif (age==18):
        print("Go see Pink Floyd")
      else:
        print("See other concert")
      print("Move on") #run regardless of whether True or False
-  Logical operators take booleans and produce booleans
  - Not operator
    - not(True)...if input is True, output is False
    - not(False)...if input is True, output is True
  - Or operator takes in two values and produces a boolean (only produces False if all values are false)
    - False or False = False
    - False or True = True
    - True or False = True
    - True or True = True
    - Example: if 1 > 2 or 1 > 3 (will bring about the false answer)...if 1 > 2 or 1 > 0 (will bring about the true answer)
  - And operator takes in two values and produces a boolean
    - False or False = False
    - False or True = False
    - True or False = False
    - True or True = True
    - Example: if 1 > 0 AND 1 > 3 (will bring about the false answer)...if 1 > 0 and 1 > -1 (will bring about the true answer)

## Loops (section #2)

Video 1 - Loops
- Range function outputs an ordered sequence as a list i (range(N) = [0,...,N-1])...if input is positive integer, the output is a sequence
  - Same number of elements as input but starts at 0
  - Range(10,15) = [10,11,12,13,14]
- For loop (examples)
  - for i in range(0,5):
      print(i) #will print 0 through 4
  - squares = ['red', 'yellow', 'green']
    for square in squares:
      print(square) #print each item in the list...
    for i,square un enumerate(squares):
      print(square) #prints item
      print(i) #prints index
- While loops...like for loops but instead of executing a statement a set number of times, while loops run only if conditions are met. (Examples)
  - i = 5
    x = 0
    while x < i:
      print(x) #essentially print 0 through 4
      x = x+1

## Functions (section #3)

Video 1 - Functions
- Functions take an input then produce an output or change...it's just a piece of code you can reuse
  - def function(a): 
        b = a+1;
        return b
  - Above function adds 1 to a
- Python has many built-in functions
  - len, for example, takes an input of type _sequence_ (string, list) or type _collection_ (dictionary, set) and returns the length of that sequence or collection
    - list = [1,2,3];
      length_list = len(list);
      length_list is 3
  - sum takes an iterable (tuple, list) and returns the total of all elements
    - list = [1,2,3];
      sum_list = sum(list);
      sum_list is 6
  - sorted and sort
- Building your own function
  - def add1(a): 
        b = a+1;
        return b
  - Above function adds 1 to a
- Add documentation in triple quotes...help(function) to read documentation of function
- Functions can have multiple parameters (can be integers and strings)
  - def Mult(a,b):
      c=a*b;
      return c
- Functions don't have to have a return function
  - def MJ():
     print("Michael Jackson")
- Functions can't have an empty body
  - def NoWork():
      pass;
    print(NoWork()) #prints none
- Functions usually perform multiple tasks
  - def add1(a): 
        b = a+1; #create variable
        print(b); #print the variable
        return b
- Using loops in functions
  - def printnums(a): 
        for i in range(a):
          print(a)
- Collecting Arguments
  - def printnames(*names): 
        for name in names:
          print(name)
  - Argument in above function could be  "a","b","c","d" and it will print all of those
- Scope (part of program where a variable is accessible)
  - def add1(a): 
        b = a+1;
        return b;
    x = 1;
    y = add1(x)
  - x is within global scope (accessible anywhere after it is defined)...called a _global variable_
  - def Thriller(): 
        Date=1982;
        return Date;
    Date = 2017;
  - In above function, if you print Thriller() you'll get 1982 because that is a _local variable_ defined within a function...if you print Date, you'll get 2017
  - If a variable is not defined in a dunction, Python checks the global scope (if Thriller asked for argument Date and you passed it, then it would print 2017)
  - def Thriller():
        global Date;
        Date=2017;
        return Date
  - Above returns 2017 but checks global scope first for a Date
      
## Exception Handling (section #4)

Video 1 - Exception Handling
- Try...except statement attempts to execute code in the "try" block, but if an error occurs it will kick out and begin searching for the exception that matches the error. See code below:
  - try:
    - getfile = open("file", "r")
    - getfile.write("File for exception handling")
  - except IOError:
    - print("Unable to open or read the data in the file.")
  - except:
    - print("Some other error occurred!")
  - else:
    - print("File was written successfully.")
  - finally:
    - getfile.close()
    - print("File is now closed.")
  - In example above we tried to open and write to a file, but we got an IOError, so that triggered our "Unable..." print statement. If it weren't that, the other print statement would have printed. If no errors,
    the print statement under else would be triggered to show things ran smoothly. The finally statement ends by closing the file no matter what happens beforehand.

## Objects and Classes (section #5)

Video 1 - Objects and Classes
- Python has many data types (integers, floats, strings, lists, dictionaries, sets, booleans, etc)...each is an _object_
- Every object has
  - A type
  - An internal data representation/blueprint
  - A set of procedures for interacting with the object (method)
- Objects are instances of particular types
  - Example: Every time we create an integer, we create an instance of type integer, or an _integer object_...same with all other types
- We find the type of object using type() command...example is type([1,2,3]) returns <class 'list'>
- A class or or type's methods are functions that every instance of that class or type provides...it's how you interact with the object.
  - Example: ratings = [10,9,7,6,5]...ratings.sort() is a method example (sort is the method, which changes the data contained in/state of the object
- You can create your own class in Python (with data attributes and methods)
  - class Circle...data attributes are radius and color
    - Class Circle(object): ##### Class is the definition of the class (like def for a function); Circle is the name of the class; (object) is the parent
      - def __init__(self, radius, color): #####__init__ tells Python you're making a new class...radius and color are parameters...self is a parameter referring to the newly created instance of the class
        - self.radius = radius ##### think of self as a box that contains all of the the data attributes of the object
        - self.color = color
    - Instance of class Circle:
      - RedCircle = Circle(10, red)
        - Call RedCircle.radius and you'll get 10
        - Say RedCircle.color = 'blue' and you change the color attribute from red to blue...done with methods
      - Creating a method for class Circle...
        - Class Circle(object):
          - def __init__(self, radius, color):
            - self.radius = radius
            - self.color = color
          - def add_radius(self, r):
            - self.radius = self.radius + r ##### adds r to radius
        - RedCircle = Circle(10, red) is an instance of Circle...if we do RedCircle = add_radius(10), the radius of this instance is now 20
  - class Rectangle...data attributes are width, height, and color
    - Class Rectangle(object):
      - def __init__(self, width, height, color):
        - self.width = width
        - self.height = height
        - self.color = color
    - __Note: In the lab for classes and objects, did not change my answer once i saw the solution, to know what I didn't know. Only updated next problem with prior problem's solution.__
