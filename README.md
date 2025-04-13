# desafio_oficina_Robson
Entrega do desafio oficina curso banco de dados da DIO

🛠Sistema de Gerenciamento de Oficina – Projeto de Banco de Dados
Descrição Geral
Este projeto tem como objetivo implementar um sistema de gerenciamento de ordens de serviço para uma oficina mecânica, utilizando os conceitos de modelagem de banco de dados relacional. A aplicação cobre desde o modelo lógico, passando pela criação de tabelas em SQL, inserção de dados para testes, até consultas complexas utilizando JOIN, GROUP BY, HAVING, ORDER BY, entre outras cláusulas SQL.

Modelo Lógico
O modelo lógico foi desenvolvido com base em um cenário de oficina que atende múltiplos clientes e realiza diferentes tipos de serviços em veículos. A estrutura relacional contempla as seguintes entidades:

CLIENTE: Armazena os dados dos clientes.

VEICULO: Cada cliente pode ter um ou mais veículos.

SERVICO: Contém os tipos de serviços oferecidos pela oficina.

ORDEM_SERVICO: Representa as ordens de serviço realizadas, com data de entrada e saída.

ITEM_SERVICO: Tabela de associação que detalha os serviços realizados em cada ordem, incluindo quantidade e permitindo o cálculo do valor total.

Relacionamentos
Um cliente pode ter vários veículos.

Um veículo pode ter várias ordens de serviço.

Uma ordem de serviço pode conter vários serviços.

Os serviços realizados em uma ordem são detalhados na tabela ITEM_SERVICO.

Consultas Incluídas
As queries criadas abordam os seguintes tópicos:

✅ Recuperações simples com SELECT

✅ Filtros com WHERE

✅ Atributos derivados (SUM, quantidade * preco)

✅ Ordenações com ORDER BY

✅ Filtros em grupos com HAVING

✅ Junções (JOIN) entre múltiplas tabelas
