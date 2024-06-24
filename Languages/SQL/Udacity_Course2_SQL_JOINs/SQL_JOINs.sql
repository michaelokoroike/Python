/* Basic JOIN (see Notes and Quizzes)*/
SELECT orders.*
FROM orders
JOIN accounts
ON orders.account_id = accounts.id;

/* Complex JOIN (see Notes and Quizzes)*/
SELECT *
FROM web_events
JOIN accounts
ON web_events.account_id = accounts.id
JOIN orders
ON accounts.id = orders.account_id