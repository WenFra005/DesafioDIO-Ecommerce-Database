DELIMITER //

CREATE PROCEDURE ListarProdutosFornecidos()
BEGIN
	SELECT
		ct.nome_Conta AS Fornecedor,
        f.cnpj_Fornecedor AS CNPJ,
        pr.id_Produto AS ProdutoID,
        pr.nome_Produto AS Produto_Nome,
        pr.preco_produto AS Preco,
        pr.descricao_Produto AS Descricao
	FROM
		Fornecedor f
	JOIN
		Conta ct ON f.Conta_id_Conta = ct.id_Conta
	JOIN
		Fornecimento_de_produtos fp ON f.cnpj_Fornecedor = fp.Fornecedor_cnpj_Fornecedor
	JOIN
		Produto pr ON fp.Produto_id_Produto = pr.id_Produto;
END //

DELIMITER ;