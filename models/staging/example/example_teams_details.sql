{{ config(materialized='table') }}

with teams as (
    select * from {{ source('raw', 'example_teams') }}
),
locations as (
    select * from {{ ref('team_locations') }}
),
final as (
    select
        t.team,
        l.city,
        l.state
    from teams t
    left join locations l
        on t.team = l.name
)

select * from final
