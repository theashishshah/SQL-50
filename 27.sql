# Write your MySQL query statement below
SELECT
    user_id, COUNT(IF(follower_id <> 0, follower_id, 1)) AS followers_count
FROM
    Followers
GROUP BY
    user_id
ORDER BY
    user_id ASC


-- Other way around
# Write your MySQL query statement below
SELECT
    user_id, COUNT(DISTINCT follower_id) AS followers_count
FROM
    Followers
GROUP BY
    user_id
ORDER BY
    user_id ASC