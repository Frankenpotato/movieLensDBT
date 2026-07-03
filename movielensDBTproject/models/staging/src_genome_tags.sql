with raw_genome_tags as(
    select * from dbt_project.raw_movie_data.raw_genome_tags
)
select
tagId as tag_id,
tag
from raw_genome_tags