DELIMITER //
CREATE PROCEDURE ListarClientes()
BEGIN
	SELECT
		ct.id_Conta AS ID,
        ct.nome_Conta AS Nome,
        pf.cpf AS CPF,
        pf.idade AS Idade,
        ct.email_Conta AS Email,
        ct.telefone_Conta AS Telefone,
        ct.status_Conta AS Status,
        ct.data_cadastro_Conta AS Data_Cadastro
	FROM
		Conta ct
	LEFT JOIN
		Pessoa_Fisica pf ON pf.Conta_id_Conta = ct.id_Conta
	WHERE
		pf.cpf IS NOT NULL;
END //

DELIMITER ;