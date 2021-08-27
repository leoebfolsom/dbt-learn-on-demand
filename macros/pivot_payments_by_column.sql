{% macro pivot_payments_by_column(pivot_column_name) %}

{%- set payment_methods = ['bank_transfer', 'coupon', 'credit_card', 'gift_card'] -%}

with payments as (
    select * from {{ ref('stg_payments') }}
),

pivoted as (
    select 
        {{pivot_column_name}},
        {% for payment_method in payment_methods -%}
        
        sum(case when payment_method = '{{ payment_method }}' then amount else 0 end) as {{ payment_method }}_amount
        
        {%- if not loop.last -%}
        ,
        {%- endif %}
        {% endfor -%}


        
    from payments
    where status = 'success'
    group by 1
    order by 1 desc
)

select * from pivoted

{% endmacro %}