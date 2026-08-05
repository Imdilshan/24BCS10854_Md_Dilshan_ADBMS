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
## Experiment 5.3
Declare the variable and print the data

```
DO 
$$
	DECLARE
	val int := 18;

	BEGIN
	
		if (val >= 18) then
			raise notice 'You are % Years old and allowed to vote', val;
		
		else
			raise notice 'You are % Years old and not allowed to vote', val;
			
		end if;
		
	END

$$
```

```
DO 
$$

	Declare
		val int := 41;
	
	
	Begin
		if val >= 1 and val <= 10 then
			raise notice 'Your value is % and lies in between 1 and 10', val;
			
		elsif val >= 11 and val <= 20 then
			raise notice 'Your value is % and lies in between 11 and 20', val;
			
		elsif val >= 21 and val <= 30 then
			raise notice 'Your value is % and lies in between 21 and 30', val;

		else
			raise notice 'Your value is % and is greater than 30', val;
		
		end if;
	
	End;

$$ 
```

