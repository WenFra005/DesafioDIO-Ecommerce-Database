DELIMITER //

CREATE PROCEDURE ListarFornecedores()
BEGIN
	SELECT
		ct.id_Conta AS ID,
        ct.nome_Conta AS Nome,
        f.cnpj_Fornecedor AS CNPJ,
        ct.email_Conta AS Email,
        ct.telefone_Conta AS Telefone,
        ct.status_Conta AS Status,
        ct.data_cadastro_Conta AS Data_Cadastro
	FROM
		Conta ct
	LEFT JOIN
		Fornecedor f ON f.Conta_id_Conta = ct.id_Conta
	WHERE
    f.cnpj_Fornecedor IS NOT NULL;
END //

DELIMITER ;