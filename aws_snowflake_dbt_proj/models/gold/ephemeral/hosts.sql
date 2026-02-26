{{
    config(
        materialized = 'ephemeral'
    )
}}

WITH hosts AS
(
    SELECT
        HOST_ID,
        HOST_NAME,
        IS_SUPERHOST,
        RESPONSE_RATE_QUALITY,
        HOST_CREATED_AT
    FROM
        {{ ref('gold_obt') }}
)

SELECT * FROM hosts