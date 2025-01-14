'''
Logic:

 1.  Have category table ready : select "Low Salary" as category union all select "High Salary" as category union all select "Average Salary" as category
 2. Use CASE WHEN to calculate it
 3. join 2 tables and group by.
  
'''


select b.category, count(distinct account_id ) as accounts_count from (

        select account_id,
        case when income <20000 then 'Low Salary'
        when income >50000 then 'High Salary'
        else 'Average Salary' 
        end as category 
        from accounts) a 
right join (
        select 'Low Salary' as category 
        union all 
        select 'High Salary' as category 
        union all 
        select 'Average Salary' as category  ) b  on a.category = b.category  
group by b.category 
