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

Reading - Relationships in Tableau
- The third option for connecting multiple tables = relationships

Video 4 - Relationships
- When joining leads to redundancy do union
- Directions: Drag a table over -> drag the other over and stop when you see the noodle



## Accessing Multiple Data Sources (section #2)

Reading - Data Sources
- **Data Source** = the location and container of the data you choose to access when you use Tableau (excel, text file, pdf, etc)
- Data sources can hold multiple tables or sheets of data
- Connecting multiple data sources is common in Tableau...it may make sense to keep these data sources separate to keep the company's data organized and protected, but combining them with Tableau is often necessary for analysis
- There are three ways to combine data sources in Tableau: cross-database joins, blends, and relationships.
- Important to gain an understanding of the differences between a data source and a Tableau data source, coming next;

Reading - Tableau Data Sources
- **Tableau data source** = link between Tableau and the data...Tableau data source contains any edits, connections, joins, and other manipulations you have made to the data source _in_ Tableau. Example:
- ![image](https://github.com/michaelokoroike/Courses/assets/39680418/7bea90d4-517d-46a6-ab9c-8a639cb22049)
- You can create multiple Tableau data sources that connect to the same or different data sources. The benefit of creating multiple Tableau data sources from the same data source is that you can create different table configurations that you can quickly access during your analysis.
- You can either connect data sources through: A single Tableau data source, like how you join and union tables, OR Multiple Tableau data sources.

Reading - Connecting Data Sources
- As mentioned abovr, you can connect data sources through a single Tableau data source or through multiple Tableau data sources. These two approaches are called cross-database joins and blends, respectively.
- **Cross-database join** = works nearly the same as a regular join except that they join columns from tables that are in separate data sources rather than tables within a single data source...cross-database joins are used strictly for combining data sources — not Tableau data sources.
- **Blend** = used to connect Tableau data sources.
- ![image](https://github.com/michaelokoroike/Courses/assets/39680418/de6e38fd-314f-441d-bd08-fc9acaae27f8)

Reading - Cross-Database Joins
- Next video on cross-database joins

Video 1 - Cross-Database Joins
- Directions: To add another data source is to press the + button next to the Connections label...based on this it then becomes like normal JOIN, except you need to toggle in between sources to access the different tables

Reading - Data Blends
- Above we just learned how to combine multiple data sources using cross-database joins. As a reminder, cross-database joins are created within a single Tableau data source. You will now explore how to combine multiple Tableau data sources using blends.
- Behind the scenes, blends and cross-database joins are fundamentally different. A **data blend** combines information from a secondary Tableau data source and displays that information with the primary Tableau data source. **Unlike cross-database joins, data blending does not directly combine the Tableau data sources**. Instead, both Tableau data sources are queried, and only the returned information from each Tableau data source is displayed together.
- In a nutshell, this means that when a data visualization is created, only the information needed to make the visualization is used from the blended Tableau data sources. Cross-database joins and regular joins, on the other hand, will join all of the data from both data sources — even if some of the data is not needed for the visualization.
- A blend's ability to use less data can lead to significant performance benefits when working with large datasets.

Reading - Data Blends vs. Joins
- Data blends will work between any two Tableau data sources as long as they share values within a column, just like a join. When data is blended, it is similar to a left join because the first table in the blend is always the primary table. The main difference is when the aggregation is performed.
- See https://www.coursera.org/learn/introduction-to-tableau/supplement/X53e4/data-blends-vs-joins...with data blends, aggregations occur before joining happens; in joins, they occur after the tables are joined together
- It becomes a beneficial thing on large datasets to do blends

Reading - Creating a New Tableau Data Source
- If you would like to blend multiple Tableau data sources, you will first need to know how to create more than one Tableau data source.
- Directions: A new data source can be created by clicking on the cylinder icon in the top-left corner of the canvas and selecting "New Data Source." From there, the popup should look familiar...select the data source again. Now, if you click on the cylinder icon again, you will have the option to toggle between your two Tableau data sources.

Video 2 - Netflix
- Note: The double click and drags are the 1 to 1s...the non-double click and noodles are relationships that aren't 1 to 1
- Note: The vertical stacking is when you "union"
- Sheet 1 is where you get data into analysis form


## Live vs. Extracts (section #3)

Reading - Optimization
- While processing large datasets can be time-consuming for many tools, Tableau has put in place special functionality to optimize workbook performance.
- In Tableau, **optimization** is the act of editing your Tableau content or data source to increase the overall performance of your Tableau workbook by increasing the speed of queries and calculations. Increasing the performance of your workbook is vital for holding your audience's attention when you are sharing data visualizations that are built on large datasets.
- **Processing speed** is the speed at which software performs an action. In the case of Tableau, processing speed is how fast Tableau can process data and create data visualizations using that data.

Reading - Live vs. Extract
- In Tableau Desktop, each time you connect to a data source, Tableau automatically sets up a live connection to that data.
- A **live connection** is a connection to a data source that updates every time there is a change within that data source. This means that if you were to edit a Tableau-connected Excel sheet or update a Tableau-connected server, then any visualizations created using that data source would also update.
- An **extract** is a specified portion of a data source, frozen in time and saved on your local computer. Using extracts instead of live connections will increase the performance of your Tableau workbooks.
- There are two reasons why extracts speed up the Tableau workbook:
  - The extract is saved on your local computer. This means that Tableau does not need to connect with an external server to get the information for the data visualizations you are building, which speeds up Tableau's runtime.
  - Extracts can be used to minimize the amount of data you are working with. Extracts give you the option of filtering the data before the data is saved. In doing so, you reduce the amount of data processed when you go to build and manipulate data visualizations.
- When it comes to workbook performance, extracts are one of the most impactful optimization techniques. Extracts are best utilized when working with large datasets or optimizing visualization-heavy presentations so that the visualizations load quickly. The extracts' ability to limit data by removing all unnecessary information will save you time analyzing data and reduce the load time for data visualizations when presenting to an audience.
- Note that in Tableau Public, the only option is to use extracts — live connections are not an option. Still, you should be familiar with the concept of working with live connections vs. extracts, because you will likely find yourself working with both in Tableau Desktop as an analyst.


## Course Recap (section #4)

Discussion Prompt - My Learning Journey (My Personal Response)
- _Most interesting thing I learned is how similar Tableau feels to SQL! It got a little confusing with deciphering when joins are good vs unions vs relationships as I followed along with the videos, but I want to continue to learn!_

Reading - Course Recap
- See home folder

Reading - Want to Become a Business Intelligence Analyst?
- 
