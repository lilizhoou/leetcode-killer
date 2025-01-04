''' solution 1 '''
def new_users_daily_count(traffic: pd.DataFrame) -> pd.DataFrame:
    df = traffic
    df1 = df.iloc[df[df['activity']=='login'].groupby('user_id')['activity_date'].idxmin()]
    end_date = pd.to_datetime('2019-06-30')
    start_date = end_date - pd.Timedelta(days=90)
    df2 = df1[(df1['activity_date']>=start_date)&(df1['activity_date']<=end_date)]
    df2 = df2.groupby('activity_date')['user_id'].nunique().reset_index()
    result = df2.rename(columns={'activity_date':'login_date','user_id':'user_count'})
    return result


''' solution 2 '''
  def new_users_daily_count(traffic: pd.DataFrame) -> pd.DataFrame:
    df = traffic
    df1 = df
    df1 = df1[df1['activity']=='login'].groupby('user_id')['activity_date'].agg('min').reset_index()
    df1 = df1[df1['activity_date'].between(pd.to_datetime('2019-06-30') - pd.Timedelta(days=90),'2019-06-30')]
    result = df1.groupby('activity_date')['user_id'].nunique().reset_index().rename(columns={'activity_date':'login_date','user_id':'user_count'})
    return result
