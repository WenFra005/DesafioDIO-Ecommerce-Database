DELIMITER //

CREATE PROCEDURE ListarVendedores()
BEGIN
	SELECT
		ct.id_Conta AS ID,
		ct.nome_Conta AS Nome,
		v.cpf_vendedor AS CPF,
		v.cnpj_vendedor AS CNPJ,
		ct.email_Conta AS Email,
		ct.status_Conta AS Status,
		ct.data_cadastro_Conta AS Data_Cadastro
	FROM
		Conta ct
	LEFT JOIN
		Vendedor v ON v.Conta_id_Conta = ct.id_Conta
	WHERE
		v.cpf_vendedor IS NOT NULL OR v.cnpj_vendedor IS NOT NULL;
END //

DELIMITER ;