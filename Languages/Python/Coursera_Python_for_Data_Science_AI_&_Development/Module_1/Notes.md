## About the Course (section #1)

Video 1 - Course Introduction
- Python is super easy to learn and is often one of the first languauges turned to when people are first learning code
- Very powerful language
- Has a huge ecosystem of libraries that can get complex things done with a few lines of code
- Good for:
  - Data Analysis
  - Web Scraping
  - Big Data
  - Finance
  - Computer Vision
  - Natural Language Processing
  - Machine Learning
  - Deep Learning
  - And more...
- What we will learn in each of the modules is discussed in this video

Reading - About this Course
- This provides the building blocks for Python programming and data collection for those choosing a career in Data Science, Data Engineering, AI or Application Development

Reading - Course Overview
- Module 1: Python Basics
  - About the Course
  - Types
  - Expressions and Variables
  - String Operations
- Module 2: Python Data Structures
  -  Lists and Tuples
  -  Dictionaries
  -  Sets
- Module 3: Python Programming Fundamentals
  -  Conditions and Branching
  -  Loops
  -  Functions
  -  Exception Handling
  -  Objects and Classes
  -  Practice with Python Programming Fundamentals
- Module 4: Working with Data in Python
  -  Reading and Writing Files with Open
  -  Pandas
  -  Numpy in Python
- Module 5: APIs and Data Collection
  -  Simple APIs
  -  REST APIs, Web Scraping, and Working with Files
  -  Final Exam

Reading - Helpful Tips for Course Completion
- 1. Familiarize self with course content
  2. Form your plan and make a rough timeline for course completion (1 hr daily, deadline completion)
  3. Actively manage learning (notes)
  4. Talk with friends and family about the course
  5. Follow your plan
 

## Getting Started with Python and Jupyter (section #2)

Video 1 - Introduction to Python
- Python is for those who already know how to program, people who want to learn to program, data professionals, areas like data science/AI and machine learning/web development/Internet of Things (IoT) with
  devices like Raspberry Pi, large organizations like Facebook/Amazon/etc
- It is a general-purpose language, has a large standard library
- For Data Science, Pandas, NumPy, SciPy, Matplotlib
- For AI, TensorFlow, PyTorch, Keras, Scikit-learn
- For Natural Languauge Processing (NLP) using the Natural Language Toolkit (NLTK)

Reading - Introduction to Jupyter
- **Jupyter** = is a freely available web application that enables creation and sharing of documents containing equations, live coding, visualizations, and narrative text. Jupyter provides an interactive
  computing environment that supports multiple programming languages, including Python, R, Julia, and more, but it shines brightest when used with Python.  Jupyter revolves around notebooks, documents containing a
  mix of code, visualizations, narrative text, equations, and multimedia content. These notebooks allow users to create, share, and collaborate on computational projects seamlessly.
- Popularity is from ease of use
- Key features/advantages of Jupyter
  -  Interactive computing
  -  Support for multiple languages
  -  Rich output
  -  Integration with data science libraries
  -  Collaboration and sharing
- Indispensable in data science due to seamless integration with libraries like NumPy, pandas, and sci-kit-learn, making it the go-to choice for data manipulation, analysis, and machine learning.

Video 2 - Getting Started with Jupyter
- Essentially the way to use Jupyter
- Slides functionality (new information)

## Types (section #3)

Video 1 - Types
- **Type** = how Python represents different types of data
- Examples:
  - 11 = int
  - 21.213 = float
  - "Hello world" = str
  - True/False = bool
- See type using type command (example: type(11) will return int, type(10.5) will return float, etc)
- Typecasting examples: float(2) = 2.0, int(1.1) = 1, int(True/False) = 1/0, bool(1/0) = True/False

## Expressions and Variables (section #4)

Video 1 - Expressions and Variables
- Expressions
  - 43 + 60 + 16 + 41 = 160 (non-160 numbers = _operands_; +'s = _operators_)
  - * (multiplication), - (subtraction), / (division...results in a float), // (integer division)
- Variables
  - my_variable = 1...assigns a value of 1 to a variable named my_variable; can be updated
  - can perform operations on variables
 
## String Operations (section #5)

Video 1 - String Operations
- **String** = sequence of characters contained within two quotes (double or single quotes)...can be spaces or digits, special characters
- A string can be bound to another variable
- A string can be indexed
  - name = "Michael Jackson"
    - name[0] = "M"
    - name[-15] = "M" (negative indexing)
    - name[::2] = "McalJcsn" (step/stride variable; print every other letter)
    - name[0:5:2] = "Mca" (sliced step/stride variable; print every other letter _up to index 4_)
- Len("Michael Jackson") will return 15, as there are 15 elements in the string, including the space
- A string can be concatenated (name = "Michael Jackson"; statement = name + "is the best"...statement is Michael Jackson is the best)
- A string can be replicated (name = "Michael Jackson"; name = name*3 returns "Michael Jackson Michael Jackson Michael Jackson")
- Strings are immutable
- Escape sequences
  - \n is new line
  - \t is tab
  - \\ is a back slash
- Strings are sequences (have apply methods that work on lists and tuples); also have methods that just work on strings
  - name = "Michael Jackson"; name.upper() = "MICHAEL JACKSON"
  - name = "Michael Jackson"; name.replace('Michael', 'Janet') = "Janet Jackson"
  - name = "Michael Jackson"; name.find('el') = 5 (first index of the sequence you are looking for is returned)
 
Optional (Reading) - Format Strings in Python
- String Interpolations
  - name = "John"
    age = 30
    print(f"My name is {name} and I am {age} years old.")...outputs "My name is John and I am 30 years old."
    print("My name is {} and I am {} years old.".format(name, age))...also outputs "My name is John and I am 30 years old."
    print("My name is %s and I am %d years old." % (name, age))...also outputs "My name is John and I am 30 years old."
- Additional Capabilities
  - x = 10
    y = 20
    print(f"The sum of x and y is {x+y}.")...outputs "The sum of x and y is 30."
- Raw string (r")
  - regular_string = "C:\new_folder\file.txt"
    print("Regular String:", regular_string)...outputs "Regular String:  C:
                                                        ew_folderile.txt" (wrong because \n creates a new line)
  - raw_string = r"C:\new_folder\file.txt"
    print("Raw String:", raw_string)...outputs "Raw String: C:\new_folder\file.txt"
    
## Module 1 Summary, Cheatsheet, Graded Quiz, and Glossary (section #6)

See home folder
