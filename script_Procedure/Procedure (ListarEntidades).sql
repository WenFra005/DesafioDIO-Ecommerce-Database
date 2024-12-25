DELIMITER //

CREATE PROCEDURE ListarEntidades()
BEGIN
	SELECT
		ct.id_Conta AS ID,
		'Cliente' AS Tipo,
        ct.nome_Conta AS Nome,
        pf.cpf AS CPF,
        NULL AS CNPJ,
        ct.email_Conta AS Email,
        ct.telefone_Conta AS Telefone,
        ct.status_Conta AS Status,
        ct.data_cadastro_Conta AS Data_Cadastro
	FROM
		Conta ct
	LEFT JOIN
		pessoa_fisica pf ON pf.Conta_id_Conta = ct.id_Conta
	WHERE
		pf.cpf IS NOT NULL

UNION ALL
	
    SELECT
		ct.id_Conta AS ID,
        'Vendedor' AS Tipo,
        ct.nome_Conta AS Nome,
        v.cpf_vendedor AS CPF,
        v.cnpj_vendedor AS CNPJ,
        ct.email_Conta AS Email,
        ct.telefone_Conta AS Telefone,
        ct.status_Conta AS Status,
        ct.data_cadastro_Conta AS Data_Cadastro
	FROM
		Conta ct
	LEFT JOIN
		vendedor v ON v.Conta_id_Conta = ct.id_Conta
	WHERE
		v.cpf_vendedor IS NOT NULL OR v.cnpj_vendedor IS NOT NULL

UNION ALL

	SELECT
		ct.id_Conta AS ID,
        'Vendedor' AS Tipo,
        ct.nome_Conta AS Nome,
        NULL AS CPF,
        f.cnpj_Fornecedor AS CNPJ,
        ct.email_Conta AS Email,
        ct.telefone_Conta AS Telefone,
        ct.status_Conta AS Status,
        ct.data_cadastro_Conta AS Data_Cadastro
	FROM
		Conta ct
	LEFT JOIN
		fornecedor f ON f.Conta_id_Conta = ct.id_Conta
	WHERE
		f.cnpj_Fornecedor IS NOT NULL;
END //

DELIMITER ;