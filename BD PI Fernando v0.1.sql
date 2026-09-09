CREATE DATABASE projetoPI;
USE projetoPI;

CREATE TABLE controle_fluxo_fila(
id INT PRIMARY KEY AUTO_INCREMENT, 
caixa INT CONSTRAINT chk_caixa CHECK(entrada IN(0, 1)), 
sensor VARCHAR(10) CONSTRAINT chk_sensor CHECK(sensor IN('sensor 1', 'sensor 2', 'sensor 3'))
);

CREATE TABLE horario_passagem(
id INT PRIMARY KEY AUTO_INCREMENT,
hr_entrada DATETIME,
hr_saida DATETIME,
hr_lotacao DATETIME
);

CREATE TABLE entradas_saidas(
id INT PRIMARY KEY AUTO_INCREMENT,
entrada INT CONSTRAINT chk_entrada CHECK(entrada IN(0, 1)), 
saida INT CONSTRAINT chk_saida CHECK(entrada IN(0, 1))
);