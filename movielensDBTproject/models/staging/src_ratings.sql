{{
    config(materialized = 'table')
}}

with raw_ratings as(
    select * from dbt_project.raw_movie_data.raw_ratings
)
select
userId as user_id,
movieId as movie_id,
rating,
to_timestamp(timestamp) as rating_timestamp
from raw_ratings