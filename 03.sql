SELECT
    name, population, area
FROM 
    World
WHERE
    area >= 3000000 OR population >= 25000000

/** or we can implement it using union */
SELECT
    name, population, area
FROM 
    World
WHERE
    area >= 3000000 
    
UNION

SELECT
    name, population, area
FROM 
    World
WHERE
    population >= 25000000