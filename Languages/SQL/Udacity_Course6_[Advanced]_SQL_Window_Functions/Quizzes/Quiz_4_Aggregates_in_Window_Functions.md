![image](https://github.com/michaelokoroike/Courses/assets/39680418/45ad3974-9e49-4eb0-9e98-3e00f4d6f7d2)
![image](https://github.com/michaelokoroike/Courses/assets/39680418/9f4a8c6d-9a9a-4211-93be-448a13bbec3c)
![image](https://github.com/michaelokoroike/Courses/assets/39680418/ad0c27db-7a14-4e35-9cf2-317a1b7ac8a2)
* DENSE_RANK becomes 1 for every row in the second table because there's no comparison to occur within the account_id once the ORDER BY is removed
![image](https://github.com/michaelokoroike/Courses/assets/39680418/34696087-20f2-49fd-9170-f0b7720cd43e)
* Sum_standard_qty without any ORDER BY basically provides the sum of standard_qty orders overall by account_id
![image](https://github.com/michaelokoroike/Courses/assets/39680418/1b1beddf-9d53-4dcf-94d6-d600a910a261)
* Udacity Explanation: The easiest way to think about this - leaving the ORDER BY out is equivalent to "ordering" in a way that all rows in the partition are "equal" to each other. Indeed, you can get the same effect by explicitly adding the ORDER BY clause like this: ORDER BY 0 (or "order by" any constant expression), or even, more emphatically, ORDER BY NULL.
