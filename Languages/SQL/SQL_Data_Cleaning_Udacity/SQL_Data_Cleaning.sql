/* See Quizzes */

/* Quiz LEFT & RIGHT - My Answers */

/*1*/
SELECT DISTINCT website_extension, COUNT(website_extension)
FROM (SELECT *, RIGHT(website, 3) AS website_extension
FROM accounts)
GROUP BY website_extension;
/* Better answer = 
SELECT RIGHT(website, 3) AS website_extension, COUNT(*) num_companies
FROM accounts
GROUP BY 1
ORDER BY 2 DESC; */

/*2*/
SELECT DISTINCT first_character_of_company_name, COUNT(first_character_of_company_name) how_often
FROM (SELECT *, LEFT(name, 1) AS first_character_of_company_name
FROM accounts)
GROUP BY first_character_of_company_name
ORDER BY COUNT(first_character_of_company_name) DESC;

/*3*/
SELECT COUNT(CASE WHEN isnumeric = false THEN 1 END) starts_with_letter,
       COUNT(CASE WHEN isnumeric = true THEN 1 END) starts_with_number
FROM (SELECT name, 
       LEFT(name, 1) AS first_character_of_company_name,
       textregexeq(LEFT(name, 1),'^[[:digit:]]+(\.[[:digit:]]+)?$') AS isnumeric
FROM accounts);

/*4*/
SELECT COUNT(CASE WHEN first_character_of_company_name IN ('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U') THEN 1 END) starts_with_vowel,
       COUNT(CASE WHEN first_character_of_company_name NOT IN ('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U') THEN 1 END) starts_with_non_vowel
FROM (SELECT name, 
       LEFT(name, 1) AS first_character_of_company_name
FROM accounts);


/* Quiz POSITION, STRPOS, & SUBSTR - AME DATA AS QUIZ 1 */

/*1*/
SELECT primary_poc,
       LEFT(primary_poc, POSITION(' ' IN primary_poc) - 1)  AS first_name,
       RIGHT(primary_poc, LENGTH(primary_poc) - POSITION(' ' IN primary_poc))  AS last_name
FROM accounts

/*2*/
SELECT name,
       LEFT(name, POSITION(' ' IN name) - 1)  AS first_name,
       RIGHT(name, LENGTH(name) - POSITION(' ' IN name))  AS last_name
FROM sales_reps


/* Quiz CONCAT */

/*1*/
SELECT primary_poc,
       CONCAT(LEFT(primary_poc, POSITION(' ' IN primary_poc) - 1), '.', RIGHT(primary_poc, LENGTH(primary_poc) - POSITION(' ' IN primary_poc)), '@', name, '.com') AS email_address
FROM accounts

/*2*/
SELECT primary_poc,
       CONCAT(LEFT(primary_poc, POSITION(' ' IN primary_poc) - 1), 
              '.', 
              RIGHT(primary_poc, LENGTH(primary_poc) - POSITION(' ' IN primary_poc)), 
              '@', 
              (CASE WHEN position(' ' in name) != 0 THEN (CONCAT(LEFT(name, POSITION(' ' IN name) - 1), '', RIGHT(name, LENGTH(name) - POSITION(' ' IN name)))) ELSE name END), 
'.com') AS email_address,
FROM accounts

/*3*/
       SELECT primary_poc,
       CONCAT(LEFT(primary_poc, POSITION(' ' IN primary_poc) - 1), 
              '.', 
              RIGHT(primary_poc, LENGTH(primary_poc) - POSITION(' ' IN primary_poc)), 
              '@', 
              (CASE WHEN position(' ' in name) != 0 THEN (CONCAT(LEFT(name, POSITION(' ' IN name) - 1), '', RIGHT(name, LENGTH(name) - POSITION(' ' IN name)))) ELSE name END), 
'.com') AS email_address,
CONCAT(LOWER(LEFT(primary_poc, 1)),
  LOWER(SUBSTR(primary_poc,  (strpos(primary_poc, ' ') - 1), 1)),
  LOWER(SUBSTR(primary_poc,  (strpos(primary_poc, ' ') + 1), 1)),
  LOWER(RIGHT(primary_poc, 1)),
  LENGTH(LEFT(primary_poc, POSITION(' ' IN primary_poc) - 1)),  
  LENGTH(RIGHT(primary_poc, LENGTH(primary_poc) - POSITION(' ' IN primary_poc))),
UPPER((CASE WHEN position(' ' in name) != 0 THEN (CONCAT(LEFT(name, POSITION(' ' IN name) - 1), '', RIGHT(name, LENGTH(name) - POSITION(' ' IN name)))) ELSE name END)))           
FROM accounts                                          
/* https://www.postgresql.org/docs/8.1/functions-string.html (link to the functions) */


/* Quiz CAST */

/* Task 4 */
SELECT *,
SUBSTR(LEFT(scd.date, 10), 7, 4) || '/' || SUBSTR(LEFT(scd.date, 10), 1, 2) || '/' || SUBSTR(LEFT(scd.date, 10), 4, 2) AS formatted_date
FROM sf_crime_data scd
LIMIT 10

/* Task 5 */
SELECT *,
(SUBSTR(LEFT(scd.date, 10), 7, 4) || '/' || SUBSTR(LEFT(scd.date, 10), 1, 2) || '/' || SUBSTR(LEFT(scd.date, 10), 4, 2))::date AS formatted_date
FROM sf_crime_data scd
LIMIT 10

/* Quiz COALESCE */

/* Task 6 - Most complex */
SELECT COALESCE(o.id, a.id) filled_id, a.name, a.website, a.lat, a.long, a.primary_poc, a.sales_rep_id, COALESCE(o.account_id, a.id) account_id, o.occurred_at, COALESCE(o.standard_qty, 0) standard_qty, COALESCE(o.gloss_qty,0) gloss_qty, COALESCE(o.poster_qty,0) poster_qty, COALESCE(o.total,0) total, COALESCE(o.standard_amt_usd,0) standard_amt_usd, COALESCE(o.gloss_amt_usd,0) gloss_amt_usd, COALESCE(o.poster_amt_usd,0) poster_amt_usd, COALESCE(o.total_amt_usd,0) total_amt_usd
FROM accounts a
LEFT JOIN orders o
ON a.id = o.account_id;