

```sql
CREATE TABLE Employee (
    EMP_ID INT PRIMARY KEY,
    EMP_NAME VARCHAR(100) NOT NULL,
    SALARY NUMERIC(10, 2) NOT NULL,
    DEPARTMENT_NAME VARCHAR(100) NOT NULL
);


CREATE OR REPLACE PROCEDURE Insert_Employee(
    p_emp_id INT,
    p_emp_name VARCHAR,
    p_salary NUMERIC,
    p_department_name VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF p_emp_id % 2 = 0 THEN
        RAISE EXCEPTION 'Even EMP_ID is not allowed. Only odd EMP_ID is allowed.';
    ELSE
        INSERT INTO Employee (EMP_ID, EMP_NAME, SALARY, DEPARTMENT_NAME)
        VALUES (p_emp_id, p_emp_name, p_salary, p_department_name);

        RAISE NOTICE 'Employee inserted successfully!';
    END IF;
END;
$$;

CALL Insert_Employee(101, 'Ridam', 65000.00, 'Engineering');
```