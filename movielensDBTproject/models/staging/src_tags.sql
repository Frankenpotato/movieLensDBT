{{
    config(
        materialized = 'table'
    )
}}

with raw_tags as(
    select * from dbt_project.raw_movie_data.raw_tags
)
select
userId as user_id,
movieId as movie_id,
tag,
to_timestamp(timestamp) as tag_timestamp
from raw_tags