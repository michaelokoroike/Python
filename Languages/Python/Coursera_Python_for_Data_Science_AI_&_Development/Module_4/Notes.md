## Reading and Writing Files with Open (section #1)

Video 1 - Reading Files with Open
- Example: file1 = open("/resources/data/Example1.txt","r")
  - first argument is file path, second parameter is the mode (r is for reading, w for writing, a for appending)
  - file1.name = gets the name of the file ("/resources/data/Example1.txt""
  - file1.mode = gets the mode the object is in ("r")
  - file1.close() = close a file
- Example using with (better practice than above because it automatically closes the file
  - Example: with open("/resources/data/Example1.txt","r") as file1: print(file1.read())
    - Code performs all operations in the indent block and closes the file
  - Example: with open("/resources/data/Example1.txt","r") as file1: print(file1.readline())
    - Outputs every line in a document as an element in a list
