# Write your MySQL query statement below


SELECT 
    ROUND(
        COUNT(player_id) / (SELECT COUNT(DISTINCT player_id) FROM Activity)
    , 2) AS fraction
FROM 
    Activity
WHERE (player_id, DATE_SUB(event_date, INTERVAL 1 DAY)) 
IN
(SELECT  # First find out first logins
    player_id, MIN(event_date) as first_login
FROM
    Activity
GROUP BY
    player_id
    )



/* Other way around */
SELECT 
    ROUND(
        COUNT(DISTINCT a.player_id) / (SELECT COUNT(DISTINCT player_id) FROM Activity),
        2
    ) AS fraction
FROM 
    Activity a
JOIN (
    SELECT player_id, MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
) first_logins
ON a.player_id = first_logins.player_id
WHERE a.event_date = DATE_ADD(first_logins.first_login, INTERVAL 1 DAY);

