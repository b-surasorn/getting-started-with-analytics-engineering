with

stg_greenery__user as (

    select * from {{ ref('stg_greenery__users')}}

)

select 
    count(1) as number_of_users
    
from stg_greenery__user