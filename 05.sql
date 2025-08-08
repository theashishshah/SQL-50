# Write your MySQL query statement below
SELECT 
    tweet_id
FROM
    Tweets
WHERE
    LENGTH(content) > 15
/* 
To find the length of values in any cols we use length(col name)


*/