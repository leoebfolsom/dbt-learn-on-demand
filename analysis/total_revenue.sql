with payments as (

    select * from {{ref('stg_payments')}} where status = 'success'
)

select 
    sum(amount) as total_payment_spend, 
    count(distinct payment_id) as unique_payments
from payments