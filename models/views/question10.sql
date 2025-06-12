{{ config(tags=['vue_10']) }}


SELECT g.genre_name, AVG(t.bytes) AS avg_size_bytes
FROM {{ ref('fact_track') }} t
JOIN {{ ref('dim_genre') }} g ON t.genre_id = g.genre_id
GROUP BY g.genre_name
ORDER BY avg_size_bytes DESC



