-- Aqui você deve colocar os códigos SQL referentes às
-- Simulações de um CRUD

-- Criação

-- 1)
    INSERT INTO clientes(nome,lealdade) VALUES('Georgia',0);

-- 2)
    INSERT INTO pedidos(status,cliente_id) VALUES('Recebido',6);

-- 3)
    INSERT INTO 
	    produtos_pedidos(pedido_id,produto_id)
    VALUES
        (9,1),
        (9,2),
        (9,6),
        (9,8),
        (9,8);

-- Leitura

-- 1)

    SELECT
	    *
    FROM
        clientes
    JOIN
        pedidos ON clientes.id = pedidos.id
    JOIN 
        produtos_pedidos ON pedidos.id = produtos_pedidos.pedido_id
    JOIN
		produtos ON produtos_pedidos.produto_id = produtos.id
    WHERE
        clientes.nome = 'Georgia';

-- Atualização

-- 1)
    UPDATE
	    clientes
    SET
	    lealdade = 48
    WHERE
	    id = 6
    RETURNING *;


-- Deleção

-- 1)
    DELETE FROM
	    clientes
    WHERE	
	    id = 4
        RETURNING *;

