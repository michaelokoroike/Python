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

## Dictionaries (section #2)

Video 1 - Dictionaries
- Dictionaries are a type of _collection_ in Python, represented with curly brackets {}
- Lists have an index and an element...dictionaries have keys and values
- Keys must be immutable and unique
- Values can be immuatable, mutable, and duplicates
- Key/value pairs are separated by commas
- Example = {"Thriller":1982, "Back in Black":1980} (an album and the year it came out)...call it DICT
  - DICT["Thriller"] returns value of 1982
  - del(DICT["Thriller"]) is how to delete an entry
  - "Thriller" in DICT verifies if Thriller is in the dictionary; returns True a=or False
  - DICT.keys() returns "Thriller", "Back in Black" list-like object
  - DICT.values() returns 1982, 1980 list-like object
 
## Sets (section #3)

Video 1 - Sets
- Sets are another type of _collection_ in Python, meaning you can input different Python types...represented with curly brackets {}
- Unlike lists and tuples, sets are _unordered_ (do not record element position)
- Sets only have unique elements (only one of a particular element in a set)
- Example = set1={"pop", "rock", "soul", "rock"}
  - When set1 is created, the result will be {"pop", "rock", "soul"}...no duplicates will be present
  - You can convert a list to a set using set(), inputting into the parentheses
    - Example = album_list=["Michael Jackson", "Thriller", "Thriller", 1982]...album_set = set(album_list) returns {"Michael Jackson", "Thriller", 1982}
  - Set operations
    - Example = A={"Thriller", "Back in Black", "AC/DC"}
      - A.add("NSYNC") adds NSYNC to a set
      - A.remove("NSYNC") removes NSYNC from the set
      - "AC/DC" in A, checks if "AC?DC" is in set A
    - Example = album_set_1={"Thriller", "Back in Black", "AC/DC"}, album_set_2={"The Dark Side of the Moon", "Back in Black", "AC/DC"}
      - album_set_3 = album_set_1 & album_set_2...returns {"Back in Black", "AC/DC"} (returns all albums that are in both original sets)
      - album_set_1.union(album_set_2)...returns {"Back in Black", "AC/DC", "Thriller", "The Dark Side of the Moon"} (returns all unique albums in both sets)
      - album_set_3.issubset(album_set_1)...returns if the albums in album_set_3 are in album_set_1 essentially (True or False)
       
