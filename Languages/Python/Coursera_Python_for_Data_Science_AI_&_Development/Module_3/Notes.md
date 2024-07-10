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
