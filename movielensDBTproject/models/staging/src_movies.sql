with raw_movies as(
    select * from dbt_project.raw_movie_data.raw_movies
)
select
movieId as movie_id,
title,
genres
from raw_movies
