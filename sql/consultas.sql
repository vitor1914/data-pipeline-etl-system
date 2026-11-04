-- 1. Consultar todas as vendas
SELECT *
FROM vendas
ORDER BY data;

-- 2. Faturamento total
SELECT
    ROUND(SUM(valor_total), 2) AS faturamento_total
FROM vendas;

-- 3. Faturamento por produto
SELECT
    produto,
    SUM(quantidade) AS quantidade_vendida,
    ROUND(SUM(valor_total), 2) AS faturamento
FROM vendas
GROUP BY produto
ORDER BY faturamento DESC;

-- 4. Faturamento por categoria
SELECT
    categoria,
    SUM(quantidade) AS quantidade_vendida,
    ROUND(SUM(valor_total), 2) AS faturamento
FROM vendas
GROUP BY categoria
ORDER BY faturamento DESC;

-- 5. Resumo geral
SELECT
    COUNT(*) AS total_vendas,
    SUM(quantidade) AS itens_vendidos,
    ROUND(AVG(valor_total), 2) AS ticket_medio,
    ROUND(SUM(valor_total), 2) AS faturamento_total
FROM vendas;

-- 6. Faturamento por data
SELECT
    data,
    COUNT(*) AS total_vendas,
    ROUND(SUM(valor_total), 2) AS faturamento
FROM vendas
GROUP BY data
ORDER BY data;

-- 7. Ranking de produtos por faturamento
SELECT
    RANK() OVER (
        ORDER BY SUM(valor_total) DESC
    ) AS ranking,
    produto,
    SUM(quantidade) AS quantidade_vendida,
    ROUND(SUM(valor_total), 2) AS faturamento
FROM vendas
GROUP BY produto
ORDER BY ranking;

-- 8. Quantidade de vendas por categoria
SELECT
    categoria,
    COUNT(*) AS total_vendas,
    SUM(quantidade) AS itens_vendidos
FROM vendas
GROUP BY categoria
ORDER BY total_vendas DESC;
