DELIMITER //

CREATE PROCEDURE ListarPedidos()
BEGIN
	SELECT
		pd.id_Pedido AS PedidoID,
        pd.status_Pedido AS Status,
        pd.data_Pedido AS DataPedido,
        ct.nome_Conta AS Cliente,
        pr.nome_Produto AS Produto,
        it.quantidade_Item_Pedido AS Quantidade,
        en.cidade AS Cidade,
        en.estado AS Estado
	FROM
		Pedido pd
	JOIN
		Item_Pedido it ON pd.id_Pedido = it.Pedido_id_Pedido
    JOIN
		Produto pr ON it.Produto_id_Produto = pr.id_Produto
	JOIN
		Conta ct ON pd.Conta_id_Conta = ct.id_Conta
	JOIN
		Endereco en ON pd.Endereco_id_Endereco = en.id_Endereco;
END //

DELIMITER ;