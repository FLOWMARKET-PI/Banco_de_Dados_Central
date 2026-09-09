create database sprint1_pi;
use sprint1_pi;

create table supermercado(
    id_mercado int primary key auto_increment,
    nome varchar(50),
    cnpj char(14)
);

create table entrada_saida(
    id_movimentacao int primary key auto_increment,
    sensor_entrada tinyint(1),
    sensor_saida tinyint(1),
    qtd_pessoas int,
    data_hora datetime default now()
);

create table filas(
    id_fila int primary key auto_increment,
    caixa_num int,
    sensor1 tinyint(1),
    sensor2 tinyint(1),
    sensor3 tinyint(1),
    qtd_pessoas int,
    data_hora datetime default now()
);

create table alertas(
    id_alerta int primary key auto_increment,
    caixa_num int,
    status_alerta varchar(20),
    mensagem varchar(100),
    data_hora datetime default now(),
    constraint chkstatus 
        check(status_alerta in('leve', 'medio', 'elevado'))
);