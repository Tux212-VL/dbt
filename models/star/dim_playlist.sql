{{ config(materialized='table') }}

SELECT
    PLAYLISTID AS PLAYLIST_ID,
    NAME AS PLAYLIST_NAME
FROM
    {{ source('EXAM_SNOWFLAKE', 'PLAYLIST') }}