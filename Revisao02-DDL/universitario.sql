USE rev_1;

/*Exercicio 1*/
INSERT INTO ALUNO (Nome, Numero_aluno, Tipo_aluno, Curso)
VALUES ('Silva', 17, 1, 'CC'), ('Braga', 8 , 2, 'CC');

INSERT INTO DISCIPLINA (Nome_disciplina, Numero_disciplina, Creditos, Departamento)
VALUES ('Introd. à ciência da computação', 'CC13101', 4, 'CC'), ('Estrutura de dados', 'CC3320', 4, 'CC'), 
('Matemática discreta', 'MAT2410', 3, 'MAT'), ('Banco de dados', 'CC3380', 3, 'CC');

INSERT INTO TURMA (Identificacao_turma, Numero_disciplina, Semestre, Ano, Professor)
VALUES (85, 'MAT2410', 'Segundo', 07, 'Kleber'), (92, 'CC1310', 'Segundo', 07, 'Anderson'),
(102, 'CC3320', 'Primeiro', 08, 'Carlos'), (112, 'MAT2410', 'Segundo', 08, 'Chang'), 
(119, 'CC1310', 'Segundo', 08, 'Anderson'), (135, 'CC3380', 'Segundo', 08, 'Santos'); 

INSERT INTO PRE_REQUISITO (Numero_disciplina, Numero_pre_requisito)
VALUES ('CC3380', 'CC3320'),('CC3380', 'MAT2410'), ('CC3320', 'CC1310');

INSERT INTO HISTORICO_ESCOLAR (Numero_aluno, Identificacao_turma, Nota)
VALUES (17, 112, 'B'), (17, 119, 'C'), (8, 85, 'A'),
(8, 92, 'A'), (8, 102, 'B'), (8, 135, 'A');
