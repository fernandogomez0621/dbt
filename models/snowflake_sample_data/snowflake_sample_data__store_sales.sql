with entrada_cruda as (
    select * from {{source('snowflake_sample_data', 'store_sales')}}
),

final as (
    select * from entrada_cruda
)

select * from final