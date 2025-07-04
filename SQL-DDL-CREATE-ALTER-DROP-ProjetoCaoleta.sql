ALTER TABLE Usuario
ADD COLUMN enderecoResidencial VARCHAR(100) NULL;

ALTER TABLE Usuario
DROP COLUMN nomeSocial;

ALTER TABLE Telefone
MODIFY COLUMN numero VARCHAR(20) NOT NULL;

ALTER TABLE Pet
ADD COLUMN raca VARCHAR(45) NULL;

ALTER TABLE Endereco
CHANGE COLUMN logradouro tipoLogradouro VARCHAR(45) NOT NULL;

ALTER TABLE Coleta
ALTER COLUMN pontosGanhos SET DEFAULT 0;

ALTER TABLE Troca
ADD COLUMN status VARCHAR(20) NOT NULL DEFAULT 'Pendente';

ALTER TABLE Empresa
DROP COLUMN qtdProdutosDisponibilizados;

ALTER TABLE Usuario
ADD CONSTRAINT UQ_Usuario_Email UNIQUE (email);

CREATE INDEX idx_Coleta_dataHora ON Coleta (dataHora);