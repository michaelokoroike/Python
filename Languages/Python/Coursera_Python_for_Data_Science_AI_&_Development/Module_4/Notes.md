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

## Numpy in Python (section #3)

Video 1 - One Dimensional Numpy
- Numpy is a library for scientific computing....advatages like speed and memory...is the basis for Pandas
- Going over basics/array creation, indexing/slicing, basic operations, universal functions
- Basics/array creation
  - Numpy array is similar to a list...usually fixed in size and each element is of the same type
    - Example:
      - import numpy as np
      - a = np.array([0,1,2,3,4])
        - can be accessed in the same way a list is
        - type(a) = numpy.ndarray
        - a.dtype = type of elements in the array (only one type allowed...in above case 'int64')
        - a.size = 5 (number of elements in array a)
        - a.ndim = 1 (number of array dimensions/rank of array)
        - a.shape = (5, ) (indicates size of array in each dimension...number of columns)
  - Indexing/Slicing
    - a = np.array([0,1,2,3,4])
      - a[0] = 100 (change first element of array)
      - b = a[1:4] (prints index 1,2,3 of array)
      - a[1:4] = 2,4,6 (changes index 1,2,3 of array to 2,4,6, respectively
  - Basic Operations
    - Vector Addition and Subtraction
      - u = [1 0], v = [0 1]
        - z = u + v = [1+0 0+1] (linear combination of u and v)
        - make these np.array([1,0]) and np.array([0,1])...the quickest and best option (for this and below operations)
    - Vector Multiplication with a Scalar
      - y = [1 2]; z = 2y
        - z = [2x1 2x2] = [2 4]
    - Vector Multiplication with a Vector
      - u = [1 2], v = [3 2]
        - z = u x v = [1x3 2x2] = [3 4]
    - Dot product
      - u = [1 2], v = [3 1]
        - z = (u^T)v = (1x3) + (2x2) = 7
        - make these np.array([1,2]) and np.array([3,1]) and do result = np.dot(u,v)
    - Add a constant to a vector
      - u = np.array([1,2,3,-1]); z = u+1 (array will add 1 to each value within the array; broadcasting)
  - Universal Functions
    - a = np.array([0,1,2,3,4])
      - mean_a = a.mean()
      - max_a = a.max()
    - np.pi; x = np.array([0, np.pi/2, np.pi]); y = np.sin(x)
    - np.linspace(-2, 2, 5)...evenly spaced numbers over a specified interval (5)
  - Plotting Math Functions
    - x = np.linspace(-2, 2, 5); y = np.sin(x) ; import matplotlib.pyplot as plt; %matplotlib inline; plt.plot(x,y)

Video 2 - Two Dimensional Numpy
- Note: This focuses in 2d, but you can go much higher
- Example: a = [[11,12,13],[21,22,23],[31,32,33]]
  - A = np.array(a)
    - A = [11 12 13 / 21 22 23 / 31 32 33]; each / corresponds with start of new row
      - A.ndim = 2 (origin is [[11,12,13],[21,22,23],[31,32,33]]...outer [] is 1 dimension, and inner [] makes it two dimensions (meaning there are not just columns, but rows and columns))
      - A.shape = (3,3) (3 rows, 3 columns)
      - A.size = 9
      - A =[[A[0][0],A[0][1],A[0][2] / A[1][0],A[1][1],A[1][2]/ A[2][0],A[2][1],A[2][2]]]
        - A[0][0] accesses the value in the first row of the first column (11)
        - A[0][0:2] accesses the values in the first row of the first two columns (11, 12)...slicing
        - A[0:2][2] accesses the value in the first two rows of the last column (13, 23)
  - Can also add/multiply/divide/dot/constant arrays with similar dimensions
    - for A * B, number of columns in A must equal number of rows in B
