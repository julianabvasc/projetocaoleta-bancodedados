USE ProjetoCaoleta;

INSERT INTO Usuario (CPF, nome, nascimento, genero, nomeSocial, email) VALUES
('111.111.111-11', 'Ana Silva', '1990-05-15', 'Feminino', NULL, 'ana.silva@email.com'),
('222.222.222-22', 'Bruno Costa', '1988-11-20', 'Masculino', NULL, 'bruno.costa@email.com'),
('333.333.333-33', 'Carla Oliveira', '1995-03-01', 'Feminino', 'Cah', 'carla.o@email.com'),
('444.444.444-44', 'Daniel Pereira', '1985-07-22', 'Masculino', NULL, 'daniel.p@email.com'),
('555.555.555-55', 'Eduarda Souza', '2000-01-10', 'Feminino', NULL, 'eduarda.s@email.com'),
('666.666.666-66', 'Fernando Lima', '1992-09-08', 'Masculino', NULL, 'fernando.l@email.com'),
('777.777.777-77', 'Gabriela Santos', '1980-04-30', 'Feminino', NULL, 'gabriela.s@email.com'),
('888.888.888-88', 'Henrique Rocha', '1993-12-05', 'Masculino', NULL, 'henrique.r@email.com'),
('999.999.999-99', 'Isabela Almeida', '1997-06-18', 'Feminino', NULL, 'isabela.a@email.com'),
('100.100.100-00', 'João Martins', '1982-02-28', 'Masculino', NULL, 'joao.m@email.com'),
('112.112.112-12', 'Luana Gomes', '1991-08-03', 'Feminino', NULL, 'luana.g@email.com'),
('131.131.131-31', 'Marcelo Ferreira', '1979-10-12', 'Masculino', NULL, 'marcelo.f@email.com'),
('141.141.141-41', 'Natália Ribeiro', '1996-01-25', 'Feminino', NULL, 'natalia.r@email.com'),
('151.151.151-51', 'Otávio Correia', '1987-04-07', 'Masculino', NULL, 'otavio.c@email.com'),
('161.161.161-61', 'Patrícia Dias', '1994-09-11', 'Feminino', NULL, 'patricia.d@email.com'),
('171.171.171-71', 'Ricardo Barbosa', '1983-06-29', 'Masculino', NULL, 'ricardo.b@email.com'),
('181.181.181-81', 'Sofia Mendes', '1999-03-14', 'Feminino', NULL, 'sofia.m@email.com'),
('191.191.191-91', 'Thiago Nogueira', '1986-12-01', 'Masculino', NULL, 'thiago.n@email.com'),
('200.200.200-00', 'Ursula Castro', '1998-07-06', 'Feminino', NULL, 'ursula.c@email.com'),
('211.211.211-11', 'Vitor Pires', '1981-05-19', 'Masculino', NULL, 'vitor.p@email.com');

USE ProjetoCaoleta;

INSERT INTO Telefone (numero, Usuario_CPF) VALUES
('11987654321', '111.111.111-11'),
('21998765432', '222.222.222-22'),
('31987650000', '333.333.333-33'),
('41999998888', '444.444.444-44'),
('51987651111', '555.555.555-55'),
('61998887777', '666.666.666-66'),
('71987776666', '777.777.777-77'),
('81999995555', '888.888.888-88'),
('91987654444', '999.999.999-99'),
('11998883333', '100.100.100-00'),
('21987652222', '112.112.112-12'),
('31999991111', '131.131.131-31'),
('41987650001', '141.141.141-41'),
('51998880002', '151.151.151-51'),
('61987770003', '161.161.161-61'),
('71999990004', '171.171.171-71'),
('81987650005', '181.181.181-81'),
('91998880006', '191.191.191-91'),
('11987650007', '200.200.200-00'),
('21999990008', '211.211.211-11');

USE ProjetoCaoleta;

INSERT INTO Pet (nome, idade, especie, Usuario_CPF) VALUES
('Max', 3, 'Cachorro', '111.111.111-11'),
('Luna', 2, 'Gato', '222.222.222-22'),
('Bolinha', 5, 'Cachorro', '111.111.111-11'),
('Miau', 1, 'Gato', '333.333.333-33'),
('Bob', 4, 'Cachorro', '444.444.444-44'),
('Fumaça', 2, 'Gato', '555.555.555-55'),
('Thor', 6, 'Cachorro', '666.666.666-66'),
('Mia', 3, 'Gato', '777.777.777-77'),
('Rex', 7, 'Cachorro', '888.888.888-88'),
('Pompom', 1, 'Gato', '999.999.999-99'),
('Amora', 2, 'Cachorro', '100.100.100-00'),
('Salem', 5, 'Gato', '112.112.112-12'),
('Pirata', 8, 'Cachorro', '131.131.131-31'),
('Jade', 3, 'Gato', '141.141.141-41'),
('Duque', 4, 'Cachorro', '151.151.151-51'),
('Kitty', 1, 'Gato', '161.161.161-61'),
('Pluto', 9, 'Cachorro', '171.171.171-71'),
('Simba', 6, 'Gato', '181.181.181-81'),
('Daisy', 2, 'Cachorro', '191.191.191-91'),
('Shadow', 7, 'Gato', '200.200.200-00');

