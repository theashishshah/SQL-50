SELECT name 
FROM
(SELECT e1.id, e1.name, COUNT(e2.managerId) AS managerId
FROM Employee e1
INNER JOIN Employee e2
ON e1.id = e2.managerId
GROUP BY e1.id) AS managers
WHERE managerId >= 5