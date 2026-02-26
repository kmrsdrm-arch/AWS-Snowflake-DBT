{{
    config(
        materialized = 'ephemeral'
    )
}}

WITH bookings AS
(
    SELECT
        BOOKING_ID,
        BOOKING_DATE,
        BOOKING_STATUS,
        BOOKING_CREATED_AT
    FROM
        {{ ref('gold_obt') }}
)

SELECT * FROM bookings