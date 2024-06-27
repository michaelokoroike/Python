/* See Quizzes */

/* Quiz FULL OUTER JOIN (or FULL JOIN) */

SELECT *
  FROM accounts
 FULL JOIN sales_reps ON accounts.sales_rep_id = sales_reps.id

/* Check for unmatched rows: */
WHERE accounts.sales_rep_id IS NULL OR sales_reps.id IS NULL

/* Quiz JOINs with Comparison Operators */

SELECT a.name account, a.primary_poc contact, s_r.name sales_rep
FROM accounts a
LEFT JOIN sales_reps s_r
ON a.sales_rep_id = s_r.id
AND a.primary_poc < s_r.name

/* Quiz Self JOINs */
    
SELECT we1.id AS we1_id,
       we1.account_id AS we1_account_id,
       we1.occurred_at AS we1_occurred_at,
       we1.channel AS we1_channel,
       we2.id AS we2_id,
       we2.account_id AS we2_account_id,
       we2.occurred_at AS we2_occurred_at,
       we2.channel AS we2_channel
  FROM web_events we1
 LEFT JOIN web_events we2
   ON we1.account_id = we2.account_id
  AND we2.occurred_at > we1.occurred_at
  AND we2.occurred_at <= we1.occurred_at + INTERVAL '1 day'
ORDER BY we1.account_id, we1.occurred_at

/* Quiz UNIONs */

/* Appending Data via UNION */

SELECT *
FROM accounts a1
UNION ALL
SELECT *
FROM accounts a2

/* Pretreating Tables before doing a UNION */

SELECT *
FROM accounts a1
WHERE a1.name = 'Walmart'
UNION ALL
SELECT *
FROM accounts a2
WHERE a2.name = 'Disney'
    
/* Performing Operations on a Combined Dataset */

WITH double_accounts as (SELECT *
FROM accounts a1
UNION ALL
SELECT *
FROM accounts a2)

SELECT name,
       COUNT(*) as appearances
FROM double_accounts
GROUP BY 1

/* JOINing Subqueries - Examples */

    /* Good (aggreagates the tables...makes them smaller and easier to count on)*/
SELECT COALESCE (orders.date, web_events.date) AS date,
       orders.active_Sales_reps,
       orders.orders,
       web_events.web_visits
FROM (
SELECT DATE_TRUNC('day', o.occurred_at) AS date,
       COUNT(DISTINCT a.sales_rep_id) AS active_sales_reps,
       COUNT(DISTINCT o.id) AS orders
   FROM accounts a
   JOIN orders o
   ON o.account_id = a.id
  GROUP BY 1) orders

FULL JOIN

(
SELECT DATE_TRUNC('day', we.occurred_at) AS date,
       COUNT(DISTINCT we.id) AS web_visits       
  FROM web_events we
  GROUP BY 1
) web_events

ON web_events.date = orders.date
ORDER BY 1 DESC

    /* Bad (pulls all rows from all raw tables) */
SELECT DATE_TRUNC('day', o.occurred_at) AS date,
       COUNT(DISTINCT a.sales_rep_id) AS active_sales_reps,
       COUNT(DISTINCT(o.id) AS orders,
       COUNT(DISTINCT we.id) AS web_vistis
FROM   accounts a
JOIN   orders o
ON     o.account_id = a.id
JOIN   web_events we
ON     DATE_TRUNC('day', we.occurred_at) = DATE_TRUNC('day', o.occurred_at)
GROUP BY 1
ORDER BY 1 DESC