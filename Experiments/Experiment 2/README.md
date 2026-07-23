## Unionit st

  ```
  select *
    from Arts
    UNION 
    select *
    From Science;
  ```

  ## Union All

  ```
  select emp_name 
  from employee
  union all
  select emp_name
  from pt_employee;
  ```

  ## Intersect
  ```
  select f_name
  from fruit
  INTERSECT 
  select inv_name
  from inventory;
  ```

  ## Except

  ```
  select f_name
  from fruit
  except
  select inv_name
  from inventory;
  ```
    

