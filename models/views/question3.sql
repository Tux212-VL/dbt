{{ config(tags=['vue_3']) }}


SELECT DISTINCT f.track_title, f.composer, a.album_artist_name, g.genre_name
FROM {{ ref('fact_track') }} f
JOIN {{ ref('dim_album') }} a ON f.album_id = a.album_id
JOIN {{ ref('dim_genre') }} g ON f.genre_id = g.genre_id
WHERE g.genre_name IN ('Rock', 'Jazz')