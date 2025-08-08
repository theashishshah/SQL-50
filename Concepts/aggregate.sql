/* count, sum, max, min, avg -> these are the five aggregate functions
| Function  | What it does                   |
| --------- | ------------------------------ |
| `COUNT()` | Counts how many rows or values |
| `SUM()`   | Adds all values in a column    |
| `AVG()`   | Calculates the average (mean)  |
| `MAX()`   | Finds the largest value        |
| `MIN()`   | Finds the smallest value       |



| order_id  | customer_id  | product  | price |
| --------- | ------------ | -------- | ----- |
| 101       | 1            | Book     | 500   |
| 102       | 2            | Laptop   | 40000 |
| 103       | 1            | Pen      | 50    |
| 104       | 3            | Notebook | 1000  |
| 105       | 1            | Mouse    | 700   |

Orders
| order_id | product |
| --------- | ------- |
| 1         | Book    |
| 2         | Pen     |
| 3         | Book    |
| 4         | Book    |
| 5         | Laptop  |

So what does aggregate functions do? they do calculation on all row and returns the one integer ans.
eg: let's say you want to count how many products are there in orders table, 
select count(product) from orders; -> 5  // it counts number of rows for that cols
select count(disticnt product) from order; -> 3

the same calculation does all others: sum-> adds all values of rows, if null doesn't do anything

GROUP BY:  Now: What is GROUP BY and Why Do We Need It?
❓ Problem:
Suppose you want to know:
"How much did each customer spend?"
You can’t just do SUM(price) — because that gives you the total for all customers.
You need to:
Group the rows by customer
Then apply the aggregate to each group
🧠 That’s What GROUP BY Does:
It groups rows that have the same value in specified columns, so aggregate functions are calculated per group, not for the whole table.

eg: ✅
SELECT customer_id, SUM(price) AS total_spent
FROM Orders
GROUP BY customer_id;

eg: ❌
SELECT customer_id, SUM(price) FROM Orders; LoL, how will you get output? you'll not get output, instead you'll get error as sum is returning only one values, and customer_id is returning whole rows
so there will be mismatch, instead do like this:

✅ select customer_id, sum(price) from orders group by customer_id and you'll get output like this
id     price
1      10+23+13
2      199
3      343
5      null


*/

