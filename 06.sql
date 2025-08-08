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