SELECT name FROM Customer WHERE referee_id != 2 OR referee_id IS NULL

/* Optimized approach */
SELECT
    name
FROM
    Customer
WHERE
    IFNULL(referee_id, 0) <> 2

/*  if referee_id is not null give me the same I'll compare it with <>(not equal to) 2 else give me 0
and I'll compare 0 != 2, right?

IFNULL(expression, value) in MySQL
IFNULL(x, y) checks:
If x is NOT NULL, return x.
If x is NULL, return y.

*/




/* another way */
SELECT 
    name
FROM
    Customer
WHERE 
    referee_id IS NULL OR referee_id <> 2
    /* <> is the original sql "not equal to"