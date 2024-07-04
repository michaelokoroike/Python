## Accessing Multiple Tables (section #1)

Video 1 - Welcome to Week 3
- Recap of what we've learned
  - Importance of data visualization
  - Accessing Tableau's data source page and connecting to/preprocessing data (hiding/renaming/pivoting/splitting fields, editing field data types)
- Only worked with one table within a data source, but what about analyzing more than one table within a data source? Or multiple tables from different data sources?
  - We'll learn first accessing multiple tables in a single data source, and then from multiple data sources
  - We'll learn about live connections and extracts 

Reading - Accessing Multiple Tables
- Data sources will often contain more than one table, and as a visualization expert, it is your job to combine the tables in search of deeper insights.
- What if you wanted to answer a question that required two or more tables to answer?
- Three ways to connect tables:
  - **Joins**: horizontal connections between two or more tables
    -  When you perform a join, Tableau shows a Venn diagram to help you understand how these tables are connected.
    -  When joining tables, there must be at least one common field with shared values between the tables. In the image below, both the two tables that are being joined have an id field. 
  - **Unions**: vertical connection between two tables.
    - For a union to happen properly, the fields (columns) within both tables must match. 
  - **Relationships**: a "contract" between tables.
    - You simply select the matching fields from the tables
    - Tableau will automatically select the join type during your analysis based on the fields used in the visualization.

Reading - Joins in Tableau
- Example:
- ![image](https://github.com/michaelokoroike/Courses/assets/39680418/1aba3687-43cf-4a29-8f95-6fc44aef0115)
  - Names table is "left" table, Professions table is "right" table
- There are multiple ways in which tables can be joined
  - Inner Join
    - ![image](https://github.com/michaelokoroike/Courses/assets/39680418/41d6f6af-c018-4927-a8f1-7223695f14e4)
  - Left Join
    - ![image](https://github.com/michaelokoroike/Courses/assets/39680418/1a37a81b-c0d5-4b97-bfc8-b83981a2dcae)
  - Right Join
    - ![image](https://github.com/michaelokoroike/Courses/assets/39680418/b5a157c5-c16b-4a70-bb0a-9acddc37bed0)
  - Full Outer Join
    - ![image](https://github.com/michaelokoroike/Courses/assets/39680418/0f4dcb19-baa6-4827-9c98-4ac61b0e6c66)

Video 2 - Joins
- Directions: Drag a table to the canvas -> double click the table in the canvas -> add another table to the canvas
- Choose between the different options of Joins

Reading - Tableau Data Model
- **Data Model** = a diagram that tells Tableau how it should query data in the connected database tables
- The parts of these data models are:
  - **Logical layer** = the default view and is where you can combine data using relationships.
  - **Physical layer** = the layer where can be accessed by double-clicking a table on the physical layer (also called a "physical table") and is where you can combine data using joins and unions.
  - https://help.tableau.com/current/pro/desktop/en-us/datasource_datamodel.htm for more information

Reading - Unions in Tableau
- When you have multiple tables with the same structure but different data, the method for combining them is a union.
- To reiterate, there are two important requirements that should be met when creating unions:
  - **Each table should have the same number of fields.**
  - **Each table should have matching field names.**
- Shouldn't union without above requirements

Video 3 - Unions
- Drag the table to the canvas -> Drag another table under the first table until you see where it says "Union" and then let it go
- Merge mismatched fields
