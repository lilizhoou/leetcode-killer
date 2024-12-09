# https://leetcode.com/problems/nth-highest-salary/

''' find the nth highest salary from the Employee table, if no nth highest, return null '''

# python solution
def nth_highest_salary(df,N:int):
    df.drop_duplicates()
    df['rnk'] = df['Salary'].rank(method = 'dense',ascending = False)
    nth_salary = df[df['rnk']==2]['Salary']
    result = pd.DataFrame({f'getNthHigestSalary({N})': [None] if nth_salary.empty else [nth_salary.iloc[0]]})
    return result 


#sql solution 
with cte as  ( 

  select salary, dense_rank() over (order by salary desc) as rnk from EMPLOYEE e 

)

select IFNULL((select distinct salary from CTE where rnk =2),null) as SecondHighestSalary;
