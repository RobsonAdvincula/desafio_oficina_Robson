CREATE TABLE CLIENTE (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE VEICULO (
    id_veiculo INT PRIMARY KEY,
    modelo VARCHAR(100),
    placa VARCHAR(10),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);

CREATE TABLE SERVICO (
    id_servico INT PRIMARY KEY,
    descricao VARCHAR(100),
    preco DECIMAL(10,2)
);

CREATE TABLE ORDEM_SERVICO (
    id_ordem INT PRIMARY KEY,
    data_entrada DATE,
    data_saida DATE,
    id_veiculo INT,
    FOREIGN KEY (id_veiculo) REFERENCES VEICULO(id_veiculo)
);

CREATE TABLE ITEM_SERVICO (
    id_ordem INT,
    id_servico INT,
    quantidade INT,
    PRIMARY KEY (id_ordem, id_servico),
    FOREIGN KEY (id_ordem) REFERENCES ORDEM_SERVICO(id_ordem),
    FOREIGN KEY (id_servico) REFERENCES SERVICO(id_servico)
);