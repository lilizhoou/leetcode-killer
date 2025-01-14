'''
Logic:
same as sql
1. new table for category include 3 type of category ['Low Salary','Average Salary','High Salary']
2. calculateion of income category
3. join, groupby and count()

'''


def count_salary_categories(accounts: pd.DataFrame) -> pd.DataFrame:
    df1 = accounts
    df1['category'] = df1['income'].apply(lambda x:  'Low Salary' if x<20000 else 'High Salary' if x>50000 else 'Average Salary')
    df2 = pd.DataFrame({'category':['Low Salary','Average Salary','High Salary']})
    df = df1.merge(df2,how='right',on='category')
    result = df.groupby('category')[['account_id']].count().reset_index().rename(columns={'account_id':'accounts_count'})
    return result