USE ProjetoCaoleta;

INSERT INTO Coleta (pontosGanhos, dataHora) VALUES
(100, '2023-01-10 10:00:00'),
(150, '2023-01-15 11:30:00'),
(200, '2023-01-20 14:00:00'),
(50, '2023-01-25 09:00:00'),
(120, '2023-02-01 16:45:00'),
(80, '2023-02-05 10:15:00'),
(180, '2023-02-10 13:00:00'),
(70, '2023-02-15 15:30:00'),
(250, '2023-02-20 17:00:00'),
(110, '2023-03-01 09:30:00'),
(90, '2023-03-05 11:00:00'),
(130, '2023-03-10 14:15:00'),
(170, '2023-03-15 10:45:00'),
(60, '2023-03-20 12:00:00'),
(140, '2023-03-25 16:00:00'),
(105, '2023-04-01 09:00:00'),
(195, '2023-04-05 11:00:00'),
(85, '2023-04-10 13:00:00'),
(210, '2023-04-15 15:00:00'),
(160, '2023-04-20 17:00:00');

USE ProjetoCaoleta;

INSERT INTO Endereco (logradouro, numero, bairro, cidade, UF, CEP, complemento, Coleta_idColeta) VALUES
(1, 100, 'Centro', 'São Paulo', 'SP', '01000-000', 'Apto 101', 1),
(2, 250, 'Jardins', 'São Paulo', 'SP', '01400-000', NULL, 2),
(3, 30, 'Barra da Tijuca', 'Rio de Janeiro', 'RJ', '22600-000', 'Casa 1', 3),
(4, 15, 'Copacabana', 'Rio de Janeiro', 'RJ', '22000-000', 'Loja', 4),
(5, 75, 'Savassi', 'Belo Horizonte', 'MG', '30100-000', NULL, 5),
(6, 120, 'Lago Sul', 'Brasília', 'DF', '71600-000', 'Cond. Fechado', 6),
(7, 400, 'Aldeota', 'Fortaleza', 'CE', '60100-000', NULL, 7),
(8, 88, 'Boa Viagem', 'Recife', 'PE', '51000-000', 'Sala 502', 8),
(9, 50, 'Batista Campos', 'Belém', 'PA', '66000-000', NULL, 9),
(10, 200, 'Centro', 'Curitiba', 'PR', '80000-000', 'Edifício Comercial', 10),
(1, 150, 'Vila Madalena', 'São Paulo', 'SP', '05400-000', NULL, 11),
(2, 300, 'Ipanema', 'Rio de Janeiro', 'RJ', '22400-000', 'Apto 202', 12),
(3, 45, 'Funcionários', 'Belo Horizonte', 'MG', '30200-000', NULL, 13),
(4, 90, 'Asa Norte', 'Brasília', 'DF', '70800-000', NULL, 14),
(5, 25, 'Meireles', 'Fortaleza', 'CE', '60200-000', 'Consultório', 15),
(6, 180, 'Pina', 'Recife', 'PE', '51100-000', NULL, 16),
(7, 70, 'Umarizal', 'Belém', 'PA', '66100-000', NULL, 17),
(8, 110, 'Bigorrilho', 'Curitiba', 'PR', '80400-000', 'Casa', 18),
(9, 350, 'Morumbi', 'São Paulo', 'SP', '05600-000', NULL, 19),
(10, 60, 'Leblon', 'Rio de Janeiro', 'RJ', '22500-000', 'Apto 303', 20);

USE ProjetoCaoleta;

INSERT INTO Pontos (idPontos, qtdPontos) VALUES
(101, 500),
(102, 300),
(103, 800),
(104, 200),
(105, 600),
(106, 450),
(107, 750),
(108, 350),
(109, 900),
(110, 550),
(111, 400),
(112, 700),
(113, 250),
(114, 650),
(115, 520),
(116, 380),
(117, 850),
(118, 150),
(119, 720),
(120, 480);

USE ProjetoCaoleta;

