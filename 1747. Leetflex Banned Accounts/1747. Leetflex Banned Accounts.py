'''cross join first, and then conditional select base on your condition, logic is same as sql'''

def leetflex_banned_accnts(log_info: pd.DataFrame) -> pd.DataFrame:
    dfl = log_info
    df = dfl
  
    df1 = pd.merge(df,df,how = 'cross')
    df2 = df1[(df1['account_id_x'] == df1['account_id_y'])&(df1['ip_address_x'] != df1['ip_address_y'])]
    df3 = df2[(df2['login_x'] <= df2['logout_y'])&(df2['logout_x']>= df2['login_y'])]  
    
    account_id = df3['account_id_x'].unique()
    result  = pd.DataFrame({'account_id':account_id})
    return result 
