# Write your MySQL query statement below
-- Activity table:
-- +---------+------------+---------------+---------------+
-- | user_id | session_id | activity_date | activity_type |
-- +---------+------------+---------------+---------------+
-- | 1       | 1          | 2019-07-20    | open_session  |
-- | 1       | 1          | 2019-07-20    | scroll_down   |
-- | 1       | 1          | 2019-07-20    | end_session   |
-- | 2       | 4          | 2019-07-20    | open_session  |
-- | 2       | 4          | 2019-07-21    | send_message  |
-- | 2       | 4          | 2019-07-21    | end_session   |
-- | 3       | 2          | 2019-07-21    | open_session  |
-- | 3       | 2          | 2019-07-21    | send_message  |
-- | 3       | 2          | 2019-07-21    | end_session   |
-- +---------+------------+---------------+---------------+
-- 2019-06-28  <-> 2019-07-27

SELECT
   activity_date AS day, COUNT(DISTINCT user_id) AS active_users
FROM
    Activity
WHERE
    activity_date >= "2019-06-28" AND activity_date <= "2019-07-27"
GROUP BY
    activity_date