select
    {{ dbt_utils.surrogate_key(['customer_id', 'order_date']) }} as id,
    customer_id,
    order_date,
    count(*) AS customer_daily_orders

from
    {{ ref('stg_orders') }}
{{ dbt_utils.group_by(n=3) }}