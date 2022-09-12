#Information: https://www.softwaretestinghelp.com/python/python-control-statements/

'''When the program encounters a continue statement, it will skip the statements which are present after the continue statement inside the loop and proceed with the next 
iterations.'''

#Example:

for char in ‘Python’:
      if (char == ‘y’):
           continue
      print(“Current character: “, char)
      
'''Output:

Current character: P

Current character: t

Current character: h

Current character: o

Current character: n'''
