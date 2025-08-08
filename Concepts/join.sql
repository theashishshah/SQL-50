/* Join

| user_id  | name    |
| -------- | ------- |
| 1        | Alice   |
| 2        | Bob     |
| 3        | Charlie |
| 4        | David   |


| order_id  | user_id  | item     |
| --------- | -------- | -------- |
| 101       | 1        | Book     |
| 102       | 2        | Laptop   |
| 103       | 1        | Pen      |
| 104       | 5        | Notebook |

1. inner join(join): there will be two tables, right? It will say from the first table, this row's this col is matching to this col of another table's row, give me this whole row from the first table and also give me the other row from the second table, now you've this whole row from the first table and this other whole row from the second table, now print which cols you want to print
eg: 
1. select user.name, order.item from users join orders on users.user_id = orders.user_id

2. LEFT JOIN: it says, i'll take whole table from the left side and whichever is matching in right table, I'll add it with the same row of the first table else other will be null
eg: select users.name, orders.item from users left join orders on users.id = orders.id

3. RIGHT JOIN: it says, I"ll take the whole right table and whichever row is matching from the left table i'll take it esle everyone will be null in that col.



*/