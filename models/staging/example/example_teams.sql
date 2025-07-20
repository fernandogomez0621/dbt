{{ config(
    materialized = 'table',
    query_tag = 'demo_dbt_tag_holamundo'
) }}

with teams as (

    select 'Clippers' as team
    union all
    select '76ers'
    union all
    select 'Heat'
    union all
    select 'Bulls'
    union all
    select 'America de Cali'
    union all
    select 'Cali'

)

select
    *,
    {{ dbt_music_data.new_macro('Mike') }} as test_col
from teams
