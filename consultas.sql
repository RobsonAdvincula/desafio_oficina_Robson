-- 1. SELECT simples
SELECT nome, telefone FROM CLIENTE;

-- 2. Filtro com WHERE
SELECT * FROM VEICULO WHERE modelo = 'Civic';

-- 3. Atributo derivado - valor total por ordem
SELECT 
    id_ordem,
    SUM(quantidade * preco) AS valor_total
FROM ITEM_SERVICO
JOIN SERVICO USING(id_servico)
GROUP BY id_ordem;

-- 4. ORDER BY nome
SELECT * FROM CLIENTE ORDER BY nome;

-- 5. HAVING - ordens acima de R$200
SELECT 
    id_ordem,
    SUM(quantidade * preco) AS valor_total
FROM ITEM_SERVICO
JOIN SERVICO USING(id_servico)
GROUP BY id_ordem
HAVING SUM(quantidade * preco) > 200;

-- 6. JOIN completo com cliente, veículo e total
SELECT 
    c.nome AS cliente,
    v.modelo AS veiculo,
    o.id_ordem,
    SUM(s.preco * i.quantidade) AS valor_total
FROM ORDEM_SERVICO o
JOIN VEICULO v ON o.id_veiculo = v.id_veiculo
JOIN CLIENTE c ON v.id_cliente = c.id_cliente
JOIN ITEM_SERVICO i ON o.id_ordem = i.id_ordem
JOIN SERVICO s ON i.id_servico = s.id_servico
GROUP BY c.nome, v.modelo, o.id_ordem;