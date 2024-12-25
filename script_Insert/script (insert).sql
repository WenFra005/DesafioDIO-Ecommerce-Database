START TRANSACTION;
USE `DesafioDIO_Ecommerce`;

INSERT INTO `Categoria` (`nome_Categoria`) VALUES 
('Placas-mãe'),
('Memórias RAM'),
('Placas de vídeo'),
('Teclados'),
('Mouses'),
('Monitores');

INSERT INTO `Conta` (`nome_Conta`, `email_Conta`, `telefone_Conta`, `status_Conta`, `data_cadastro_Conta`) VALUES 
('João Silva', 'joao.silva@example.com', '(11) 91111-1111', DEFAULT, DEFAULT),
('Maria Souza', 'maria.souza', '(11) 92222-2222', DEFAULT, DEFAULT),
('Tech Shop', 'contato@techshop.com.br', '(11) 3333-3333', DEFAULT, DEFAULT),
('Lucas Silva', 'lucas.silva@example.com', '(11) 94444-4444', DEFAULT, DEFAULT),
('Eletrônicos LTDA', 'contato@eletronicos.com.br', '(11) 5555-5555', DEFAULT, DEFAULT);

INSERT INTO `Endereco` (`estado`, `cidade`, `cep`, `logradouro`, `numero`, `complemento`, `bairro`, `tipo_endereco`, `tipo_entidade`, `Conta_id_Conta`) VALUES 
('SP', 'São Paulo', '01234-567', 'Rua do ABC', '100', 'ap. 10', 'Centro', 'residencial', 'cliente', 1),
('SP', 'São Paulo', '78945-612', 'Rua do XYZ', '200', NULL, 'Zona Leste', 'residencial', 'cliente', 2),
('SP', 'São Paulo', '98765-321', 'Rua América', '300', '', 'Centro', 'comercial', 'cliente', 3),
('SP', 'São Paulo', '01447-896', 'Avenida do General', '400', NULL, 'Zona Sul', 'comercial', 'vendedor', 4),
('SP', 'São Paulo', '36987-412', 'Avenida do Balanço', '500', NULL, 'Centro', 'comercial', 'fornecedor', 5);

INSERT INTO `Estoque` (`quantidade_estoque`, `valor_total_estoque`, `Produto_id_Produto`) VALUES 
(20, 25000.00, 1),
(15, 27000.00, 2),
(50, 16000.00, 3),
(25, 30000.00, 4),
(10, 28000.00, 5),
(8, 33600.00, 6),
(10, 22000.00, 11),
(12, 33600.00, 12);

INSERT INTO `Forma_Pagamento` (`tipo_Forma_Pagamento`, `detalhes_Forma_Pagamento`, `data_cadastro_Forma_Pagamento`, `Conta_id_Conta`) VALUES 
('cartão', '1234-5678-9012-3456', DEFAULT, 1),
('boleto', '0001-0002-0003-0004', DEFAULT, 2),
('PIX', 'chave-PIX-Empresa\'', DEFAULT, 3),
('cartão', '7894-5612-3214-4569', DEFAULT, 4),
('boleto', '0004-0003-0002-0001', DEFAULT, 5);

INSERT INTO `Fornecedor` (`cnpj_Fornecedor`, `Conta_id_Conta`) VALUES 
('32.654.987/0001-17', 5);

INSERT INTO `Fornecimento_de_produtos` (`Produto_id_Produto`, `Fornecedor_cnpj_Fornecedor`) VALUES 
(1, '1'),
(2, '1'),
(3, '1'),
(4, '1'),
(5, '1'),
(6, '1'),
(11, '1'),
(12, '1');

INSERT INTO `Pessoa_Fisica` (`cpf`, `idade`, `Conta_id_Conta`) VALUES 
('123.456.789-00', 30, 1),
('789.456.123-00', 25, 2);

INSERT INTO `Pessoa_Juridica` (`cnpj`, `Conta_id_Conta`) VALUES 
('12.456.789/0001-12', 3);

INSERT INTO `Produto` (`nome_Produto`, `preco_produto`, `descricao_Produto`, `Categoria_id_Categoria`) VALUES 
('ASUS ROG STRIX B550-F', 1250.00, 'Placa-mãe com chipset B550, suporte a processadores AMD Ryzen e RGB', 1),
('Gigabyte AORUS Elite Z690', 1800.00, 'Placa-mãe de alto desempenho para Intel de 12ª geração', 1),
('Corsair Vengeance LPX 16GB (2x8GB) DDR4', 320.00, 'Memória DDR4 com 3200MHz e dissipador de calor', 2),
('Kingston Fury Beast 32GB (2x16GB) DDR5', 1200.00, 'Memória DDR5 com alta frequência para desempenho extremo', 2),
('NVIDIA GeForce RTX 3060', 2800.00, 'Placa de vídeo com 12GB GDDR6 para gamers e criadores', 3),
('AMD Radeon RX 6800 XT', 4200.00, 'Placa de vídeo com 16GB GDDR6 para alto desempenho em 4K', 3),
('Logitech G Pro X', 700.00, 'Teclado mecânico para gamers com switches intercambiáveis', 4),
('Razer BlackWidow Elite', 400.00, 'Teclado mecânico RGB com switches Razer Green', 4),
('Logitech G502 HERO', 350.00, 'Mouse gamer com sensor HERO 25K e 11 botões programáveis', 5),
('Razer DeathAdder V2', 400.00, 'Mouse ergonômico com sensor óptico de 20K DPI', 5),
('LG UltraGear 27GL850', 2200.00, 'Monitor gamer de 27 polegadas com 144Hz e 1ms', 6),
('Samsung Odyssey G7', 2800.00, 'Monitor curvo QHD de 32 polegadas com 240Hz', 6);

INSERT INTO `Venda_de_Vendedor` (`Produto_id_Produto`, `Vendedor_id_Vendedor`) VALUES 
(7, 1),
(8, 1),
(9, 1),
(10, 1);

INSERT INTO `Vendedor` (`cpf_vendedor`, `cnpj_vendedor`, `Conta_id_Conta`) VALUES 
('258.147.369-00', NULL, 4);

COMMIT;