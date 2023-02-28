with source as (
    select * from {{ source('dbt_study', 'jaffle_shop_orders')}}
),

orders as (
    
    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from source
)

select * from orders