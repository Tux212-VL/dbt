{{ config(tags=['vue_4']) }}


SELECT
    a.album_id,
    a.album_title,
    SUM(f.milliseconds) AS total_milliseconds
FROM
    {{ ref('fact_track') }} f
JOIN
    {{ ref('dim_album') }} a ON f.album_id = a.album_id
GROUP BY
    a.album_id, a.album_title
ORDER BY
    total_milliseconds DESC
LIMIT 10