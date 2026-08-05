## Experiment 5.1
link: https://www.codechef.com/learn/course/sql-intermediate/SQ00BS09/problems/GSQ85D?tab=statement

```
/* Write a query to find out what percentage of the total revenue (sum of all orders) is contributed by American Cuisine. Round the final value to 2 decimal places */

select 
Round(
(Sum(Case when Cuisine="American" then price else 0 end) * 100)
/Sum(price)
,2)
as American_Revenue
from orders;

```

---

## Experiment 5.2
link: https://leetcode.com/problems/invalid-tweets/description/?envType=study-plan-v2&envId=top-sql-50

```
-- Write your PostgreSQL query statement below

select tweet_id 
from Tweets
where length(content) > 15;
```

---