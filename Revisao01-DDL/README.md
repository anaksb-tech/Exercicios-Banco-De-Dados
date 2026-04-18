Exercícios focados na criação e alteração da estrutura de bancos de dados
usando comandos DDL: CREATE TABLE, ALTER TABLE e DROP TABLE.

Os scripts estão separados em três arquivos, cada um correspondendo a um
cenário distinto:

universitario.sql
    Criação das tabelas do banco de dados universitário: ALUNO, DISCIPLINA,
    TURMA, PRE_REQUISITO e HISTORICO_ESCOLAR.

aereo.sql
    Criação das tabelas do banco de dados de voos: AEROPORTO, VOO, TARIFA,
    TIPO_AERONAVE, TRECHO_VOO, PODE_POUSAR, AERONAVE, INSTANCIA_TRECHO e
    RESERVA_ASSENTO. Em seguida, criação da tabela PASSAGEIRO e alteração
    da tabela RESERVA_ASSENTO para remover os campos Nome_cliente e
    Telefone_cliente e criar o relacionamento com PASSAGEIRO.

biblioteca.sql
    Criação das tabelas do banco de dados de biblioteca: EDITORA,
    UNIDADE_BIBLIOTECA, USUARIO, LIVRO, LIVRO_AUTOR, LIVRO_COPIAS e
    LIVRO_EMPRESTIMO. Em seguida, criação das tabelas CATEGORIA e
    FUNCIONARIO, alteração das tabelas LIVRO e LIVRO_EMPRESTIMO para
    incluir os novos relacionamentos, e por fim remoção das tabelas
    LIVRO_AUTOR e UNIDADE_BIBLIOTECA.
