{{ config(tags=['vue_11']) }}


SELECT DISTINCT dp.playlist_name
FROM {{ ref('fact_track') }} t
JOIN {{ ref('dim_playlist') }} dp ON t.playlist_id = dp.playlist_id
JOIN {{ ref('dim_album') }} a ON t.album_id = a.album_id
WHERE a.album_artist_birthyear < 1990






