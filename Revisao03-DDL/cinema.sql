/* a) Exiba o Título e o Ano de Lançamento de todos os filmes lançados no ano de 2010.*/

SELECT Titulo, Ano_Lancamento
FROM filmes
WHERE Ano_Lancamento = 2010;

/* b) Exiba o Título, o Gênero e a Classificação Indicativa de todos os filmes que são do gênero
"Ação" e possuem a classificação "PG-13".* */

SELECT Titulo, Genero, Classificacao_Indicativa
FROM filmes
WHERE Genero = 'Ação' AND Classificacao_Indicativa = 'PG-13';

/* c) Exiba o Título, a Receita e o Ano de Lançamento de todos os filmes cuja receita seja maior que
1 bilhão de reais. Ordene os resultados pelo Ano de Lançamento. */

SELECT Titulo, Receita, Ano_Lancamento
FROM filmes
WHERE Receita > 1000000000
ORDER BY Ano_Lancamento;

/* d) Exiba o Título, a Pontuação IMDb, o País de Origem e a Receita de todos os filmes originários
dos EUA e com pontuação IMDb superior a 7.5. Ordene os resultados pela Receita, do maior
para o menor. */

SELECT Titulo, Pontuacao_IMDB, Pais_Origem, Receita
FROM filmes
WHERE Pais_Origem = 'EUA' AND Pontuacao_IMDB > 7.5
ORDER BY Receita DESC;

/* e) Exiba o Título, o Orçamento, a Duração e a Data de Lançamento dos filmes que possuem um
orçamento entre 50 milhões e 200 milhões de reais e que possuem a classificação indicativa
"PG-13". Ordene os resultados pela Data de Lançamento do mais recente para o mais antigo.*/

SELECT Titulo, Orçamento, Duracao, Data_Lancamento
FROM filmes
WHERE Orçamento >= 50000000 AND Orçamento < 200000000 AND Classificacao_Indicativa = 'PG-13' 
ORDER BY Data_Lancamento DESC;

/* f) Exiba o Título e o Formato de Exibição dos filmes que possuem o formato de exibição "IMAX".*/

SELECT Titulo, Formato_Exibicao 
FROM filmes 
WHERE Formato_Exibicao = 'IMAX';

/*g) Exiba o Título e o Ator Principal dos filmes que possuem "Leonardo DiCaprio" como ator
principal.*/

SELECT Titulo, Ator_Principal 
FROM filmes 
WHERE Ator_Principal = 'Leonardo DiCaprio';

/*h) Exiba o Título e o Diretor dos filmes cujo diretor seja "Christopher Nolan".*/

SELECT Titulo, Diretor 
FROM filmes 
WHERE Diretor = 'Christopher Nolan';

/* i) Exiba o Título e o País de Origem dos filmes produzidos na EUA.*/

SELECT Titulo, Pais_Origem 
FROM filmes 
WHERE Pais_Origem = 'EUA';

/* j) Exiba o Título, o Gênero e a Receita de todos os filmes que possuem um gênero de "Ação" e
uma receita superior a 500 milhões de reais.*/

SELECT Titulo, Genero, Receita 
FROM filmes 
WHERE Genero = 'Ação' AND Receita > 500000000;

/*k) Exiba o Título, o Gênero e a Data de Lançamento dos filmes que pertencem ao gênero
"Comédia" e foram lançados após 2010.*/

SELECT Titulo, Genero, Data_Lancamento 
FROM filmes 
WHERE Genero = 'Comédia' AND Ano_Lancamento > 2010;

/*l) Exiba o Título, a Pontuação IMDb e a Quantidade de Oscars dos filmes que possuem uma
pontuação IMDb superior a 8.0 e ganharam mais de 3 Oscars.*/

SELECT Titulo, Pontuacao_IMDB, Quantidade_de_Oscars 
FROM filmes 
WHERE Pontuacao_IMDB > 8.0 AND Quantidade_de_Oscars > 3;

/*m) Exiba o Ano de Lançamento e o número de filmes lançados em cada ano, ordenados pelo Ano
de Lançamento em ordem crescente.*/

SELECT Ano_Lancamento, COUNT(*) AS Numero_de_Filmes 
FROM filmes 
GROUP BY Ano_Lancamento 
ORDER BY Ano_Lancamento ASC;

/*n) Exiba o Gênero e a soma do orçamento de todos os filmes dentro de cada gênero, ordenados
pela soma do orçamento em ordem decrescente.*/

SELECT Genero, SUM(Orçamento) AS Soma_Orcamento 
FROM filmes 
GROUP BY Genero 
ORDER BY Soma_Orcamento DESC;

/*o) Exiba o Diretor e o número de filmes dirigidos, mas apenas para os diretores que tenham mais
de 3 filmes. Ordene os resultados pelo número de filmes em ordem decrescente.*/

