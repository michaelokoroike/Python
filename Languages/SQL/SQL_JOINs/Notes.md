Video 1: Motivation
- The real power of SQL is in working with multiple tables at once
- Relational database: refers to the fact that tables iwthin the datasets being worked with contain tables with common identifiers for easy coombination
- To do everything in a single Excel data set is not clean...too many different types of things a company needs to keep track of

Video 2: Why Would We Want to Split Data into Multiple Tables?
- Things like orders and accounts are separate objects and easier to organize if kept separate
- Multiple tables allows queries to execute more quickly (depends on the amount of data you want it to read and the number of modifications you want to be made)

Video 3: Introduction to JOINs
- Inner JOIN: First need SELECT and FROM clauses; inner JOIN is like a second FROM clause, and tells the query an additional table you'd like to pull data from
- Example: SELECT orders.*, accounts.* #grab everything from within tables
           FROM demo.orders #from a table within a database
           JOIN demo.accounts #also grab everything from this table
           ON orders.account_id = accounts.id #combine the two tables that the data is derived from by specifying the relationship between the two tables...account_id in the orders table is the same as id in the
                                                                                                                                                            accounts table
- Tables that a column comes from need to be specified in the SELECT statement


