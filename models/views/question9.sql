{{ config(tags=['vue_9']) }}


SELECT t.track_title, g.genre_name, a.album_artist_name, a.album_artist_country
FROM {{ ref('fact_track') }} t
JOIN {{ ref('dim_genre') }} g ON t.genre_id = g.genre_id
JOIN {{ ref('dim_album') }} a ON t.album_id = a.album_id
WHERE g.genre_name = 'Rock' AND a.album_artist_country = 'France'