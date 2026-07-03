with raw_links as(
    select * from dbt_project.raw_movie_data.raw_links
)
select
movieId as movie_id,
imdbId as imdb_id,
tmdbId as tmdb_id
from raw_links