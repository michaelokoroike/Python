## Lists and Tuples (section #1)

Video 1 - Lists and Tuples
- Lists and tuples are _compound data types_ and are part of one of the key data structures in Python
- **Tuples** = an ordered sequence, expressed as comma-separated elements within parentheses
  - Ratings = (10,9,6,5,10,8,9,6,2) is example
  - Tuple1 = ('disco',10,1.2)...all data types can be present in a tuple, but the type of the variable will be tuple
    - Tuple1[0] = "disco",...each element can be accessed via index
  - Tuple2 = Tuple1 + ("hard rock", 10)...Tuple2 equals ('disco',10,1.2,'hard rock',10)...this is concatenation
  - Tuple2[0:3] = ('disco',10,1.2)...this is slicing
  - Tuples are immutable (can't be changed)...to manipulate a tuple, create a new one
  - Tuples can be nested (nest = (1,2,("a","b"),(3,4))...nest[2][0] = "a", for example
- **Lists** are also ordered sequences, represented with square brackets
  - L = ['Michael Jackson',10.1,1982] is example
  - Lists are mutable
    - (L.extend(["pop",10])...L is now ['Michael Jackson',10.1,1982,"pop",10])...extend adds each individual item to a list
    - (L.append(["pop",10])...L is now ['Michael Jackson',10.1,1982,["pop",10]])...append adds a list to a list
    - L[0] = "MJ"...L is now ['MJ',10.1,1982,["pop",10]]
    - del(L[0])...L is now [10.1,1982,["pop",10]]...del removes item from list
  - Lists can be nested (L = ['Michael Jackson',10.1,1982, [1,2]])
  - List elements can be accessed via index (L[1] = 10.1)
  - Lists can be concatenated/combined (L = ['Michael Jackson',10.1,1982], L1 = L+["pop",10] is ['Michael Jackson',10.1,1982,"pop",10])
  - Strings can be converted to lists ("hard rock".split() = ["hard", 'rock"]..."A,B,C,D".split(",") = ["A", "B", "C", "D"], with "," as delimiter)
  - Multiple lists referring to the same object is aliasing A = ["hard", 'rock"], B=A...change a value of A, B changes
    - A = ["hard", 'rock"], B=A[:] makes B a clone of A that does not change everytime A changes