SELECT Diretor, COUNT(*) AS Numero_de_Filmes 
FROM filmes 
GROUP BY Diretor 
HAVING COUNT(*) > 3 
ORDER BY Numero_de_Filmes DESC;

/* p) Exiba o País de Origem e a soma da receita dos filmes de cada país, mas apenas para os países
onde a soma da receita é superior a 1 bilhão de reais. Ordene os resultados pela soma da
receita em ordem decrescente.*/

SELECT Pais_Origem, SUM(Receita) AS Receita_Soma
FROM filmes
GROUP BY Pais_Origem
HAVING SUM(Receita) > 1000000000
ORDER BY Receita_Soma DESC;

/* q) Exiba o Gênero, o Ano de Lançamento e a média da pontuação IMDb dos filmes de cada
gênero por ano. Ordene os resultados pelo Ano de Lançamento em ordem crescente e pela
média da pontuação IMDb em ordem decrescente.*/

SELECT Genero, Ano_Lancamento, AVG(Pontuacao_IMDB) AS Media_IMDb 
FROM filmes 
GROUP BY Genero, Ano_Lancamento 
ORDER BY Ano_Lancamento ASC, Media_IMDb DESC;

/*r)Exiba o Formato de Exibição e o número de filmes de cada formato de exibição, ordenados pela quantidade de filmes.*/

SELECT Formato_Exibicao, COUNT(*) AS Numero_de_Filmes 
FROM filmes 
GROUP BY Formato_Exibicao 
ORDER BY Numero_de_Filmes;

/*s) Exiba o Ator Principal e a soma da receita dos filmes de cada ator, mas apenas para os atores que têm uma receita total superior a 500 milhões de reais. Ordene os resultados pela soma
da receita em ordem decrescente.*/

SELECT Ator_Principal, SUM(Receita) AS Receita_Soma 
FROM filmes 
GROUP BY Ator_Principal 
HAVING SUM(Receita) > 500000000 
ORDER BY Receita_Soma DESC;

/*t) Exiba o Gênero e a média da pontuação IMDb dos filmes de cada gênero. Ordene os 
resultados pela média da pontuação IMDb em ordem decrescente.*/

SELECT Genero, AVG(Pontuacao_IMDB) AS Media_IMDb 
FROM filmes 
GROUP BY Genero 
ORDER BY Media_IMDb DESC;

/*u) Exiba o Diretor e o número de filmes dirigidos, mas apenas para os diretores que tenham
dirigido mais de 2 filmes. Ordene os resultados pelo número de filmes em ordem decrescente.*/

SELECT Diretor, COUNT(*) AS Numero_de_Filmes 
FROM filmes 
GROUP BY Diretor 
HAVING COUNT(*) > 2 
ORDER BY Numero_de_Filmes DESC;

/* v) Exiba o Gênero, o Ano de Lançamento e a soma da receita dos filmes de cada gênero e ano.
Ordene os resultados pelo Ano de Lançamento e pela soma da receita em ordem decrescente.*/

SELECT Genero, Ano_Lancamento, SUM(Receita) AS Receita_Soma 
FROM filmes 
GROUP BY Genero, Ano_Lancamento 
ORDER BY Ano_Lancamento DESC, Receita_Soma DESC;

/* w) Exiba o Gênero e a soma do orçamento de todos os filmes de cada gênero. Filtre para exibir
apenas os gêneros cujo orçamento total seja superior a 500 milhões de reais. Ordene os
resultados pela soma do orçamento em ordem decrescente, exibindo primeiro o gênero com
o maior orçamento.*/

SELECT Genero, SUM(Orçamento) AS Soma_Orcamento 
FROM filmes 
GROUP BY Genero 
HAVING SUM(Orçamento) > 500000000 
ORDER BY Soma_Orcamento DESC;

/*x) Exiba o Diretor, o número de filmes que ele dirigiu e a soma da receita de seus filmes. Ordene
os resultados pelo número de filmes em ordem decrescente, exibindo o diretor com mais
filmes no topo.*/

SELECT Diretor, COUNT(*) AS Numero_de_Filmes, SUM(Receita) AS Receita_Soma
FROM filmes 
GROUP BY Diretor 
ORDER BY Numero_de_Filmes DESC;

/*y) Exiba o Formato de Exibição e o orçamento médio dos filmes de cada formato. Ordene os
resultados pelo orçamento médio em ordem crescente.*/

SELECT Formato_Exibicao, AVG(Orçamento) AS Orcamento_Medio 
FROM filmes 
GROUP BY Formato_Exibicao 
ORDER BY Orcamento_Medio ASC;

/* z) Exiba o Gênero e a média da pontuação IMDb dos filmes de cada gênero. Ordene os resultados
pela média da pontuação IMDb em ordem decrescente, exibindo primeiro o gênero com a maior
média.*/

SELECT Genero, AVG(Pontuacao_IMDB) AS Media_IMDb 
FROM filmes 
GROUP BY Genero 
ORDER BY Media_IMDb DESC;
