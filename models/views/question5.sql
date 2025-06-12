{{ config(tags=['vue_5']) }}


SELECT
    album_artist_name,
    COUNT(album_id) AS number_of_albums
FROM
    {{ ref('dim_album') }}
GROUP BY
    album_artist_name