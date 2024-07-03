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
