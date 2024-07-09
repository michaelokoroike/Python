## Conditions and Branching (section #1)

Video 1 - Conditions and Branching
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
