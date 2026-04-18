/*Exercicio 2*/
INSERT INTO AEROPORTO (Codigo_aeroporto, Nome, Cidade, Estado) 
VALUES ('GRU', 'Guarulhos', 'São Paulo', 'SP'), ('GIG', 'Galeão', 'Rio de Janeiro', 'RJ'),
('BSB', 'Pres. Juscelino Kubitschek', 'Brasília', 'DF'), ('CNF', 'Confins', 'Belo Horizonte', 'MG'),
('SSA', 'Dep. Luís Eduardo Magalhães', 'Salvador', 'BA');

INSERT INTO VOO (Numero_voo, Companhia_aerea, Dias_da_semana)
VALUES (101, 'GOL', 'Seg, Qua, Sex'), (102, 'LATAM', 'Ter, Qui, Sab'),
(103, 'AZUL', 'Todos os dias'), (104, 'GOL', 'Sab, Dom'), (105, 'LATAM', 'Seg a Sex');

INSERT INTO TIPO_AERONAVE (Nome_tipo_aeronave, Qtd_max_assentos, Companhia)
VALUES ('Boeing 737', 189, 'GOL'), ('Airbus A320', 174, 'LATAM'),
('Embraer E195', 118, 'AZUL'), ('Boeing 777', 376, 'LATAM'), ('ATR 72', 70, 'AZUL');

INSERT INTO TRECHO_VOO (Numero_voo, Numero_trecho, Codigo_aeroporto_partida, Horario_partida_previsto, Codigo_aeroporto_chegada, Horario_chegada_previsto) 
VALUES (101, 1, 'GRU', '08:00:00', 'GIG', '09:00:00'), (102, 1, 'GIG', '10:30:00', 'BSB', '12:15:00'),
(103, 1, 'BSB', '14:00:00', 'CNF', '15:30:00'), (104, 1, 'CNF', '16:00:00', 'SSA', '17:45:00'), (105, 1, 'SSA', '19:00:00', 'GRU', '21:30:00');

INSERT INTO TARIFA (Numero_voo, Codigo_tarifa, Quantidade, Restricoes)
VALUES (101, 'T01', 50, 'Sem bagagem despachada'), (102, 'T02', 20, 'Não reembolsável'),
(103, 'T03', 10, 'Tarifa Executiva'), (104, 'T04', 100, 'Tarifa Promocional'), (105, 'T05', 30, 'Permite remarcação');

INSERT INTO PODE_POUSAR (Nome_tipo_aeronave, Codigo_aeroporto) 
VALUES ('Boeing 737', 'GRU'), ('Airbus A320', 'GIG'),
('Embraer E195', 'BSB'), ('Boeing 777', 'CNF'), ('ATR 72', 'SSA');

INSERT INTO AERONAVE (Codigo_aeronave, Numero_total_assentos, Tipo_aeronave) 
VALUES (1, 189, 'Boeing 737'), (2, 174, 'Airbus A320'),
(3, 118, 'Embraer E195'), (4, 376, 'Boeing 777'), (5, 70, 'ATR 72');

INSERT INTO INSTANCIA_TRECHO (Numero_voo, Numero_trecho, Data, Numero_assentos_disponiveis, Codigo_aeronave, Codigo_aeroporto_partida, Horario_partida, Codigo_aeroporto_chegada, Horario_chegada)
VALUES (101, 1, '2026-04-10', 188, 1, 'GRU', '08:05:00', 'GIG', '09:05:00'), (102, 1, '2026-04-11', 173, 2, 'GIG', '10:30:00', 'BSB', '12:10:00'),
(103, 1, '2026-04-12', 117, 3, 'BSB', '14:15:00', 'CNF', '15:45:00'), (104, 1, '2026-04-13', 375, 4, 'CNF', '16:00:00', 'SSA', '17:45:00'), (105, 1, '2026-04-14', 69, 5, 'SSA', '19:10:00', 'GRU', '21:40:00');

-- Nota: retirei os campos "Nome_cliente" e "Telefone_cliente", pois, no ultimo exercicio foi pedido para deletar essas colunas.
INSERT INTO RESERVA_ASSENTO (Numero_voo, Numero_trecho, Data, Numero_assento) 
VALUES (101, 1, '2026-04-10', '12A'), (102, 1, '2026-04-11', '05C'),
(103, 1, '2026-04-12', '15F'), (104, 1, '2026-04-13', '01A'), (105, 1, '2026-04-14', '10B');

UPDATE VOO 
SET Companhia_aerea = 'LATAM' 
WHERE Numero_voo = 101;

UPDATE TRECHO_VOO 
SET Horario_partida_previsto = '08:30:00' 
WHERE Numero_voo = 101 AND Numero_trecho = 1;

UPDATE INSTANCIA_TRECHO 
SET Numero_assentos_disponiveis = Numero_assentos_disponiveis + 1 
WHERE Numero_voo = 101 AND Numero_trecho = 1 AND Data = '2026-04-10';

DELETE FROM RESERVA_ASSENTO 
WHERE Numero_voo = 105 AND Numero_trecho = 1 AND Data = '2026-04-14' AND Numero_assento = '10B';

DELETE FROM TARIFA 
WHERE Codigo_tarifa = 'T04' AND Numero_voo = 104;

DELETE FROM PODE_POUSAR 
WHERE Nome_tipo_aeronave = 'Boeing 777' AND Codigo_aeroporto = 'CNF';

