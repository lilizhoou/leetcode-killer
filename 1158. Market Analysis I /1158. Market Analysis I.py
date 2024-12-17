'''
# Logic 
  1. select 2019 year data
  2. join table
  3. calculate count - group by user_id
df.groupby('user_id').agg(column_1 = ('order_id','count))

'''


#Solution
def market_analysis(users: pd.DataFrame, orders: pd.DataFrame, items: pd.DataFrame) -> pd.DataFrame:
    dfo = orders
    dfu = users 
    df1 = dfo[dfo['order_date'].dt.year == 2019]
    df = pd.merge(dfu,df1,how = 'left',left_on = 'user_id',right_on = 'order_id')
    result  = df.groupby('user_id').agg(orders_in_2019 =('order_id','count')).reset_index()
    return result 
