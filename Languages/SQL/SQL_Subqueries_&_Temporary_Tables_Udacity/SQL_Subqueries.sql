/* SUBQUERIES (see Quizzes) */

/* Subquery Mania - Quiz Question 1 */
SELECT t3.rep, t2.region, t2.max_sales
FROM (SELECT region, MAX(sales) max_sales
FROM (SELECT r.name region, s_r.name rep,                           SUM(o.total_amt_usd) total_sales
      FROM sales_reps s_r
      JOIN region r
      ON s_r.region_id = r.id
      JOIN accounts a
      ON s_r.id = a.sales_rep_id
      JOIN orders o
      ON o.account_id = a.id
      GROUP BY r.name, s_r.name
      ORDER BY sales DESC) t1
      GROUP BY region) t2
JOIN (SELECT r.name region, s_r.name rep,                           SUM(o.total_amt_usd) total_sales
      FROM sales_reps s_r
      JOIN region r
      ON s_r.region_id = r.id
      JOIN accounts a
      ON s_r.id = a.sales_rep_id
      JOIN orders o
      ON o.account_id = a.id
      GROUP BY r.name, s_r.name
      ORDER BY sales DESC) t3
ON t2.region = t3.region AND t2.max_sales = t3.total_sales;

/* Subquery Mania - Quiz Question 2 */
SELECT table2.region, table2.max_total_sales, table3.total_orders
FROM (SELECT region, MAX(total_sales) max_total_sales
FROM (SELECT r.name region, 
             SUM(o.total_amt_usd) total_sales,
             COUNT(o.total) total_orders
        FROM sales_reps s_r
        JOIN region r
        ON s_r.region_id = r.id
        JOIN accounts a
        ON s_r.id = a.sales_rep_id
        JOIN orders o
        ON o.account_id = a.id
        GROUP BY r.name
        ORDER BY total_sales DESC) table1
       GROUP BY region) table2
JOIN (SELECT r.name region, 
             SUM(o.total_amt_usd) total_sales,
             COUNT(o.total) total_orders
        FROM sales_reps s_r
        JOIN region r
        ON s_r.region_id = r.id
        JOIN accounts a
        ON s_r.id = a.sales_rep_id
        JOIN orders o
        ON o.account_id = a.id
        GROUP BY r.name
        ORDER BY total_sales DESC)
       GROUP BY region) table3
ON table2.region = table3.region AND table2.max_total_sales = table3.total_sales;

/* Subquery Mania - Quiz Question 3 */

SELECT a.name account, SUM(o.standard_qty)     total_standard_qty_orders, o.total total_orders /* or SELECT COUNT(*) */
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name, o.total
HAVING o.total > 
    (SELECT o.total total_orders
    FROM orders o
    JOIN accounts a
    ON o.account_id = a.id
    GROUP BY o.total
    HAVING SUM(o.standard_qty) =
        (SELECT MAX(total_standard_qty_orders)
        FROM (SELECT a.name account,                                        SUM(o.standard_qty)                                    total_standard_qty_orders,                             o.total total_orders
              FROM accounts a
              JOIN orders o
              ON a.id = o.account_id
              GROUP BY a.name, o.total
              ORDER BY SUM(o.standard_qty) DESC)))
ORDER BY SUM(o.standard_qty) DESC;

/* Subquery Mania - Quiz Question 4 */
SELECT a.name account, 
       w_e.channel channels,
       COUNT(w_e.channel) number_of_web_events
FROM accounts a
JOIN orders o
ON a.id = o.account_id
JOIN web_events w_e
ON a.id = w_e.account_id

WHERE w_e.channel IN
(SELECT DISTINCT w_e.channel
FROM accounts a
JOIN web_events w_e
ON a.id = w_e.account_id)

AND

a.name =
(SELECT a.name account
FROM accounts a
JOIN orders o
ON a.id = o.account_id
JOIN web_events w_e
ON a.id = w_e.account_id
GROUP BY a.name
HAVING SUM(o.total_amt_usd) = 
(SELECT MAX(total_sales) max_total_sales
FROM
(SELECT a.name account, 
       SUM(o.total_amt_usd) total_sales
FROM accounts a
JOIN orders o
ON a.id = o.account_id
JOIN web_events w_e
ON a.id = w_e.account_id
GROUP BY a.name
ORDER BY total_sales DESC)))

GROUP BY a.name, w_e.channel
ORDER BY number_of_web_events DESC;


/* Subquery Mania - Quiz Question 5 */
SELECT *, total_spent/total_orders AS avg_spent
FROM (SELECT a.name account, SUM(o.total_amt_usd) total_spent, SUM(o.total) total_orders
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name
ORDER BY total_spent DESC)
LIMIT 10;

/* Subquery Mania - Quiz Question 6 */
SELECT a.name account, SUM(o.total_amt_usd) total_spent, SUM(o.total) total_orders, SUM(o.total_amt_usd)/SUM(o.total) AS avg_spent
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name
HAVING SUM(o.total_amt_usd)/SUM(o.total) >

