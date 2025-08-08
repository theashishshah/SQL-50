SELECT name FROM Customer WHERE referee_id != 2 OR referee_id IS NULL

/* Optimized approach */
SELECT
    name
FROM
    Customer
WHERE
    IFNULL(referee_id, 0) <> 2