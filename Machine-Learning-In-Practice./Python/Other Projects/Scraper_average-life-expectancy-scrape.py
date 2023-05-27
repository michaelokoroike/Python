

import requests
from bs4 import BeautifulSoup
import json 
import re
import numpy as np
import pandas as pd

############################################ CREATE THE DATAFRAME COLUMNS ##############################################################################

URL = "https://www.worlddata.info/life-expectancy.php"
page = requests.get(URL) #go to the website

soup = BeautifulSoup(page.content, "html.parser") #get the html content of the website

results = soup.find("div", class_="tablescroller") #find the area that encompasses the data which you want to extract
#print(results.prettify())

colnames = results.find("tr", class_="no-sort") #hone in again on data to extract
#print(colnames.prettify())

#get the names of the different column categories
country = colnames.find("th", class_="left")
male_life = colnames.find("th", text="Life expectancy males")
female_life = colnames.find("th", text="Life expectancy females")
birth_rate = colnames.find("th", text="Birth rate")
death_rate = colnames.find("th", text="Death rate")
	
columns = [country.text, male_life.text, female_life.text, birth_rate.text, death_rate.text] #put the column categories into a list

df = pd.DataFrame(columns=columns) #add those columns as column names to an empty dataframe

################################################# EXTRACT THE DATAFRAME DATA #####################################################################################

lst = [] #empty list
for row in results.find('table').find_all('td'): #extract every single td text item separately
	lst.append(row.text) #fill the list with each text
	#print(row.text)

################################################### ADD THE DATA TO THE DATAFRAME ###############################################################################


total_left = 570

while total_left != 0: #while we haven't scrolled through every item
	row_item = 1
	row_lst = [] #list that is to be converted into row
	while row_item <= 5: #we will count in groups of 5, since each row will be in groups of 5
		index=570-total_left #e.g., if 570 left, start with index 0
		row_lst.append(lst[index]) #add a row item to the list
		#print(total_left)
		#print(row_lst)
		total_left -= 1 #trigger 1 more item scrolled through
		if row_item == 5:
			df.loc[len(df)] = row_lst #add the list to the dataframe
			if 'Central Africa' in row_lst:
				break
			row_lst = [] #empty the list
			row_item = 1 #start row_item back at 1
		else:
			row_item += 1 #go until 5
			
###################################################### MAKE DATA WORKABLE ######################################################################################

#We need to replace the years label in the strings of the life expectancy columns so that this data can become workable

from string import ascii_letters

def extract_words(dataframe, column_name):
	dataframe[column_name] = dataframe[column_name].map(lambda x: float(x.rstrip(ascii_letters)))
	
extract_words(df, 'Life expectancy males')
extract_words(df, 'Life expectancy females')	


			
#We need to turn the percentages which are in strings into decimals.

def stringPercentToFloat(stringPercent):
	newPercent = stringPercent[:-1] #remove the percentage character from the strings
	print(newPercent)
	number = float(newPercent) #turn the string integer/float into real number
	number /= 100 #divide by 100 to get the decimal version of the percent
	return number #return the result

def extract_percents(dataframe, column_name):
	dataframe[column_name] = dataframe[column_name].map(lambda x: stringPercentToFloat(x))


extract_percents(df, 'Birth rate')
extract_percents(df, 'Death rate')		

print(df.info())

