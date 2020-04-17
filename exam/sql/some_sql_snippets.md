# Below is a list of some SQL samples

**Feel free to run them on an appropriate env, with the appropriate tables**

Here again, the idea is to understand how it works. You won't be asked to run anything, only to confirm what it does/ if it will work.

For the code snippets, we will imaging such a table, called `iris`  


| lenght        | WIDTH           | species  |
| ------------- |-------------| -----|
| 5.1 | 3.8 | setosa |
| 5.7      | 5.4 |   versicolor |
| 4.6 | 5.7  |  setosa |



###  Group by and Aggregations

Below code will count the number of rows per specie in my dataset.  
```
select count(*)
from "iris"
group by "species”
```

Below one won't work, because you are not aggregating any column.  

```
select *
from "iris"
group by "species"
```

### SQL Syntax

On PosgreSQL, you will use an insensitive syntax. Still, be aware of the following.  

Below code will work
 
```
select * from "species" where "length" < 5
```

Below code will work
```
SELECT * FROM "species" WHERE "length" < 5
```

Below code won't work
```
select * from "species" where WIDTH < 5
```

Below code will work
```
select * from "species" where "WIDTH" < 5
``` 

### Other questions

In other questions, you will be aked to choose the proper aggragations. No worries on this part!  


