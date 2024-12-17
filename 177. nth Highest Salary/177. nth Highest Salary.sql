''' 
Problem: find the nth highest salary from the Employee table, if no nth highest, return null 

Logic: window function - dense_rank()  the solution can be used for nth.
  
'''

  
with cte as  ( 

  select salary, dense_rank() over (order by salary desc) as rnk from EMPLOYEE e 

)

select IFNULL((select distinct salary from CTE where rnk =2),null) as SecondHighestSalary;
