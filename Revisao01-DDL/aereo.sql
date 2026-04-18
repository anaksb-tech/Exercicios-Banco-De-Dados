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

-- /*Exercicio 3: Com base no banco de dados criado no exercício 2, crie uma nova tabela “Passageiro”, e faça: Campos: a. código do passageiro, nome do passageiro, telefone, endereço, email e CPF. b. Remova os campos Nome_cliente e Telefone_cliente da tabela “Reserva_Assento”. c. Também, faça o relacionamento entre as tabelas “Reserva_Assento” e “Passageiro”.*/

CREATE TABLE Passageiro (
    codigo_passageiro INT PRIMARY KEY,
    nome_passageiro VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    endereco VARCHAR(255),
    email VARCHAR(100),
    cpf VARCHAR(14) UNIQUE NOT NULL
);

ALTER TABLE Reserva_Assento
DROP COLUMN Nome_cliente;

ALTER TABLE Reserva_Assento
DROP COLUMN Telefone_cliente;

ALTER TABLE Reserva_Assento
ADD COLUMN codigo_passageiro INT;

ALTER TABLE Reserva_Assento
ADD CONSTRAINT fk_passageiro
FOREIGN KEY (codigo_passageiro) REFERENCES Passageiro(codigo_passageiro);
