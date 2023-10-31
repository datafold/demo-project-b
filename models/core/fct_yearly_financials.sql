select
    date_trunc('year', date_month) as date_year
    , sum(cnt_subscribers)         as yearly_subscribers
    , sum(sum_revenue)             as yearly_revenue
    , count(added_column)          as added_column
from {{ref('demo_project_a', 'fct_monthly_financials', v=2)}}
group by 1
