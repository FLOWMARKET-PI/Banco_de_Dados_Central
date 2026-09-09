CREATE DATABASE Flowmarket;
USE Flowmarket;

CREATE TABLE Flowmarket (
    id_mercado INT PRIMARY KEY AUTO_INCREMENT,
    nome_fantasia VARCHAR(60),
    cnpj CHAR(14)
);

CREATE TABLE fluxo_porta (
    id_fluxo INT PRIMARY KEY AUTO_INCREMENT,
    entrada_detectada TINYINT(1),
    saida_detectada TINYINT(1),
    qtd_pessoas INT,
    dt_medicao DATETIME DEFAULT NOW()
);

CREATE TABLE leitura_ultrassonica (
    id_leitura INT PRIMARY KEY AUTO_INCREMENT,
    num_caixa INT,
    zona_1 TINYINT(1),
    zona_2 TINYINT(1),
    zona_3 TINYINT(1),
    dt_leitura DATETIME DEFAULT NOW()
);

CREATE TABLE alerta_fila (
    id_alerta INT PRIMARY KEY AUTO_INCREMENT,
    num_caixa INT,
    classificacao_ocupacao VARCHAR(15),
    dt_alerta DATETIME DEFAULT NOW(),
    CONSTRAINT chkOcupacao CHECK (classificacao_ocupacao IN ('moderada', 'media', 'grave'))
);

INSERT INTO mercado (nome_fantasia, cnpj) VALUES 
('Flowmarket', '98765432000100');

INSERT INTO fluxo_portaria (entrada_detectada, saida_detectada, qtd_pessoas) VALUES 
(1, 0, 1),
(0, 1, 1);

INSERT INTO leitura_ultrassonica (num_caixa, zona_1, zona_2, zona_3) VALUES 
(1, 1, 0, 0),
(2, 1, 1, 1);

INSERT INTO alerta_fila (num_caixa, classificacao_ocupacao) VALUES 
(1, 'media'),
(2, 'grave');

SELECT * FROM mercado;
SELECT * FROM fluxo_portaria;
SELECT * FROM leitura_ultrassonica;
SELECT * FROM alerta_fila;