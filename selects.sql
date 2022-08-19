-- Aqui você deve colocar os códigos SQL referentes às
-- Seleções de dados

-- 1)
SELECT
	*
FROM
	pedidos
JOIN
	produtos ON pedidos.id = produtos.id;

-- 2)
  SELECT 
      pedidos.id
  FROM 
      produtos
  JOIN
      produtos_pedidos ON produtos.id = produtos_pedidos.produto_id
  JOIN 
      pedidos ON produtos_pedidos.pedido_id = pedidos.id
  WHERE
      produtos.nome = 'Fritas';

-- 3)
SELECT 
	clientes.nome AS gostam_de_fritas
FROM 
	pedidos
JOIN
	produtos_pedidos ON pedidos.id = produtos_pedidos.pedido_id
JOIN
	clientes ON pedidos.cliente_id = clientes.id
JOIN
	produtos ON produtos.id = produtos_pedidos.produto_id 
WHERE
	produtos.nome = 'Fritas';

-- 4)
SELECT 
	SUM(preco)
FROM
	pedidos
JOIN
	produtos_pedidos ON pedidos.id = produtos_pedidos.pedido_id
JOIN
	clientes ON pedidos.cliente_id = clientes.id
JOIN
	produtos ON produtos.id = produtos_pedidos.produto_id
WHERE
	clientes.nome = 'Laura';

-- 5)
SELECT
   nome, COUNT(pedido_id)
FROM
	pedidos
JOIN
	produtos_pedidos ON pedidos.id = produtos_pedidos.pedido_id
JOIN
	produtos ON produtos_pedidos.produto_id = produtos.id
GROUP BY
	nome;