# SQL-50
### To get the date diff
```sql

DATEDIFF(w1.recordDate, w2.recordDate) = 1 // we can get the diff 

or 

SUBDATE(w1.recordDate, 1) = w2.recordDate // we can also subtract the dates

```

### We can get the length of the character
```sql

CHAR_LENGTH(content) > 15
```