/*Exercicio 3*/
INSERT INTO EDITORA (Nome, Endereco, Telefone) 
VALUES ('Companhia das Letras', 'Rua Bandeira Paulista, SP', '1130309900'), ('Rocco', 'Av. Presidente Vargas, RJ', '2135252000'),
('Intrínseca', 'Rua Marquês de São Vicente, RJ', '2132067373'), ('Sextante', 'Rua Voluntários da Pátria, RJ', '2125384100'), ('Aleph', 'Rua João Moura, SP', '1137433202');

/*Adicionei o insert aqui, porém, foi pedido para deletar essa tabela na revisão 1*/
INSERT INTO UNIDADE_BIBLIOTECA (Cod_unidade, Nome_unidade, Endereco) 
VALUES (1, 'Biblioteca Central', 'Praça da Sé, 100'), (2, 'Biblioteca Zona Sul', 'Av. Paulista, 1500'),
(3, 'Biblioteca Zona Norte', 'Av. Cruzeiro do Sul, 2630'), (4, 'Biblioteca Universitária', 'Cidade Universitária, USP'), (5, 'Biblioteca Comunitária', 'Rua das Flores, 45');

INSERT INTO USUARIO (Num_cartao, Nome, Endereco, Telefone) 
VALUES (1001, 'Ana Clara Silva', 'Rua A, 123', '11988887777'), (1002, 'Pedro Henrique', 'Av B, 456', '11977776666'),
(1003, 'Maria Souza', 'Travessa C, 789', '21966665555'), (1004, 'João Oliveira', 'Rua D, 321', '31955554444'), (1005, 'Camila Costa', 'Av E, 654', '41944443333');

INSERT INTO LIVRO (Cod_livro, Titulo, Nome_editora) 
VALUES (101, 'Ensaio Sobre a Cegueira', 'Companhia das Letras'), (102, 'Harry Potter e a Pedra Filosofal', 'Rocco'),
(103, 'A Culpa é das Estrelas', 'Intrínseca'), (104, 'O Poder do Hábito', 'Sextante'), (105, 'Duna', 'Aleph');

/*Adicionei o insert aqui, porém, foi pedido para deletar essa tabela na revisão 1*/
INSERT INTO LIVRO_AUTOR (Cod_livro, Nome_autor) 
VALUES (101, 'José Saramago'), (102, 'J.K. Rowling'),
(103, 'John Green'), (104, 'Charles Duhigg'), (105, 'Frank Herbert');

INSERT INTO LIVRO_COPIAS (Cod_livro, Cod_unidade, Qt_copia) 
VALUES (101, 1, 5), (102, 2, 10),
(103, 3, 3), (104, 1, 7), (105, 4, 4);

INSERT INTO LIVRO_EMPRESTIMO (Cod_livro, Cod_unidade, Nr_cartao, Data_emprestimo, Data_devolucao)
VALUES (101, 1, 1001, '2026-03-01', '2026-03-15'), (102, 2, 1002, '2026-03-05', '2026-03-19'),
(103, 3, 1003, '2026-03-10', '2026-03-24'), (104, 1, 1004, '2026-03-12', '2026-03-26'), (105, 4, 1005, '2026-03-20', '2026-04-03');

UPDATE USUARIO 
SET Telefone = '11900000000' 
WHERE Num_cartao = 1001;

UPDATE LIVRO_COPIAS 
SET Qt_copia = 15 
WHERE Cod_livro = 102 AND Cod_unidade = 2;

UPDATE LIVRO_EMPRESTIMO 
SET Data_devolucao = '2026-03-30' 
WHERE Cod_livro = 104 AND Nr_cartao = 1004;

DELETE FROM LIVRO_EMPRESTIMO 
WHERE Cod_livro = 101 AND Cod_unidade = 1 AND Nr_cartao = 1001;

/*Adicionei o delete aqui, porém, foi pedido para deletar essa tabela na revisão 1*/
DELETE FROM LIVRO_AUTOR 
WHERE Cod_livro = 103 AND Nome_autor = 'John Green';

DELETE FROM LIVRO_COPIAS 
WHERE Cod_livro = 103 AND Cod_unidade = 3;
