def outliers(df, column):
  
  lst = df[column].values.tolist() #create a list of the column which you want to find the outliers of
  lst.sort() #sort the list in ascending order
  
  # calculate the median
  
  if len(lst) % 2 != 0: #if the list has an odd number of items
    index = (len(lst) - 1) / 2 #9 items, 8 is highest index, index 4 is median point
    median = lst[index]
  else:
    median = (lst[((len(lst) - 1) // 2)] + lst[((len(lst) - 1) - ((len(lst) - 1)// 2))]) / 2 #8 items, 7 is highest index, midpoint between index 3 and 4 is median point
    
 # calculate the lower quartile

  if len(lst) % 2 != 0: #if the list has an odd number of items (one point is median)
    index = (len(lst) - 1) / 2 #9 items, 8 is highest index, index 4 is median point, 4 numbers before median; 7 items, 6 is highest index, index 3 is median point, 3 numbers before median
    if len(lst[:index]) % 2 != 0: #if the amount of numbers before the median are odd
      lowerQ = lst[((index - 1) / 2)] # 7 items, 6 is highest index, index 3 is median point, 3 numbers before median, midpoint is index 1 (half of 2) [0, [1], 2, | 3 |, 4, 5, 6]
    else: #if the amount of numbers before the median are even
      lowerQ = (lst[(index // 2)] + lst[((index - 1) - (index // 2))]) / 2 #9 items, 8 is highest index, index 4 is median point, midpoint between index 1 and 2 is lower quartile [0, [1, 2], 3, | 4 |, 5, 6, 7, 8]
  
  else: #if the list has an even number of items
    if ((len(lst) - 1) // 2) % 2 == 0: #if the number of items under the median is odd
      lowerQ = lst[(((len(lst) - 1) // 2) / 2)] #ex: if 10 items in list, last index is 9, median is average of indices 4 and 5, lower quartile is midpoint between 0 and 4, which is 2
    else: 
      lowerQ = (lst[(((len(lst) - 1) // 2) // 2)] + lst[(((len(lst) - 1) // 2) - (((len(lst) - 1) // 2) // 2))]) / 2 #ex: if 12 items in list, last index is 11, median is average of indices 5 and 6, lower quartile is midpoint between 0 and 5, which is average of 2 and 3

  
# calculate the upper quartile

  if len(lst) % 2 != 0: #if the list has an odd number of items
    index = (len(lst) - 1) / 2
    if len(lst[(index+1):len(lst)]) % 2 != 0: #if the amount of numbers after the median are odd; [0, 1, 2, |3|, 4, 5, 6]; 3 items after index 3 (4, 5, 6)
      upperQ = lst[(((index+1) + (len(lst)-1)) / 2)]  #9 items, 8 is highest index, index 4 is median point, midpoint between indices 6 and 7 is upper quartile
    else: #if the amount of numbers after the median are even; [0, 1, 2, 3, 4, 5, |6|, 7, 8, 9, 10, 11, 12]; 6 items after index 6 
      upperQ = (lst[(index + (index // 2))] + lst[((index + (index // 2)) + 1)]) / 2

 else: #if the list has an even number of items
    if ((len(lst) - 1) // 2) % 2 == 0: #if the number of items under/over the median is odd [0, 1, 2, |3, 4|, 5, 6, 7]
      upperQ = (lst[int((3*len(lst))/4)] + lst[int((3*len(lst))/4)-1)]) / 2 #if 8 items, last index is 7, midpoint between index 3 and 4 is median point, midpoint between 5 and 6 is upper quartile
    else: #if the number of items under/over the median is even
      upperQ = (lst[(((len(lst)/2) + (len(lst)-1))/ 2)])
      
      
 # find the interquartile range

 IQR = upperQ - lowerQ
  
 # find the inner fences

 lower_inner_fence = lowerQ - (1.5*IQR)
 upper_inner_fence = upperQ + (1.5*IQR)

 # find the outer fences 
  
 lower_outer_fence = lowerQ - (3*IQR)
 upper_outer_fence = upperQ + (3*IQR)
  
 # find outliers

for index in range(len(df)):
  row = df.iloc[index][column]
  if row < lower_outer_fence or row > upper_outer_fence:
    print('Row number ', index, ' with ', column, ' amounting in ', row, ' is an outlier.')
    
    
