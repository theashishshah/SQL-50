# SQL-50
### To get the date diff
```sql

DATEDIFF(w1.recordDate, w2.recordDate) = 1 // we can get the diff 

or 

SUBDATE(w1.recordDate, 1) = w2.recordDate // we can also subtract the dates

```

### We can get the length of the character
```sql

CHAR_LENGTH(content) > 15
```

### Lesson 1
```sql
SELECT 
    class
FROM
    Courses
WHERE 
    COUNT(student) >= 5
GROUP BY
    class

-- WHERE 
    --COUNT(student) >= 5
-- 🚫 Problem:
-- You cannot use aggregate functions like COUNT() in the WHERE clause.
-- WHERE filters rows before aggregation.
-- COUNT() works after grouping — so it must be used in the HAVING clause.
-- ✅ Correct query:
SELECT 
    class
FROM
    Courses
GROUP BY
    class
HAVING 
    COUNT(student) >= 5;
```

## Learn about 'IN' Operator
The IN operator is used to filter rows where a column’s value matches any value from a list of values.
It lets you check if a value matches any value in a list or a subquery.

It's like saying:
    “Is this value one of these?”
    or 
    "give me those rows, whose col value matches any of these values"
```sql
select *
from employee
where emp_id IN (1, 3, 5) 
-- OR
SELECT *
FROM employee
WHERE emp_id = 1 OR emp_id = 3 OR emp_id = 5;

-- for multiple col in subquery
SELECT customer_id, name
FROM customers
WHERE (customer_id, name) IN (
    SELECT customer_id, name
    FROM orders
    WHERE order_amount > 100
);

-- This checks the pair (customer_id, name) against pairs from the subquery.
-- Important: The subquery must return the same number of columns in the same order.


```

## Learn about 'COUNT(*)' and 'COUNT(*)'

## what's and why wrong?
```sql
SELECT customer_id, name, COUNT(order_id)
FROM customers
GROUP BY customer_id;

-- You are grouping by customer_id.
-- You want to count orders per customer (which is an aggregate, so that’s fine).
-- But what about name? If multiple rows with the same customer_id have different name values, SQL doesn’t know which one to pick.

SELECT customer_id, name, COUNT(order_id)
FROM customers
GROUP BY customer_id, name;


```
# Done topics:
✅ COUNT
✅ GROUP BY
✅ HAVING
✅ IN

