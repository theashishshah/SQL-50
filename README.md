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
