-- # first find out first order 
-- # then then find out percentage
SELECT 
    ROUND(
        SUM(IF(order_date = customer_pref_delivery_date, 1, 0)) * 100 / COUNT(*)
    , 2) AS immediate_percentage
FROM 
    Delivery
WHERE (customer_id, order_date) IN (
    SELECT
        customer_id, MIN(order_date)
    FROM
        Delivery
    GROUP BY
        customer_id
)


/*
| delivery\_id | customer\_id | order\_date | preferred\_date |
| ------------ | ------------ | ----------- | --------------- |
| 1            | 101          | 2023-01-01  | 2023-01-02      |
| 2            | 101          | 2023-01-05  | 2023-01-05      |
| 3            | 102          | 2023-01-03  | 2023-01-03      |
| 4            | 103          | 2023-01-02  | 2023-01-02      |
| 5            | 103          | 2023-01-01  | 2023-01-01      |



--  first find out first order 
--  then then find out percentage
SELECT *
FROM 
    Delivery
WHERE (customer_id, order_date) IN (
    SELECT
        customer_id, MIN(order_date)
    FROM
        Delivery
    GROUP BY
        customer_id
)

-- 🎯 Your Question:
-- Will this return all columns where the (customer_id, order_date) pair matches the result of the subquery?

-- ✅ YES, exactly.
-- It returns all rows from Delivery where the customer's first order (based on order_date) matches the tuple (customer_id, order_date)

🔹 Step 1: Execute the subquery 
SELECT customer_id, MIN(order_date)
FROM Delivery
GROUP BY customer_id;

| customer\_id | MIN(order\_date) |
| ------------ | ---------------- |
| 101          | 2023-01-01       |
| 102          | 2023-01-03       |
| 103          | 2023-01-01       |


SELECT *
FROM Delivery
WHERE (customer_id, order_date) IN (
    (101, '2023-01-01'),
    (102, '2023-01-03'),
    (103, '2023-01-01')
);
It returns all columns for rows where both customer_id and order_date match any of those tuples.


✅ Final result:
| delivery\_id | customer\_id | order\_date | preferred\_date |
| ------------ | ------------ | ----------- | --------------- |
| 1            | 101          | 2023-01-01  | 2023-01-02      |
| 3            | 102          | 2023-01-03  | 2023-01-03      |
| 5            | 103          | 2023-01-01  | 2023-01-01      |

🧠 Important Notes:
(col1, col2) IN (SELECT col1, col2 FROM ...) is called a tuple comparison, and it's perfectly valid in MySQL.

It only works when both the outer and inner queries return matching numbers and types of columns.

Much more readable and efficient than joining and filtering manually.

*/