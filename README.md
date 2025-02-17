# Beat that leetcode database - Pandas & SQL

This is an ongoing side project.
Started from 2024 Winter Holiday.


#Problems 

| Leetcode | Pandas |SQL |Difficulty |
|----------|----------|----------|---------|
|[1107.New Users Daily](https://leetcode.com/problems/new-users-daily-count/description/)   | [solution](https://github.com/lilizhoou/leetcode-killer/blob/main/1108.New%20Users%20Daily/1108.New%20Users%20Daily.py)     |  [solution](https://github.com/lilizhoou/leetcode-killer/blob/main/1108.New%20Users%20Daily/1108.%20New%20Users%20Daily.sql)     |Medium|
|[1158. Market Analysis I](https://leetcode.com/problems/market-analysis-i/description/)   | [solution](https://github.com/lilizhoou/leetcode-killer/blob/main/1158.%20Market%20Analysis%20I%20/1158.%20Market%20Analysis%20I.py)     |  [solution](https://github.com/lilizhoou/leetcode-killer/blob/main/1158.%20Market%20Analysis%20I%20/1158.%20Market%20Analysis%20I.sql)     |Medium|
|[1747. Leetflex Banned Accounts I](https://leetcode.com/problems/leetflex-banned-accounts/description/)   | [solution](https://github.com/lilizhoou/leetcode-killer/blob/main/1747.%20Leetflex%20Banned%20Accounts/1747.%20Leetflex%20Banned%20Accounts.py)     |  [solution](https://github.com/lilizhoou/leetcode-killer/blob/main/1747.%20Leetflex%20Banned%20Accounts/1747.%20Leetflex%20Banned%20Accounts.sql)     |Medium|
|[177. nth Highest Salary I](https://leetcode.com/problems/nth-highest-salary/description/)   | [solution](https://github.com/lilizhoou/leetcode-killer/blob/main/177.%20nth%20Highest%20Salary/177.%20nth%20Highest%20Salary.py)     |  [solution](https://github.com/lilizhoou/leetcode-killer/blob/main/177.%20nth%20Highest%20Salary/177.%20nth%20Highest%20Salary.sql)     |Medium|
|[608. Tree Node](https://leetcode.com/problems/tree-node/description/)   | [solution](https://github.com/lilizhoou/leetcode-killer/blob/main/608.%20Tree%20Node/608.%20Tree%20Node.py)     |  [solution](https://github.com/lilizhoou/leetcode-killer/blob/main/608.%20Tree%20Node/608.%20Tree%20Node.sql)     |Medium|
[262. Trips and Users](https://leetcode.com/problems/trips-and-users/) |[pending]| [solution]([https://github.com/lilizhoou/leetcode-killer/tree/main/1907.%20Count%20Salary%20Categories](https://github.com/lilizhoou/leetcode-\killer/tree/main/262.%20Trips%20and%20Users))|Hard|
---

# SQL
## 1. Window Function
| Category | Problem |Solution |Difficulty |
|----------|----------|----------|---------|
| rank()  |[1107.New Users Daily](https://leetcode.com/problems/new-users-daily-count/description/) | [solution](https://github.com/lilizhoou/leetcode-killer/blob/main/1108.New%20Users%20Daily/1108.%20New%20Users%20Daily.sql)     |Medium|

## 2. Time 
| Category | Problem |Solution |Difficulty |Note|
|----------|----------|----------|---------|---------|
| date_sub() |[1107.New Users Daily](https://leetcode.com/problems/new-users-daily-count/description/) | [solution](https://github.com/lilizhoou/leetcode-killer/blob/main/1108.New%20Users%20Daily/1108.%20New%20Users%20Daily.sql)     |Medium|[date_sub()](https://www.w3schools.com/sql/func_mysql_date_sub.asp)


## 3. Case When & IF
 Problem |Solution |Difficulty |Note|
|--------|----------|---------|---------|
[1907. Count Salary Categories](https://leetcode.com/problems/count-salary-categories/description/) |[solution](https://github.com/lilizhoou/leetcode-killer/tree/main/1907.%20Count%20Salary%20Categories)|Medium|case when/union all
[262. Trips and Users](https://leetcode.com/problems/trips-and-users/) |[solution]([https://github.com/lilizhoou/leetcode-killer/tree/main/1907.%20Count%20Salary%20Categories](https://github.com/lilizhoou/leetcode-\killer/tree/main/262.%20Trips%20and%20Users))|Hard|IF(xxx,x,x)




# Pandas

## 1. Time
| Category | Problem |Solution |Difficulty |Note|
|----------|----------|----------|---------|---------|
|df[xx].between() |[1107.New Users Daily](https://leetcode.com/problems/new-users-daily-count/description/) | [solution](https://github.com/lilizhoou/leetcode-killer/blob/main/1108.New%20Users%20Daily/1108.%20New%20Users%20Daily.sql)     |Medium|[series.between](https://pandas.pydata.org/docs/reference/api/pandas.Series.between.html)/[pd.to_datetime](https://pandas.pydata.org/docs/reference/api/pandas.to_datetime.html)/[pd.Timedelta](https://pandas.pydata.org/docs/reference/api/pandas.Timedelta.html)|


## 2. group by 

| Category | Problem |Solution |Difficulty |Note|
|----------|----------|----------|---------|---------|
count（）|[1907. Count Salary Categories](https://leetcode.com/problems/count-salary-categories/description/)|[solution](https://github.com/lilizhoou/leetcode-killer/tree/main/1907.%20Count%20Salary%20Categories)|Medium|group by + count + right join + lambda


## 3. Join

| Category | Problem |Solution |Difficulty |Note|
|----------|----------|----------|---------|---------|
right join|[1907. Count Salary Categories](https://leetcode.com/problems/count-salary-categories/description/)|[solution](https://github.com/lilizhoou/leetcode-killer/tree/main/1907.%20Count%20Salary%20Categories)|Medium|group by + count + right join