INSERT INTO Troca (dataHora, pontosGastos) VALUES
('2023-01-20 15:00:00', 100),
('2023-01-28 10:00:00', 50),
('2023-02-05 14:30:00', 200),
('2023-02-12 11:00:00', 75),
('2023-02-25 16:00:00', 120),
('2023-03-03 09:00:00', 60),
('2023-03-10 13:00:00', 180),
('2023-03-18 10:30:00', 90),
('2023-03-25 17:00:00', 250),
('2023-04-02 08:00:00', 110),
('2023-04-09 12:00:00', 80),
('2023-04-16 15:00:00', 150),
('2023-04-23 09:30:00', 70),
('2023-04-30 14:00:00', 190),
('2023-05-07 10:00:00', 100),
('2023-05-14 11:00:00', 50),
('2023-05-21 13:00:00', 200),
('2023-05-28 15:00:00', 75),
('2023-06-04 17:00:00', 120),
('2023-06-11 09:00:00', 60);

USE ProjetoCaoleta;

INSERT INTO Produto (nome, tipo, quantidade, valorPontos, Troca_idTroca) VALUES
('Ração Premium Cães', 'Alimento', 1, 100, 1),
('Brinquedo Mordedor', 'Acessório', 1, 50, 2),
('Tapete Higiênico', 'Higiene', 1, 200, 3),
('Coleira Guia Gatos', 'Acessório', 1, 75, 4),
('Petisco Dental', 'Alimento', 1, 120, 5),
('Shampoo Pet', 'Higiene', 1, 60, 6),
('Cama Confort Pet', 'Conforto', 1, 180, 7),
('Pote Comida Inox', 'Alimento', 1, 90, 8),
('Caixa Transporte Gde', 'Transporte', 1, 250, 9),
('Anti-Pulgas Compr.', 'Medicamento', 1, 110, 10),
('Ração Light Gatos', 'Alimento', 1, 80, 11),
('Arranhador Gatos', 'Acessório', 1, 150, 12),
('Escova Pelos', 'Higiene', 1, 70, 13),
('Ossinho de Couro', 'Alimento', 1, 190, 14),
('Bebedouro Automático', 'Acessório', 1, 100, 15),
('Petisco para Treino', 'Alimento', 1, 50, 16),
('Toalha Microfibra Pet', 'Higiene', 1, 200, 17),
('Comedouro Lento', 'Acessório', 1, 75, 18),
('Fralda para Cães', 'Higiene', 1, 120, 19),
('Gaiola para Pássaro', 'Conforto', 1, 60, 20);

USE ProjetoCaoleta;

INSERT INTO Empresa (CNPJ, nome, email, produtosDisponibilizados, qtdProdutosDisponibilizados) VALUES
('00.000.000/0001-01', 'PetShop Legal Ltda', 'contato@petshoplegal.com', 'Ração, Brinquedos', 500),
('01.111.111/0001-01', 'Mundo Animal S.A.', 'vendas@mundoanimal.com', 'Medicamentos, Acessórios', 300),
('02.222.222/0001-02', 'Cantinho do Pet', 'atendimento@cantinhodopet.com', 'Camas, Tapetes', 200),
('03.333.333/0001-03', 'Saúde Animal Distribuidora', 'comercial@saudeanimal.com', 'Vacinas, Suplementos', 400),
('04.444.444/0001-04', 'Bigodes & Patas', 'info@bigodespatas.com', 'Alimentos, Higiene', 350),
('05.555.555/0001-05', 'Casa do Bichano', 'suporte@casadobichano.com', 'Brinquedos, Arranhadores', 150),
('06.666.666/0001-06', 'Doutor Pet Online', 'sac@doutorpet.com', 'Rações Especiais', 250),
('07.777.777/0001-07', 'Amigo Fiel Produtos', 'contato@amigofiel.com', 'Anti-pulgas, Vermífugos', 180),
('08.888.888/0001-08', 'Pet Mania Store', 'vendas@petmania.com', 'Roupas, Coleiras', 220),
('09.999.999/0001-09', 'Alegria dos Pets', 'comercial@alegriapet.com', 'Petiscos, Limpeza', 170),
('10.000.000/0001-10', 'Bicho Feliz Ltda', 'bichofeliz@email.com', 'Caminhas, Casinhas', 300),
('11.111.111/0001-11', 'Vida Pet Shop', 'vidapet@email.com', 'Shampoos, Condicionadores', 250),
('12.222.222/0001-12', 'Paraíso dos Pets', 'paraiso@email.com', 'Transportadores, Bebedouros', 180),
('13.333.333/0001-13', 'Reino Animal Online', 'reinoanimal@email.com', 'Ração Natural, Orgânicos', 220),
('14.444.444/0001-14', 'Meu Amigo Pet', 'meuamigo@email.com', 'Escovas, Cortadores', 150),
('15.555.555/0001-15', 'Patas Douradas', 'patasdouradas@email.com', 'Acessórios de Luxo', 100),
('16.666.666/0001-16', 'Bichinho Saudável', 'bichosaudavel@email.com', 'Suplementos Alimentares', 200),
('17.777.777/0001-17', 'Conforto Pet Store', 'confortopet@email.com', 'Colchões, Almofadas', 130),
('18.888.888/0001-18', 'Essência Animal', 'essenciaanimal@email.com', 'Perfumes, Sabonetes', 90),
('19.999.999/0001-19', 'Peludinhos Felizes', 'peludinhos@email.com', 'Brinquedos Educativos', 160);

