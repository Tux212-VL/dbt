{{ config(materialized='table') }}

SELECT
    MEDIATYPEID AS MEDIATYPE_ID,
    NAME AS MEDIATYPE_NAME
FROM
    {{ source('EXAM_SNOWFLAKE', 'MEDIATYPE') }}