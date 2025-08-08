SELECT
    Employees.name,
    EmployeeUNI.unique_id
FROM
    Employees
LEFT JOIN
    EmployeeUNI
ON
    Employees.id = EmployeeUNI.id

/*
give me the whole left table's employees's name and whichever is matching from the right table, give me that id else it will be null.

*/

SELECT p.product_name, s.year, s.price
FROM Sales s
LEFT JOIN Product p
ON s.product_id = p.product_id


SELECT p.product_name, s.year, s.price
FROM Sales s
LEFT JOIN Product p
USING(product_id)