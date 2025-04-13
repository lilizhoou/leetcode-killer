''' 
Problem: find the nth highest salary from the Employee table, if no nth highest, return null 

'''

 def nth_highest_salary(df: pd.DataFrame, n: int):
    df['rnk'] = df['salary'].rank(method='dense', ascending=False)
    salary_nth = df[df['rnk']==n].salary
    value = salary_nth.iloc[0] if not salary_nth.empty else None
    df_result = pd.DataFrame({f'getNthHighestSalary({n})': [value]})
    return df_result
