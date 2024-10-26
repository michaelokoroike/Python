## Character Sets and Tokens (section #2)

Video 1 - Character sets and tokens
- Build a simple program (read in 2 floats, print out the sum of the two floats)
- Like an essay, but can't have misspellings
- Made by characters/lexical elements/tokens such as...
  - Comments (/* .... */)
  - Preprocessor Directives (hash-tag include ...)
  - Identifiers (a, b, main)
  - Operators (+ &)
  - Punctuation ({;})
- Program must be syntactically correct
  - int main()...is wrong
- Program must be semantically correct
- ![image](https://github.com/user-attachments/assets/5d59c705-ae69-45e6-b66e-bbca6d151222)

Video 2 - Comments
- /* ... */ is a general comment
- // is an end of line comment
- ![image](https://github.com/user-attachments/assets/0911d1be-63c8-4a6f-a35e-54cb79526aa4)

Video 3 - Keywords
- From standard ANSI C
- ![image](https://github.com/user-attachments/assets/811ac10a-4816-44ae-a209-435283c276fb)
- Only about 30 for C which is relatively small...for C++, there's many more keywords
- ![image](https://github.com/user-attachments/assets/53a978c5-50e4-44d6-9f73-eef8afe26dad)

Video 4 - Identifiers
- Example: int main()
  - int = keyword
  - main = identifier
- Yes
  - ![image](https://github.com/user-attachments/assets/cea65299-e034-48b5-bd2a-4049357539a7)
  - Identifiers can be long (03=0
- Not
  - ![image](https://github.com/user-attachments/assets/3cb6b33f-0101-4647-b13d-0776cc6351f9)
- ![image](https://github.com/user-attachments/assets/086b9d85-acbc-4bf4-8c4b-36ea0e28378c)
- ![image](https://github.com/user-attachments/assets/cbac588d-4edf-428e-b963-424912ffc29e)

Video 5 - Operators
- ![image](https://github.com/user-attachments/assets/426ce13e-6e96-4aec-8706-13dc702272d3)
- ![image](https://github.com/user-attachments/assets/d71c9652-b969-4bf6-96d0-77e3552d15d2)
- ![image](https://github.com/user-attachments/assets/e3c490bd-cafc-4883-afbc-684517ada25a)
- ![image](https://github.com/user-attachments/assets/54b67def-c833-4523-bdb4-b8abbd7482b8)

Video 6 - Expressions and precedence (File included ➕)
- Know the operator function, know its precedence, and know its associativity (see Operator Preference file in the Module_2 main file)
- Example:
  - int a = 1;
  - int b = 2;
  - int c;
  - c = a + b; // c is assigned value of a+b...assignment statement, + is a binary operator
- ![image](https://github.com/user-attachments/assets/633bb6d2-b4c1-4827-a317-e1313c1bc9a9)
- Think PEMDAS

 Video 7 - Expression and Evaluation
 - Tokens have different meanings and different contexts
 - ![image](https://github.com/user-attachments/assets/5c2a7f03-5e15-4510-a996-1139306d8b7a)
 - ![image](https://github.com/user-attachments/assets/4109eec9-fa65-4181-96bb-51a6b53a471d)
 - ![image](https://github.com/user-attachments/assets/2b788b7c-5bdf-460f-a550-ca21b52859a1)
 - Experiment
   - ![image](https://github.com/user-attachments/assets/ec4e8310-0a9a-4eb1-be1f-baaa2d0b15c0)

Video 8 - Declarations
- Simple declarations look like a type, followed by an identifier...typically occur at the head of a body of code or at the head of a program...bottom example on below pic is list
- ![image](https://github.com/user-attachments/assets/fb3de335-11ed-44fd-8440-b752e20317a3)
- ![image](https://github.com/user-attachments/assets/c9885257-a837-40f2-9025-f192fd7ba88b)
- Output of above code below:
- ![image](https://github.com/user-attachments/assets/4e930a70-bdc0-4571-bc97-e782a9260b27)

Video 9 - Fundamental Types and Sizeof
- Fundamental types:
  - char ('a', 'N', '5', '\n')
  - int (0, -3, 77)
  - double (1.245, 3.2e5)
  - modifiers
    - unsigned
    - long (more than -2b and +2b)
      - can have unsigned int, long int...float, double, long double
- Byte = unit of memory that is 8 bits (10^8...example is 00010001); for everything (see below pic for calculation)
- ![image](https://github.com/user-attachments/assets/1bfeb478-7423-41f0-bdc1-aad4095e1eaf)
- 4 bytes can store 32 bits (binary digits)
- Use sizeof to see what each type of variable can store
- ![image](https://github.com/user-attachments/assets/c81ab59e-3528-45ba-9364-36f48e184884)

Video 10 - The char type (File included ➕)
- char is the constituent in a string...strings are just arrays of chars
- Examples: ('x', '7', '\n', etc)
- ASCII values are 0-127...among those 128 characters are upper case ('A' is int value 65 for example...'Z' is 90), lowercase ('a' is 97...'z' is 122), digits ('0' is 48...'9' is 57), other characters (see below)
- ![image](https://github.com/user-attachments/assets/12e51c54-48d2-476f-9ebb-571c2e5b0aee)
  - Above...look at left column for first value and and then top row for second value...example is 'A'...it is in the 6 based on the left column and 5 based on the top row
- Example program:
- ![image](https://github.com/user-attachments/assets/ad3c11f0-e156-4f12-b048-cd6c093e287e)
- ![image](https://github.com/user-attachments/assets/74ec094b-979f-43d0-baae-dbad827acb38)

Video 11 - The int type
- 90:10 rule
- Ints are typically stored in 32 bits (32 0s and 1s)
- Learn to write in base 2 (binary), base 10 (decimal), base 8 (octal), base 16 (hexadecimal)
- When working in 32 bits, what you can represent is limited to -2bil and +2bil




