USE ProjetoCaoleta;

-- UPDATE

UPDATE Usuario
SET email = 'ana.silva.novo@email.com'
WHERE CPF = '111.111.111-11';

UPDATE Telefone
SET numero = '11999999999'
WHERE Usuario_CPF = '111.111.111-11' AND numero = '11987654321';

UPDATE Pet
SET nome = 'Maximus', idade = 4
WHERE idPet = 1;

UPDATE Coleta
SET pontosGanhos = 250
WHERE idColeta = 2;

UPDATE Coleta
SET pontosGanhos = 250
WHERE idColeta = 2;

UPDATE Pontos
SET qtdPontos = 550
WHERE idPontos = 101;

UPDATE Troca
SET pontosGastos = 110
WHERE idTroca = 1;

UPDATE Produto
SET quantidade = 2
WHERE idProduto = 1;

UPDATE Empresa
SET email = 'novo.contato@petshoplegal.com'
WHERE CNPJ = '00.000.000/0001-01';

UPDATE Usuario
SET genero = 'Não Binário'
WHERE CPF = '333.333.333-33';

-- DELETE

DELETE FROM Telefone
WHERE idTelefone = 1;

DELETE FROM Pet
WHERE idPet = 2;

DELETE FROM Coleta_Usuario
WHERE Coleta_idColeta = 1 AND Usuario_CPF = '111.111.111-11';

DELETE FROM Pontos_Usuario
WHERE Pontos_idPontos = 101 AND Usuario_CPF = '111.111.111-11';

DELETE FROM Pontos_Coleta
WHERE Pontos_idPontos = 101 AND Coleta_idColeta = 1;

DELETE FROM Produto
WHERE idProduto = 1;

DELETE FROM Endereco
WHERE Coleta_idColeta = 1;

DELETE FROM Telefone
WHERE numero = '21998765432';

DELETE FROM Produto
WHERE nome = 'Brinquedo Mordedor';

DELETE FROM Pet
WHERE especie = 'Gato';