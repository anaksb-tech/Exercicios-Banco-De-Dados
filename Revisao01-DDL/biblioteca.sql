/*Exercicio 4*/
CREATE TABLE EDITORA (
    Nome VARCHAR(100) PRIMARY KEY,
    Endereco VARCHAR(255),
    Telefone VARCHAR(20)
);

CREATE TABLE UNIDADE_BIBLIOTECA (
    Cod_unidade INT PRIMARY KEY,
    Nome_unidade VARCHAR(100),
    Endereco VARCHAR(255)
);

CREATE TABLE USUARIO (
    Num_cartao INT PRIMARY KEY,
    Nome VARCHAR(100),
    Endereco VARCHAR(255),
    Telefone VARCHAR(20)
);

CREATE TABLE LIVRO (
    Cod_livro INT PRIMARY KEY,
    Titulo VARCHAR(200),
    Nome_editora VARCHAR(100),
    FOREIGN KEY (Nome_editora) REFERENCES EDITORA(Nome)
);

CREATE TABLE LIVRO_AUTOR (
    Cod_livro INT,
    Nome_autor VARCHAR(100),
    PRIMARY KEY (Cod_livro, Nome_autor),
    FOREIGN KEY (Cod_livro) REFERENCES LIVRO(Cod_livro)
);

CREATE TABLE LIVRO_COPIAS (
    Cod_livro INT,
    Cod_unidade INT,
    Qt_copia INT,
    PRIMARY KEY (Cod_livro, Cod_unidade),
    FOREIGN KEY (Cod_livro) REFERENCES LIVRO(Cod_livro),
    FOREIGN KEY (Cod_unidade) REFERENCES UNIDADE_BIBLIOTECA(Cod_unidade)
);

CREATE TABLE LIVRO_EMPRESTIMO (
    Cod_livro INT,
    Cod_unidade INT,
    Nr_cartao INT,
    Data_emprestimo DATE,
    Data_devolucao DATE,
    PRIMARY KEY (Cod_livro, Cod_unidade, Nr_cartao),
    FOREIGN KEY (Cod_livro) REFERENCES LIVRO(Cod_livro),
    FOREIGN KEY (Cod_unidade) REFERENCES UNIDADE_BIBLIOTECA(Cod_unidade),
    FOREIGN KEY (Nr_cartao) REFERENCES USUARIO(Num_cartao)
);

/*Exercicio 5: Considerando o banco de dados anterior: a. Crie a tabela CATEGORIA, contendo: Código da categoria e Nome da categoria. b. Altere a tabela LIVRO para incluir a categoria do livro, definindo o relacionamento apropriado entre elas. c. Crie a tabela FUNCIONARIO (coloque você campos que julgue necessário para a tabela) d. Altere a tabela LIVRO_EMPRESTIMO para incluir o código do funcionário, definindo as chaves primárias e estrangeiras necessárias */

CREATE TABLE CATEGORIA (
    Cod_categoria INT PRIMARY KEY,
    Nome_categoria VARCHAR(100) NOT NULL
);

ALTER TABLE LIVRO 
ADD COLUMN Cod_categoria INT;

ALTER TABLE LIVRO 
ADD CONSTRAINT fk_livro_categoria 
FOREIGN KEY (Cod_categoria) REFERENCES CATEGORIA(Cod_categoria);

CREATE TABLE FUNCIONARIO (
    Cod_funcionario INT PRIMARY KEY,
    Nome_funcionario VARCHAR(100) NOT NULL,
    Cargo VARCHAR(50),
    Data_admissao DATE
);

ALTER TABLE LIVRO_EMPRESTIMO 
ADD COLUMN Cod_funcionario INT;

ALTER TABLE LIVRO_EMPRESTIMO 
ADD CONSTRAINT fk_emprestimo_funcionario 
FOREIGN KEY (Cod_funcionario) REFERENCES FUNCIONARIO(Cod_funcionario);

/*Exercicio 6: Considerando o banco do exercício 4, faça: a. Escreva as instruções SQL necessárias para remover completamente a tabela LIVRO_AUTOR do banco de dados. b. Escreva as instruções SQL necessárias para remover completamente a tabela UNIDADE_BIBLIOTECA do banco de dados.*/

DROP TABLE LIVRO_AUTOR;
DROP TABLE UNIDADE_BIBLIOTECA;