(SELECT AVG(avg_spent)
FROM (SELECT *, total_spent/total_orders AS avg_spent
FROM (SELECT a.name account, SUM(o.total_amt_usd) total_spent, SUM(o.total) total_orders
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name
ORDER BY total_spent DESC)))
ORDER BY avg_spent DESC;


/* WITH - Quiz Question 1 */
WITH t1 AS (SELECT r.name region, s_r.name rep,                          SUM(o.total_amt_usd) total_sales
                FROM sales_reps s_r
                JOIN region r
                ON s_r.region_id = r.id
                JOIN accounts a
                ON s_r.id = a.sales_rep_id
                JOIN orders o
                ON o.account_id = a.id
                GROUP BY r.name, s_r.name
                ORDER BY total_sales DESC)

SELECT t3.rep, t2.region, t2.max_sales
FROM (SELECT region, MAX(total_sales) max_sales
      FROM t1 
      GROUP BY region) t2
JOIN t1 t3
ON t2.region = t3.region AND t2.max_sales = t3.total_sales;




/* WITH - Quiz Question 2 */
WITH table1 AS (SELECT r.name region, 
                       SUM(o.total_amt_usd)                                  total_sales,
                       COUNT(o.total) total_orders
                FROM sales_reps s_r
                JOIN region r
                ON s_r.region_id = r.id
                JOIN accounts a
                ON s_r.id = a.sales_rep_id
                JOIN orders o
                ON o.account_id = a.id
                GROUP BY r.name
                ORDER BY total_sales DESC)
    
SELECT table2.region, table2.max_total_sales, table3.total_orders
FROM (SELECT region, MAX(total_sales) max_total_sales
      FROM table1
      GROUP BY region) table2
JOIN table1 table3
ON table2.region = table3.region AND table2.max_total_sales = table3.total_sales;


/* WITH - Quiz Question 3 */
WITH table1 AS (SELECT a.name account,                                                          SUM(o.standard_qty)                                                      total_standard_qty_orders,                                              o.total total_orders
              FROM accounts a
              JOIN orders o
              ON a.id = o.account_id
              GROUP BY a.name, o.total
              ORDER BY SUM(o.standard_qty) DESC)
    
SELECT a.name account, SUM(o.standard_qty)     total_standard_qty_orders, o.total total_orders /* or SELECT COUNT(*) */
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name, o.total
HAVING o.total > 
(SELECT o.total total_orders
            FROM orders o
            JOIN accounts a
            ON o.account_id = a.id
            GROUP BY o.total
            HAVING SUM(o.standard_qty) =
            (SELECT MAX(total_standard_qty_orders)
             FROM table1))
ORDER BY SUM(o.standard_qty) DESC;


/* WITH - Quiz Question 4 */
WITH table1 AS (SELECT a.name account, 
                      SUM(o.total_amt_usd) total_sales
                FROM accounts a
                JOIN orders o
                ON a.id = o.account_id
                JOIN web_events w_e
                ON a.id = w_e.account_id
                GROUP BY a.name
                ORDER BY total_sales DESC)

SELECT a.name account, 
       w_e.channel channels,
       COUNT(w_e.channel) number_of_web_events
FROM accounts a
JOIN orders o
ON a.id = o.account_id
JOIN web_events w_e
ON a.id = w_e.account_id

WHERE w_e.channel IN
(SELECT DISTINCT w_e.channel
FROM accounts a
JOIN web_events w_e
ON a.id = w_e.account_id)

AND

a.name =
(SELECT a.name account
FROM accounts a
JOIN orders o
ON a.id = o.account_id
JOIN web_events w_e
ON a.id = w_e.account_id
GROUP BY a.name
HAVING SUM(o.total_amt_usd) = 
(SELECT MAX(total_sales) max_total_sales
FROM table1))

GROUP BY a.name, w_e.channel
ORDER BY number_of_web_events DESC;

/* WITH - Quiz Question 5 */
WITH table1 AS (SELECT a.name account, SUM(o.total_amt_usd) total_spent, SUM(o.total) total_orders
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name
ORDER BY total_spent DESC)
    
SELECT *, total_spent/total_orders AS avg_spent
FROM table1
LIMIT 10;


/* WITH - Quiz Question 6 */
WITH table1 AS (SELECT a.name account,                                  SUM(o.total_amt_usd) total_spent, 
                  SUM(o.total) total_orders
                FROM accounts a
                JOIN orders o
                ON a.id = o.account_id
                GROUP BY a.name
                ORDER BY total_spent DESC)

SELECT a.name account, SUM(o.total_amt_usd) total_spent, SUM(o.total) total_orders, SUM(o.total_amt_usd)/SUM(o.total) AS avg_spent
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name
HAVING SUM(o.total_amt_usd)/SUM(o.total) >
(SELECT AVG(avg_spent)
FROM (SELECT *, total_spent/total_orders AS avg_spent
FROM table1))
ORDER BY avg_spent DESC;