## Exp 3.1

-- Write a query to count the number of students across departments who has scored more than 80 marks.
```
SELECT department,
count(CASE WHEN marks > 80 THEN 1 END) as Dept_HighScore_Count 
    From student
    Group by Department;
```

## Exp 3.2

```
SELECT emp_city,MAX(EMP_SALARY) AS MAX_SALARY
FROM employees
GROUP BY EMP_CITY
HAVING MAX(EMP_SALARY)>=90000
```

## Exp 3.3

```
SELECT NAME AS CUSTOMERS FROM CUSTOMERS
WHERE ID NOT IN(
SELECT CUSTOMERID FROM ORDERS
)
```

## Exp 3.4
```
    SELECT e.name, b.bonus
    FROM Employee as e 
    left join
    Bonus as b
    on e.empid = b.empid
    where  b.bonus < 1000 or b.bonus is null;
```



