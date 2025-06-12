{{ config(tags=['vue_1']) }}

SELECT album_title, album_cd_number
FROM {{ ref('dim_album') }}
WHERE album_cd_number > 1