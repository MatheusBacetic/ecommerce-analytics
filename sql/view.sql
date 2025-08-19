-- 1) Receita mensal
CREATE OR REPLACE VIEW vw_receita_mensal AS
SELECT
    anomes AS mes,
    SUM(total_amount) AS receita_total
FROM vendas
GROUP BY anomes
ORDER BY mes;

-- 2) Ticket médio por categoria
CREATE OR REPLACE VIEW vw_ticket_medio_categoria AS
SELECT
    product_category,
    AVG(total_amount) AS ticket_medio
FROM vendas
GROUP BY product_category
ORDER BY ticket_medio DESC;

-- 3) Coorte de primeira compra
CREATE OR REPLACE VIEW vw_coorte_primeira_compra AS
WITH primeira_compra AS (
    SELECT
        customer_id,
        MIN(anomes) AS mes_primeira_compra
    FROM vendas
    GROUP BY customer_id
),
coorte AS (
    SELECT
        pc.mes_primeira_compra,
        v.anomes AS mes_venda,
        COUNT(DISTINCT v.customer_id) AS clientes_ativos
    FROM vendas v
    JOIN primeira_compra pc ON v.customer_id = pc.customer_id
    GROUP BY pc.mes_primeira_compra, v.anomes
)
SELECT * FROM coorte
ORDER BY mes_primeira_compra, mes_venda;

-- 4) RFM (Recência, Frequência, Valor)
CREATE OR REPLACE VIEW vw_rfm AS
SELECT
    customer_id,
    MAX(anomes) AS ultima_compra,
    COUNT(transaction_id) AS frequencia,
    SUM(total_amount) AS valor_total
FROM vendas
GROUP BY customer_id;

-- 5) Variação mensal da receita
CREATE OR REPLACE VIEW vw_var_receita_mensal AS
WITH receita AS (
    SELECT
        anomes,
        SUM(total_amount) AS receita
    FROM vendas
    GROUP BY anomes
)
SELECT
    anomes,
    receita,
    receita - LAG(receita) OVER (ORDER BY anomes) AS variacao_mensal
FROM receita;

-- 6) Top produtos por receita
CREATE OR REPLACE VIEW vw_top_produtos AS
SELECT
    product_category,
    SUM(total_amount) AS receita_total,
    RANK() OVER (ORDER BY SUM(total_amount) DESC) AS posicao
FROM vendas
GROUP BY product_category;