USE ProjetoCaoleta;

INSERT INTO Coleta_Usuario (Coleta_idColeta, Usuario_CPF) VALUES
(1, '111.111.111-11'),
(2, '222.222.222-22'),
(3, '333.333.333-33'),
(4, '444.444.444-44'),
(5, '555.555.555-55'),
(6, '666.666.666-66'),
(7, '777.777.777-77'),
(8, '888.888.888-88'),
(9, '999.999.999-99'),
(10, '100.100.100-00'),
(11, '111.111.111-11'), -- Reutilizando CPF
(12, '222.222.222-22'), -- Reutilizando CPF
(13, '333.333.333-33'),
(14, '444.444.444-44'),
(15, '555.555.555-55'),
(16, '666.666.666-66'),
(17, '777.777.777-77'),
(18, '888.888.888-88'),
(19, '999.999.999-99'),
(20, '100.100.100-00');

USE ProjetoCaoleta;

INSERT INTO Pontos_Usuario (Pontos_idPontos, Usuario_CPF) VALUES
(101, '111.111.111-11'),
(102, '222.222.222-22'),
(103, '333.333.333-33'),
(104, '444.444.444-44'),
(105, '555.555.555-55'),
(106, '666.666.666-66'),
(107, '777.777.777-77'),
(108, '888.888.888-88'),
(109, '999.999.999-99'),
(110, '100.100.100-00'),
(111, '112.112.112-12'),
(112, '131.131.131-31'),
(113, '141.141.141-41'),
(114, '151.151.151-51'),
(115, '161.161.161-61'),
(116, '171.171.171-71'),
(117, '181.181.181-81'),
(118, '191.191.191-91'),
(119, '200.200.200-00'),
(120, '211.211.211-11');

USE ProjetoCaoleta;

INSERT INTO Pontos_Coleta (Pontos_idPontos, Coleta_idColeta) VALUES
(101, 1),
(102, 2),
(103, 3),
(104, 4),
(105, 5),
(106, 6),
(107, 7),
(108, 8),
(109, 9),
(110, 10),
(111, 11),
(112, 12),
(113, 13),
(114, 14),
(115, 15),
(116, 16),
(117, 17),
(118, 18),
(119, 19),
(120, 20);

USE ProjetoCaoleta;

INSERT INTO Troca_Usuario (Troca_idTroca, Usuario_CPF) VALUES
(1, '111.111.111-11'),
(2, '222.222.222-22'),
(3, '333.333.333-33'),
(4, '444.444.444-44'),
(5, '555.555.555-55'),
(6, '666.666.666-66'),
(7, '777.777.777-77'),
(8, '888.888.888-88'),
(9, '999.999.999-99'),
(10, '100.100.100-00'),
(11, '112.112.112-12'),
(12, '131.131.131-31'),
(13, '141.141.141-41'),
(14, '151.151.151-51'),
(15, '161.161.161-61'),
(16, '171.171.171-71'),
(17, '181.181.181-81'),
(18, '191.191.191-91'),
(19, '200.200.200-00'),
(20, '211.211.211-11');

USE ProjetoCaoleta;

INSERT INTO Empresa_Produto (Empresa_CNPJ, Produto_idProduto) VALUES
('00.000.000/0001-01', 1),
('01.111.111/0001-01', 2),
('02.222.222/0001-02', 3),
('03.333.333/0001-03', 4),
('04.444.444/0001-04', 5),
('05.555.555/0001-05', 6),
('06.666.666/0001-06', 7),
('07.777.777/0001-07', 8),
('08.888.888/0001-08', 9),
('09.999.999/0001-09', 10),
('10.000.000/0001-10', 11),
('11.111.111/0001-11', 12),
('12.222.222/0001-12', 13),
('13.333.333/0001-13', 14),
('14.444.444/0001-14', 15),
('15.555.555/0001-15', 16),
('16.666.666/0001-16', 17),
('17.777.777/0001-17', 18),
('18.888.888/0001-18', 19),
('19.999.999/0001-19', 20);