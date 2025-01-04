'''
  Logic:
  1. select activity = login then select first login userid and activity date
  2. select right time frame 
  3. groupby + count(unique user)
'''

''' soultion 1 - window function - rank() '''

with cte as (

    select *, rank() over(partition by user_id order by activity_date) as rnk 
    from traffic where activity = 'login'
)


select 
  activity_date as login_date, 
  count(distinct user_id) as user_count from cte where rnk =1 
  and activity_date between DATE_SUB('2019-06-30',INTERVAL 90 DAY) and '2019-06-30'  
	group by activity_date
