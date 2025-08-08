SELECT name FROM Customer WHERE referee_id != 2 OR referee_id IS NULL

/* Optimized approach */
SELECT
    name
FROM
    Customer
WHERE
    IFNULL(referee_id, 0) <> 2

/* another way */
SELECT 
    name
FROM
    Customer
WHERE 
    referee_id IS NULL OR referee_id <> 2
    /* <> is the original sql "not equal to"