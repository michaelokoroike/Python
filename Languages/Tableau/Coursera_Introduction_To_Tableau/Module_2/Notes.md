## Preprocess the Data Source (section #1)

Video 1 - Welcome to Week 2
- Preprocessing, data types, and data splits will be gone over in this module
- 1st lesson: Before data can be analyzed, it should be wrangled (prepared for analysis)...preprocessing
- 2nd lesson: Learn about the data types and the importance of ensuring each field is appropriately categorized with the data type that makes the most sense for the analysis...data types
- 3rd lesson: May be times when it's helpful to split a field into multiple fields...splits

Reading - Dirty Data
- Types of dirty data (below):
- ![image](https://github.com/michaelokoroike/Courses/assets/39680418/43a6767f-b25c-4c13-be55-ea7e52a210da)
- Example (below):
- ![image](https://github.com/michaelokoroike/Courses/assets/39680418/321f7bd8-296b-45fd-a628-330370c2a5a4)
- Categorizations (below):
- ![image](https://github.com/michaelokoroike/Courses/assets/39680418/084a3eb0-f821-4aa6-8dcf-e0626140ddbf)
- ![image](https://github.com/michaelokoroike/Courses/assets/39680418/a942580c-01d1-4576-8808-6815ff81785d)

Reading - Data Preparation
- We will learn to rename fields, hide fields, pivot fields, change field data types, split fields

Reading - Rename Fields
- Essential for increased readability; unclear field names leave too much room for interpretation of what the field contains

Video 2 - Rename Fields
- Right-click or double click on the column header to rename the column

Reading - Hide Fields
- Workbook can become crowded with fields when we have large datasets in Tableau
- Tableau allows you to hide fields temporarily

Video 3 - Hide Fields
- Right-click and choose 'Hide'

Reading - Pivot Fields
- Example explains why a pivot field is appropriate:
- ![image](https://github.com/michaelokoroike/Courses/assets/39680418/bbd20b93-e76d-4085-a389-0b644754ad4b)
- Create new file from Personal Tableau page by...1) Close from File menu; 2) Don't Publish; 3) "Create a Viz"

Video 4 - Pivot Fields
- Drag over fields you want to stack together and right-click...press pivot
- Two fields are returned...Pivot Field Names and Pivot Field Values; hide Pivot Field Names, rename Pivot Field Values
- Note: To pivot actually changes the data

Reading - Optional: Explore the Data Interpreter
- Mainly used for spreadsheets with titles, notes, footers, empty cells, etc can be ignored and removed using this tool
- If not the proper type of file, too big, or clean, Data Interpreter will not appear as an option (on the left pane)


## Tableau Data Types (section #2)

Reading - Classifying Data in Tableau
- Tableau occasionally encounters challenges in data type preprocessing; up to us to spot these mistakes and manually fix them when they arise
- We will learn about the different data types in this section

Reading - Data Fields in Tableau
- Discrete fields (columns) = Data individually separate and distinct...countable and uniquely identifiable (stands alone...you can have 16 or 17 cars, but not 16.5; you can be located in only one county at a time); strings are always discrete; **BLUE IN TABLEAU**
- Continuous fields = Data that forms an unbroken whole (weight...there is an infinite number of values our weight can be); this is always a number; **GREEN IN TABLEAU**

Reading - Tableau Data Types
- Data Types = A way of classifying a data point or a collection of data points, reflecting the kind of information within each field of the table and also distinguishes how that field can be manipulated
- ![image](https://github.com/michaelokoroike/Courses/assets/39680418/0a7bc23e-2131-44f2-8ec3-86f1c96af209)

Reading - Edit Data Types
- Sometimes there's numeric data that shouldn't be treated numerically (postal codes are geographical, IDs are just IDs)
- Also, there are sometimes dirty data (incorrect data type classifications, for example; typo within a field that's supposed to be numbers)

Video 1 - Edit Data Types
- Right click...change data type, or geographic role; update



## Splits (section #3)

Reading - Overview
- **Complex values** = values that contain two or more standalone values that are concatenated (placed together)...example is a full name field with a first name and last name together
- These values are sometimes more useful if they are separated into multiple fields rather than remaining in one.
- Multiple fields can allow for more data manipulation, which allows for more flexibility in your data visualization creation.

Reading - Calculated Fields
- **Calculated fields** = new fields created by manipulating existing fields using mathematical operators (symbols) and/or Tableau’s built-in functions
- Example is a dataset that includes information on the number of beds and price (among other fields) for Airbnb rentals in New York City; you could create a calculated field by dividing Price column by Beds column
