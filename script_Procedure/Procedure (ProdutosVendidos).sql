DELIMITER //

CREATE PROCEDURE ListarProdutosVendidos()
BEGIN
	SELECT
		vd.cpf_vendedor AS CPF,
        vd.cnpj_vendedor AS CNPJ,
        ct.nome_Conta AS Nome,
        pr.id_Produto AS ProdutoID,
        pr.nome_Produto AS Produto_Nome,
        pr.preco_produto AS Preco,
        pr.descricao_Produto AS Descricao
	FROM
		Vendedor vd
	JOIN
		Conta ct ON vd.Conta_id_Conta = ct.id_Conta
	JOIN
		Venda_de_Vendedor vv ON vd.id_Vendedor = vv.Vendedor_id_Vendedor
	JOIN
		Produto pr ON vv.Produto_id_Produto = pr.id_Produto;
END //

DELIMITER ;