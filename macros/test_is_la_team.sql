{% test is_la_team(model, column_name) %}

with validation as (
    select
        {{ column_name }} as city, team
    from {{ model }}
),

validation_errors as (
    select
        city
    from validation
    where city = 'Los Angeles'
        and team not in ('Lakers', 'Clippers')
)

-- NO uses count(*), devuelve las filas directamente
select *
from validation_errors

{% endtest %}