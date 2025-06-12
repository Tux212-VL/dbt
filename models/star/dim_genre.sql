{{ config(materialized='table') }}

SELECT
    GENREID AS GENRE_ID,
    NAME AS GENRE_NAME
FROM
    {{ source('EXAM_SNOWFLAKE', 'GENRE') }}