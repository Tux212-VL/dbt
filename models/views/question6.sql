{{ config(tags=['vue_6']) }}


SELECT a.album_artist_name, COUNT(DISTINCT f.track_title) AS number_of_tracks
FROM {{ ref('fact_track') }} f
JOIN {{ ref('dim_album') }} a ON f.album_id = a.album_id
GROUP BY a.album_artist_name
ORDER BY number_of_tracks DESC