{{ config(
    materialized = 'table',
    query_tag = 'demo_dbt_tag_holamundo'
) }}

select
    'Clippers' as team

union all

select
    '76ers' as team

union all

select
    'Heat' as team

union all

select
    'Bulls' as team

union all

select
    'America de Cali' as team
union all

select
    'Cali' as team
