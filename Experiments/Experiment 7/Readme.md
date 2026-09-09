## Experiment 7.1

``` sql
/* Implement a PL/SQL block with a cursor to fetch and display the Name and Salary of the top 5 highest-paid employees from the Staff table. */

-- Prerequities:
CREATE TABLE Staff (
    Staff_ID NUMBER PRIMARY KEY,
    Name VARCHAR2(100),
    Salary NUMBER(10,2),
    Department VARCHAR2(50)
);

INSERT INTO Staff VALUES (101, 'Rahul', 50000, 'IT');
INSERT INTO Staff VALUES (102, 'Amit', 75000, 'HR');
INSERT INTO Staff VALUES (103, 'Priya', 90000, 'Finance');
INSERT INTO Staff VALUES (104, 'Neha', 65000, 'IT');
INSERT INTO Staff VALUES (105, 'Rohan', 85000, 'Sales');
INSERT INTO Staff VALUES (106, 'Anjali', 55000, 'HR');
INSERT INTO Staff VALUES (107, 'Vikas', 95000, 'IT');
INSERT INTO Staff VALUES (108, 'Sneha', 70000, 'Finance');
INSERT INTO Staff VALUES (109, 'Karan', 80000, 'Sales');
INSERT INTO Staff VALUES (110, 'Pooja', 60000, 'Finance');

-- Main Query:
DECLARE
    CURSOR c_top5 IS
        SELECT Name, Salary
        FROM Staff
        ORDER BY Salary DESC
        FETCH FIRST 5 ROWS ONLY;

    v_name   Staff.Name%TYPE;
    v_salary Staff.Salary%TYPE;

BEGIN
    OPEN c_top5;

    LOOP
        FETCH c_top5 INTO v_name, v_salary;

        EXIT WHEN c_top5%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'Name: ' || v_name || ' | Salary: ' || v_salary
        );
    END LOOP;

    CLOSE c_top5;
END;
/
```

---

## Experiment 7.2

```sql
-- Write a PL/SQL cursor loop to process the Orders table row-by-row and print "High Value" for every order where the Amount exceeds 10,000. 
```


```sql
-- Prerequities:
CREATE TABLE Orders (
    Order_ID NUMBER PRIMARY KEY,
    Customer_Name VARCHAR2(100),
    Amount NUMBER(10,2)
);

INSERT INTO Orders VALUES (1, 'Rahul', 15000);
INSERT INTO Orders VALUES (2, 'Amit', 8000);
INSERT INTO Orders VALUES (3, 'Priya', 25000);
INSERT INTO Orders VALUES (4, 'Neha', 12000);
INSERT INTO Orders VALUES (5, 'Rohan', 5000);
INSERT INTO Orders VALUES (6, 'Anjali', 18000);

-- Query 
DECLARE
    CURSOR c_orders IS
        SELECT Order_ID, Customer_Name, Amount
        FROM Orders;

BEGIN
    FOR order_rec IN c_orders
    LOOP
        IF order_rec.Amount > 10000 THEN
            DBMS_OUTPUT.PUT_LINE(
                'Order ID: ' || order_rec.Order_ID ||
                ' | Customer: ' || order_rec.Customer_Name ||
                ' | Amount: ' || order_rec.Amount ||
                ' | High Value'
            );
        END IF;
    END LOOP;
END;
/
```
---

