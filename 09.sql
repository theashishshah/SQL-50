SELECT w1.id
FROM Weather w1
JOIN Weather w2
WHERE
    DATEDIFF(w1.recordDate, w2.recordDate) = 1 AND
    w1.temperature > w2.temperature



/* OTHER WAY AROUND */
SELECT w1.id
FROM Weather w1
JOIN Weather w2
WHERE
    SUBDATE(w1.recordDate, 1) = w2.recordDate AND
    w1.temperature > w2.temperature