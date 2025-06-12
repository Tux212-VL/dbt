{{ config(tags=['vue_7']) }}


SELECT 
    g.genre_name,
    COUNT(*) AS total_count
FROM {{ ref('fact_track') }} t
JOIN {{ ref('dim_album') }} a ON t.album_id = a.album_id
JOIN {{ ref('dim_genre') }} g ON t.genre_id = g.genre_id
WHERE a.album_productionyear BETWEEN 2000 AND 2009
GROUP BY g.genre_name
ORDER BY total_count DESC
LIMIT 1