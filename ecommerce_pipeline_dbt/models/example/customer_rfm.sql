WITH max_invoice_date_cte AS (
    SELECT
        MAX(invoice_date) + INTERVAL '1 day' AS snapshot_date
    FROM {{ ref('stg_transactions') }}
)

SELECT 
t.customer_id,
MAX(t.country) AS country,
EXTRACT(DAY FROM (SELECT snapshot_date FROM max_invoice_date_cte) - MAX(t.invoice_date)) AS recency,
COUNT(DISTINCT t.invoice_date) AS frequency,
SUM(t.total_amount) AS monetary
FROM {{ ref('stg_transactions') }} t
GROUP BY t.customer_id