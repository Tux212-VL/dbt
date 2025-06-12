{{ config(tags=['vue_8']) }}


SELECT DISTINCT p.playlist_name
FROM {{ ref('fact_track') }} t
JOIN {{ ref('dim_playlist') }} p ON t.playlist_id = p.playlist_id
WHERE t.milliseconds > 240000