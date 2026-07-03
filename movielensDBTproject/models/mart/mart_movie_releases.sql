{{
    config(materialized = 'table')
}}

with fct_ratings as (
    select * from {{ref('fct_ratings')}}
),
seed_dates as (
    select * from {{ref('seed_movie_release_dates')}}
)

select 
    r.*,
    case
        when d.release_date is not null then d.release_date
        else null
    end as release_date_information
from fct_ratings r
left join seed_dates d 
on r.movie_id = d.movie_id