with raw_genome_scores as(
    select * from dbt_project.raw_movie_data.raw_genome_scores
)
select
movieId as movie_id,
tagId as tag_id,
relevance
from raw_genome_scores