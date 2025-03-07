''' 

leetcode link : https://leetcode.com/problems/year-on-year-growth-rate/description/
Difficulty: Hard
  
'''

''' Logic :
CTE: calculate total spend of each product each year.
Left Join: have pre_year and curr_year joined, then select both year's spend to calculate
''''




with cte as (
    
    select transaction_id,
    product_id,
    sum(spend) as spend, 
    year(transaction_date) as year 
    from user_transactions
    group by product_id, year(transaction_date)

)

select 
curr.year as year, 
curr.product_id, curr.spend as curr_year_spend, 
pre.spend as prev_year_spend, 
round( (curr.spend - pre.spend)*100/pre.spend,2) as yoy_rate

from cte curr 
left join cte pre on curr.product_id = pre.product_id and curr.year = pre.year + 1
order by product_id, year
