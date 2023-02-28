with source as (
    select * from {{ source('dbt_study', 'jaffle_shop')}}
),

staged as (
    
    select 
        id as customer_id,
        first_name,
        last_name

    from source
)

select * from staged