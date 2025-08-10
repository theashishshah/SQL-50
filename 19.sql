SELECT
    query_name, ROUND(AVG(rating / position), 2) AS quality, ROUND((SUM(rating < 3) / COUNT(query_name)) * 100, 2) AS  poor_query_percentage
FROM
    Queries q
GROUP BY
    query_name