#Information: https://docs.python.org/3/tutorial/datastructures.html#the-del-statement

#A tuple consists of a number of values separated by commas, for instance:

t = 12345, 54321, 'hello!'
print(t[0]) #prints 12345
print(t) #prints whole tuple, in parentheses

u = t, (1, 2, 3, 4, 5)
print(u)

t[0] = 88888 #won't work; tuples are immutable

v = ([1, 2, 3], [3, 2, 1]) #but tuples can contain mutable objects
print(v)

'''As you see, on output tuples are always enclosed in parentheses, so that nested tuples are interpreted correctly; they may be input with or without surrounding 
parentheses, although often parentheses are necessary anyway (if the tuple is part of a larger expression). It is not possible to assign to the individual items of a 
tuple, however it is possible to create tuples which contain mutable objects, such as lists.

Though tuples may seem similar to lists, they are often used in different situations and for different purposes. Tuples are immutable, and usually contain a 
heterogeneous sequence of elements that are accessed via unpacking (see later in this section) or indexing (or even by attribute in the case of namedtuples). Lists are
mutable, and their elements are usually homogeneous and are accessed by iterating over the list.

A special problem is the construction of tuples containing 0 or 1 items: the syntax has some extra quirks to accommodate these. Empty tuples are constructed by an empty 
pair of parentheses; a tuple with one item is constructed by following a value with a comma (it is not sufficient to enclose a single value in parentheses). Ugly, but 
effective. For example: '''

empty = ()
singleton = 'hello',    # <-- note trailing comma

len(empty)
len(singleton)

print(singleton)

'''The statement t = 12345, 54321, 'hello!' is an example of tuple packing: the values 12345, 54321 and 'hello!' are packed together in a tuple. The reverse operation 
is also possible:'''

x, y, z = t

'''This is called, appropriately enough, sequence unpacking and works for any sequence on the right-hand side. Sequence unpacking requires that there are as many 
variables on the left side of the equals sign as there are elements in the sequence. Note that multiple assignment is really just a combination of tuple packing and 
sequence unpacking.'''


