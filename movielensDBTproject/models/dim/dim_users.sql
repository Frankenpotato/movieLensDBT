with tags as (
    select distinct user_id from {{ref('src_tags')}}
),
ratings as (
    select distinct user_id from {{ref('src_ratings')}}
)
select distinct user_id from
(
    select user_id from tags
    union all
    select user_id from ratings
)