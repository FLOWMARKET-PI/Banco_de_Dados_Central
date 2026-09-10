CREATE DATABASE supermercadoFila;
USE supermercadoFila;

CREATE TABLE ENTRADA (
    id INT PRIMARY KEY AUTO_INCREMENT,
    quantPessoasE INT NOT NULL,
    dataHora DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE SAIDA (
    id INT PRIMARY KEY AUTO_INCREMENT,
    quantPessoasS INT NOT NULL,
    dataHora DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE SENSORES_FILA (
    id INT PRIMARY KEY AUTO_INCREMENT,
    caixa INT NOT NULL,
    sensor INT NOT NULL,
    dataHora DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_sensor_leitura CHECK (sensor IN (1, 2, 3))
);

CREATE TABLE NIVEL_FILA (
    id INT PRIMARY KEY AUTO_INCREMENT,
    sensor INT UNIQUE NOT NULL,
    nomeNivel VARCHAR(15) NOT NULL,
    mensagem VARCHAR(50) NOT NULL,
    CONSTRAINT chk_sensor_nivel CHECK (sensor IN (1, 2, 3))
);

CREATE TABLE ALERTA (
    id INT PRIMARY KEY AUTO_INCREMENT,
    caixa INT NOT NULL,
    sensor INT NOT NULL,
    dataHora DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_sensor_alerta CHECK (sensor IN (2, 3))
);

CREATE TABLE FREQUENCIA_FILA (
    id INT PRIMARY KEY AUTO_INCREMENT,
    caixa INT NOT NULL,
    sensor INT NOT NULL,
    quantidadeAtivacoes INT NOT NULL,
    Datas DATE NOT NULL,
    CONSTRAINT chk_sensor_freq CHECK (sensor IN (1, 2, 3))
);

INSERT INTO NIVEL_FILA (sensor, nomeNivel, mensagem) VALUES
(1, 'Leve', 'Fila leve'),
(2, 'Moderada', 'Fila moderada'),
(3, 'Crítica', 'Fila crítica');