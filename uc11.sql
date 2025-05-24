CREATE DATABASE GameStock;
Use GameStock;

CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(100) NOT NULL,
    senha VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL
);

CREATE TABLE jogo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    plataforma VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2),
    quantidade INT NOT NULL
);

CREATE TABLE vendas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idJogo INT NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    quantidadeVendida INT NOT NULL,
    valorPago DECIMAL(10,2) NOT NULL,
    nomeCliente VARCHAR(100) NOT NULL,
    telefoneCliente VARCHAR(20),
    dataVenda DATETIME NOT NULL,
    FOREIGN KEY (idJogo) REFERENCES jogo(id)
);

SELECT * FROM jogo;

ALTER TABLE funcionarios DROP COLUMN cargo;


ALTER TABLE vendas
ADD COLUMN nome_jogo VARCHAR(100) NOT NULL;
