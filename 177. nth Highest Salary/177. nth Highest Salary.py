''' 
Problem: find the nth highest salary from the Employee table, if no nth highest, return null 

Logic: add rank column, and then select rnk ==2 
'''

def nth_highest_salary(df,N:int):
    df.drop_duplicates()
    df['rnk'] = df['Salary'].rank(method = 'dense',ascending = False)
    nth_salary = df[df['rnk']==2]['Salary']
    result = pd.DataFrame({f'getNthHigestSalary({N})': [None] if nth_salary.empty else [nth_salary.iloc[0]]})
    return result 
