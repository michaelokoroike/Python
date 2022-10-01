def outliers(df, column):
  
  lst = df.column.values.tolist() #create a list of the column which you want to find the outliers of
  lst.sort() #sort the list in ascending order
  
  # calculate the median
  
  if len(lst) % 2 != 0: #if the list has an odd number of items
    index = (len(lst) - 1) / 2
    median = lst[index]
  else:
    median = (lst[((len(lst) - 1) // 2)] + lst[((len(lst) - 1) - ((len(lst) - 1)// 2))]) / 2
    
 # calculate the lower quartile

  if len(lst) % 2 != 0:
    lowerQ = lst[((index - 1) / 2)]
  else:
    if ((len(lst) - 1) // 2) % 2 == 0: #if the number of items under the median is odd
      lowerQ = lst[(((len(lst) - 1) // 2) / 2)] #ex: if 10 items in list, last index is 9, median is average of indices 4 and 5, lower quartile is midpoint between 0 and 4, which is 2
    else: 
      lowerQ = (lst[(((len(lst) - 1) // 2) // 2)] + lst[(((len(lst) - 1) // 2) - (((len(lst) - 1) // 2) // 2))]) / 2 #ex: if 12 items in list, last index is 11, median is average of indices 5 and 6, lower quartile is midpoint between 0 and 5, which is average of 2 and 3

  
