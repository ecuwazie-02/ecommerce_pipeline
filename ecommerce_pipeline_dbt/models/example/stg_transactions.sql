SELECT
CAST ('CustomerID' AS INT) as customer_id,
CAST ('InvoiceDate' AS TIMESTAMP) as invoice_date,
CAST ('Quantity' AS INT) as quantity,
CAST ('UnitPrice' AS FLOAT) as unit_price,
('Quantity' * 'UnitPrice') as total_amount
FROM transactions

