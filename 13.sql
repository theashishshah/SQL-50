SELECT name 
FROM
(SELECT e1.id, e1.name, COUNT(e2.managerId) AS managerId
FROM Employee e1
INNER JOIN Employee e2
ON e1.id = e2.managerId
GROUP BY e1.id) AS managers
WHERE managerId >= 5


/* another way around */
SELECT e1.name
FROM Employee e1
INNER JOIN Employee e2
ON e1.id = e2.managerId
GROUP BY e2.managerId
HAVING COUNT(e2.managerId) >= 5