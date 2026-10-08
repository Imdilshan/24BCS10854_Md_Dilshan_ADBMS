## 9.1

```sql
/*
  Implement a Row-Level BEFORE UPDATE Trigger on the Salary_Hike table that restricts a salary 
  increase to no more than 15% of the :OLD.salary value; if the increase exceeds this limit, 
  the trigger must raise a custom User-Defined Exception  with a specific message
*/

create or replace function salary_hike_func()
returns Trigger
AS
$$
	Begin
		if New.emp_salary - Old.emp_salary > Old.emp_salary * 0.15 then
			Raise Exception 'The salary hike cannot be more than 15 percent of the old salary';
		end if;

		return New;
	End;
$$ language plpgsql

create trigger salary_hike_trig
Before update
on employees
For each row
Execute function salary_hike_func()

update employees set emp_salary = 100000 where emp_id = 103

```


## 9.2


```sql

/*
  Problem Statement

Create an Employee Payroll Management System in PostgreSQL using row-level and statement-level triggers.

Create an employee table containing the following attributes:

* emp_id
* emp_name
* per_hour_salary
* working_hours
* payable_amount

Requirements

1. Create a row-level trigger that automatically calculates payable_amount using:
    per_hour_salary × working_hours
    whenever an employee is inserted or updated.
2. The row-level trigger must check whether the calculated payable_amount is greater than 25,000.
    * If it is greater than 25,000, reject the operation using RAISE EXCEPTION.
    * Otherwise, allow the operation.
3. Create a statement-level trigger that executes after an INSERT or UPDATE statement and displays the message:
    “Rows Updated Successfully”
4. Demonstrate the working of both triggers using suitable INSERT and UPDATE statements, including at least one case where the payable_amount exceeds 25,000.

*/

CREATE TABLE employee10 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    per_hour_salary NUMERIC(10,2),
    working_hours NUMERIC(10,2),
    payable_amount NUMERIC(10,2)
);

INSERT INTO employee10
(emp_id, emp_name, per_hour_salary, working_hours, payable_amount)
VALUES
(101, 'Amit', 500, 8, 0),
(102, 'Rahul', 600, 7, 0),
(103, 'Priya', 550, 9, 0);

SELECT * FROM EMPLOYEE10


CREATE OR REPLACE FUNCTION CAL_EMP_PAYABLE_AMOUNT()
RETURNS TRIGGER
AS
$$
	BEGIN
	NEW.payable_amount=NEW.per_hour_salary*NEW.working_hours;
	IF NEW.payable_amount>25000 THEN 
		RAISE EXCEPTION 'YOUR PAYABLE AMOUNT IS % AND PAYALABLE AMOUNT SHOULD NOT GREATER THAN 25000',NEW.payable_amount;
	END IF;

	RETURN NEW;
	END;
$$ LANGUAGE PLPGSQL


CREATE TRIGGER EMP_PAYALABLE_SAL_TRG
BEFORE INSERT OR UPDATE
ON employee10
FOR EACH ROW
EXECUTE FUNCTION CAL_EMP_PAYABLE_AMOUNT()




CREATE OR REPLACE FUNCTION MSG_EMP_PAYABLE_AMOUNT()
RETURNS TRIGGER
AS
$$
	BEGIN

	RAISE NOTICE 'ROWS UPDATED SUCESSFULLY';
	
	RETURN NULL;
	END;
$$ LANGUAGE PLPGSQL



DROP TRIGGER MSG_EMP_PAYALABLE_SAL_TRG ON EMPLOYEE10

CREATE TRIGGER MSG_EMP_PAYALABLE_SAL_TRG
AFTER INSERT OR UPDATE
ON employee10
FOR EACH STATEMENT
EXECUTE FUNCTION MSG_EMP_PAYABLE_AMOUNT();

```

