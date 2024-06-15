/* Look at Notes and Quizzes */

/* NULLs */
SELECT *
FROM accounts
WHERE primary_poc IS NULL;

/* COUNT */
SELECT COUNT(*) as order_count
FROM accounts
WHERE id > 1500;

/* SUM */
SELECT SUM(standard_qty) AS standard,
       SUM(gloss_qty) AS gloss,
       SUM(poster_qty) AS poster
FROM orders;

/* MIN and MAX */
SELECT MIN(standard_qty) AS standard_min,
       MIN(gloss_qty) AS gloss_min,
       MIN(poster_qty) AS poster_min,
       MAX(standard_qty) AS standard_max,
       MAX(gloss_qty) AS gloss_max,
       MAX(poster_qty) AS poster_max
FROM orders;

/* AVG */
SELECT AVG(standard_qty) AS standard_avg,
       AVG(gloss_qty) AS gloss_avg,
       AVG(poster_qty) AS poster_avg
FROM orders;

/* GROUP BY */
SELECT account_id,
       SUM(standard_qty) AS standard,
       SUM(gloss_qty) AS gloss,
       SUM(poster_qty) AS poster
FROM orders
GROUP BY account_id
ORDER BY account_id;

/* DISTINCT */
SELECT DISTINCT column1, column2, column3
FROM table1
ORDER BY column1;

/* HAVING */
SELECT account_id,
       SUM(total_amt_usd) AS sum_total_amt_usd,
FROM orders
GROUP BY 1
HAVING SUM(total_amt_usd) >= 250000;

/* DATE */
SELECT DATE_TRUNC('day', occurred_at) AS day,
       SUM(standard_qty) AS standard_qty
FROM orders
GROUP BY DATE_TRUNC('day', occurred_at)
ORDER BY DATE_TRUNC('day', occurred_at)

SELECT DATE_PART('dow', occurred_at) AS day,
       SUM(standard_qty) AS standard_qty
FROM orders
GROUP BY DATE_PART('dow', occurred_at)
ORDER BY DATE_PART('dow', occurred_at)

/* CASE */
SELECT id,
       account_id,
       occurred_at,
       channel,
       CASE WHEN channel = 'facebook' THEN 'yes' END AS is_facebook     
FROM web_events
ORDER BY occurred_at


SELECT id,
       account_id,
       occurred_at,
       total,
       CASE WHEN total > 500 THEN 'Over 500'
            WHEN total > 300 AND total < 500 THEN '301-500'
            ELSE '300 or under' END AS total_group
FROM orders
ORDER BY occurred_at


SELECT CASE WHEN total > 500 THEN 'Over 500'
            ELSE '500 or under' END AS total_group,
       COUNT(*) AS order_count
FROM orders
GROUP BY 1