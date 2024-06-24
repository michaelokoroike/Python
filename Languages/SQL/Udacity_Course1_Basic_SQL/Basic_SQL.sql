/* See Notes = See Notes and Quizzes */

/* SELECT, FROM (see Notes)*/
SELECT (columns, * (for_all_columns))
FROM (database/data_table);

/* LIMIT (see Notes) */
SELECT (columns, * (for_all_columns))
FROM (database/data_table)
LIMIT 10;

/* ORDER BY (see Notes) */
SELECT (columns, * (for_all_columns))
FROM (database/data_table)
    ORDER BY (DATE_OF_THING) DESC
LIMIT 10;

/* ORDER BY, advanced (see Notes) */
SELECT (columns, * (for_all_columns))
FROM (database/data_table)
    ORDER BY (TIME_Of_THING), (DATE_OF_THING) DESC
LIMIT 10;

/* WHERE (see Notes) */
SELECT (columns, * (for_all_columns))
FROM (database/data_table)
    WHERE NUMBER_OF_THING >= 1000
LIMIT 10;

/* WHERE, non-numerical (see Notes) */
SELECT (columns, * (for_all_columns))
FROM (database/data_table)
    WHERE DATE_OF_THING >= '05-18-1995'
LIMIT 10;

/* Arithmetic Operators (see Notes) */
SELECT (account_id
        total_items_ordered,
        number_of_orders,
        total_items_ordered / number_of_orders as              items_per_order)
FROM (database/data_table)
LIMIT 10;

/* LIKE (see Notes) */
SELECT (columns, * (for_all_columns))
FROM (database/data_table)
    WHERE LOCATION_OF_THING LIKE 'S%'
LIMIT 10;

/* IN (see Notes) */
SELECT (columns, * (for_all_columns))
FROM (database/data_table)
    WHERE LOCATION_OF_THING IN 'Sacramento'
LIMIT 10;

/* NOT (see Notes) */
SELECT (columns, * (for_all_columns))
FROM (database/data_table)
    WHERE LOCATION_OF_THING NOT IN 'Sacramento'
LIMIT 10;

SELECT (columns, * (for_all_columns))
FROM (database/data_table)
    WHERE LOCATION_OF_THING NOT LIKE 'S%'
LIMIT 10;

/* AND & BETWEEN (see Notes) */
SELECT (columns, * (for_all_columns))
FROM (database/data_table)
    WHERE NUMBER_OF_THING >= 100 AND NUMBER_OF_THING <= 200
LIMIT 10;

SELECT (columns, * (for_all_columns))
FROM (database/data_table)
    WHERE NUMBER_OF_THING BETWEEN 100 AND 200
LIMIT 10;

/* OR (see Notes) */
SELECT (columns, * (for_all_columns))
FROM (database/data_table)
    WHERE LOCATION_OF_THING IN 'Sacramento' OR         NUMBER_OF_THING >= 200
LIMIT 10;
