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

Video 2 - Writing Files with Open
- Example: file1 = open("/resources/data/Example1.txt","w")
  - first argument is file path, second parameter is the mode (r is for reading, w for writing, a for appending)
  - file1.name = gets the name of the file ("/resources/data/Example1.txt""
  - file1.mode = gets the mode the object is in ("w")
  - file1.close() = close a file
- Example using with (better practice than above because it automatically closes the file
  - Example: with open("/resources/data/Example1.txt","w") as file1: file1.write("This is line A"); file1.write("This is line B")
  - Example: with open("/resources/data/Example1.txt","a") as file1: file1.write("This is line A"); file1.write("This is line B")
    - This just writes to the existing file
- __Note: Lab answers are incorrect; they are my first answer, compared to the actual solution to see what I'm not understanding__

## Pandas (section #2)

Video 1 - Pandas: Loading Data
- import pandas...gets all of the data from the pandas library
- pandas.read_csv(filepath)...loads the csv file from filepath, creates a dataframe
- import pandas as pd...standard abbreviation but you can use anything
- Goes over using dataframes (accessing columns, usinf iloc to locate specific entries in dataframes, how to change indices, etc)

Video 2 - Pandas: Working with and Saving Data
- Listing unique values of columns (df[col].unique()), using inequality operators, save as csv (.to_csv(filepath))
