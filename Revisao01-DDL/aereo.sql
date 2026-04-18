/*Exercicio 2*/
CREATE TABLE AEROPORTO (
    Codigo_aeroporto VARCHAR(10) PRIMARY KEY,
    Nome VARCHAR(100),
    Cidade VARCHAR(50),
    Estado VARCHAR(20)
);

CREATE TABLE VOO (
    Numero_voo VARCHAR(10) PRIMARY KEY,
    Companhia_aerea VARCHAR(50),
    Dias_da_semana VARCHAR(50)
);

CREATE TABLE TARIFA (
    Numero_voo VARCHAR(10),
    Codigo_tarifa VARCHAR(10),
    Quantidade INT,
    Restricoes VARCHAR(255),
    PRIMARY KEY (Numero_voo, Codigo_tarifa)
);

CREATE TABLE TIPO_AERONAVE (
    Nome_tipo_aeronave VARCHAR(50) PRIMARY KEY,
    Qtd_max_assentos INT,
    Companhia VARCHAR(50)
);

CREATE TABLE TRECHO_VOO (
    Numero_voo VARCHAR(10),
    Numero_trecho INT,
    Codigo_aeroporto_partida VARCHAR(10),
    Horario_partida_previsto TIME,
    Codigo_aeroporto_chegada VARCHAR(10),
    Horario_chegada_previsto TIME,
    PRIMARY KEY (Numero_voo, Numero_trecho)
);

CREATE TABLE PODE_POUSAR (
    Nome_tipo_aeronave VARCHAR(50),
    Codigo_aeroporto VARCHAR(10),
    PRIMARY KEY (Nome_tipo_aeronave, Codigo_aeroporto)
);

CREATE TABLE AERONAVE (
    Codigo_aeronave VARCHAR(10) PRIMARY KEY,
    Numero_total_assentos INT,
    Tipo_aeronave VARCHAR(50)
);

CREATE TABLE INSTANCIA_TRECHO (
    Numero_voo VARCHAR(10),
    Numero_trecho INT,
    Data DATE,
    Numero_assentos_disponiveis INT,
    Codigo_aeronave VARCHAR(10),
    Codigo_aeroporto_partida VARCHAR(10),
    Horario_partida TIME,
    Codigo_aeroporto_chegada VARCHAR(10),
    Horario_chegada TIME,
    PRIMARY KEY (Numero_voo, Numero_trecho, Data)
);

CREATE TABLE RESERVA_ASSENTO (
    Numero_voo VARCHAR(10),
    Numero_trecho INT,
    Data DATE,
    Numero_assento VARCHAR(10),
    Nome_cliente VARCHAR(100),
    Telefone_cliente VARCHAR(20),
    PRIMARY KEY (Numero_voo, Numero_trecho, Data, Numero_assento)
);
