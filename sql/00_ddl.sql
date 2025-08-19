CREATE TABLE vendas (
    transaction_id INTEGER PRIMARY KEY,
    customer_id VARCHAR(20),
    gender VARCHAR(10),
    age INTEGER,
    product_category VARCHAR(50),
    quantity INTEGER,
    price_per_unit NUMERIC(10,2),
    total_amount NUMERIC(10,2),
    month VARCHAR(15),
    month_num INTEGER,
    anomes VARCHAR(7),
    faixa_etaria VARCHAR(20)
);
