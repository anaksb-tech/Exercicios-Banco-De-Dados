/*Exercício 1*/
CREATE TABLE ALUNO (
	Nome VARCHAR(255) NOT NULL, 
    Numero_aluno INTEGER PRIMARY KEY,
    Tipo_aluno INTEGER NOT NULL,
    Curso VARCHAR(4) NOT NULL
);

CREATE TABLE DISCIPLINA (
    Nome_disciplina VARCHAR(100) NOT NULL,
    Numero_disciplina VARCHAR(10) PRIMARY KEY,
    Creditos INT,
    Departamento VARCHAR(10)
);

CREATE TABLE TURMA (
    Identificacao_turma INT PRIMARY KEY,
    Numero_disciplina VARCHAR(10),
    Semestre VARCHAR(20),
    Ano INT,
    Professor VARCHAR(50)
);

CREATE TABLE PRE_REQUISITO (
    Numero_disciplina VARCHAR(10),
    Numero_pre_requisito VARCHAR(10),
    PRIMARY KEY (Numero_disciplina, Numero_pre_requisito)
);

CREATE TABLE HISTORICO_ESCOLAR (
    Numero_aluno INT,
    Identificacao_turma INT,
    Nota CHAR(1),
    PRIMARY KEY (Numero_aluno, Identificacao_turma)
);
