# 📦 DesafioDIO Ecommerce Database

Este é um projeto de banco de dados relacional criado para atender às necessidades de um sistema de ecommerce. O banco foi desenvolvido em **MySQL**, com tabelas bem estruturadas, chaves primárias e estrangeiras, além de diversas **procedures** para facilitar consultas comuns.

## 📋 Estrutura do Banco de Dados

O banco segue uma estrutura que reflete tabelas e relacionamentos típicos de um sistema de ecommerce:

### 🗂 Tabelas Principais
1. **`Categoria`** 🏷️  
   - Armazena categorias de produtos, como "Placas-mãe" e "Módulos de Memória RAM".
   - Coluna exemplo: `nome_Categoria`.

2. **`Conta`** 👤  
   - Representa os usuários do sistema (clientes, vendedores e fornecedores).
   - Colunas exemplo: `nome_Conta`, `email_Conta`.

3. **`Endereco`** 🏠  
   - Registra endereços relacionados às contas.
   - Tipos de endereço: `residencial` e `comercial`.

4. **`Produto`** 📦  
   - Detalha os produtos disponíveis para venda na loja e suas respectivas categorias.

5. **`Estoque`** 📊  
   - Registra a quantidade e o valor total dos produtos disponíveis no inventário.

6. **`Pedido`** 🛒  
   - Registra pedidos realizados pelos clientes, com status e endereço de entrega.

7. **`Forma_Pagamento`** 💳  
   - Armazena os métodos de pagamento disponíveis, como cartão, boleto e PIX.

8. **`Fornecedor`** 🏭  
   - Detalha os fornecedores que abastecem o estoque.

9. **`Vendedor`** 🛍️  
   - Representa os vendedores que comercializam produtos no sistema.

### 🌐 Relacionamentos
- **Fornecedores**: fornecem produtos ao estoque.  
- **Clientes**: realizam pedidos vinculados a produtos e endereços.  
- **Vendedores**: disponibilizam produtos à venda.

---

## 🚀 Funcionalidades

### 📜 Procedures Disponíveis

O banco oferece as seguintes **procedures** para consultas rápidas e práticas:

1. **`ListarEntidades`**  
   Lista todas as entidades (clientes, vendedores e fornecedores) com seus dados principais.

2. **`ListarPedidos`**  
   Exibe informações detalhadas sobre pedidos, incluindo cliente, produtos e endereço de entrega.

3. **`ListarProdutosFornecidos`**  
   Mostra os produtos fornecidos pelos fornecedores, incluindo preços e descrições.

4. **`ListarProdutosVendidos`**  
   Lista os produtos vendidos pelos vendedores.

5. **`ListarFornecedores`**  
   Exibe informações detalhadas dos fornecedores cadastrados.

6. **`ListarVendedores`**  
   Detalha informações dos vendedores, como CPF ou CNPJ.

7. **`ListarClientes`**  
   Lista todos os clientes, incluindo idade, CPF e contatos.

---

## 🛠️ Tecnologias e Configurações

- **Banco de Dados**: MySQL  
- **Engine**: InnoDB  
- **Character Set**: UTF-8  
- **Configurações Especiais**:  
  - Uso de `FOREIGN KEY` para garantir integridade referencial.  
  - Utilização de `ENUM` para padronizar status e categorias de dados.

---

## 📝 Exemplos de Uso

### 🔍 Consultar todos os clientes:
```sql
CALL ListarClientes();
```

### 🛍️ Consultar pedidos realizados:
```sql
CALL ListarPedidos();
```

### 🏭 Obter produtos fornecidos:
```sql
CALL ListarProdutosFornecidos();
```

---

## 🎯 Contribuições e Melhorias

Se tiver sugestões, dúvidas ou interesse em contribuir, sinta-se à vontade para abrir uma pull request ou issue. Juntos, podemos fazer😊

---

**💡 Dica:** Este banco é ideal para projetos de estudo e aplicações básicas de ecommerce. Sua estrutura modular e relacional oferece flexibilidade e organização.
