{{ config(tags=['vue_2']) }}


SELECT f.track_title, a.album_productionyear
FROM {{ ref('fact_track') }} f
JOIN {{ ref('dim_album') }} a ON f.album_id = a.album_id
WHERE a.album_productionyear IN (2000, 2002)