# Write your MySQL query statement below
SELECT 
    tweet_id
FROM
    Tweets
WHERE
    CHAR_LENGTH(content) > 15
/* 
To find the length of values in any cols we use length(col name)

CHAR_LENGTH -> human readable lenght like: "ashish" -> 6
LENGTH() -> number of byts like "ashish" -> 6 but in sql 1 char takes one byte so in this case this is same but "$" -> this takes 3 bytes so length -> 3, char_length -> 1
*/