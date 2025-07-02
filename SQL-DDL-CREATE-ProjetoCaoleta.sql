-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ProjetoCaoleta
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ProjetoCaoleta
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ProjetoCaoleta` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `ProjetoCaoleta` ;

-- -----------------------------------------------------
-- Table `ProjetoCaoleta`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProjetoCaoleta`.`Usuario` (
  `CPF` VARCHAR(14) NOT NULL,
  `nome` VARCHAR(60) NOT NULL,
  `nascimento` DATE NOT NULL,
  `genero` VARCHAR(15) NOT NULL,
  `nomeSocial` VARCHAR(60) NULL,
  `email` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`CPF`),
  UNIQUE INDEX `CPF_UNIQUE` (`CPF` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProjetoCaoleta`.`Telefone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProjetoCaoleta`.`Telefone` (
  `idTelefone` INT NOT NULL AUTO_INCREMENT,
  `numero` VARCHAR(15) NOT NULL,
  `Usuario_CPF` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`idTelefone`),
  INDEX `fk_Telefone_Usuario_idx` (`Usuario_CPF` ASC) VISIBLE,
  CONSTRAINT `fk_Telefone_Usuario`
    FOREIGN KEY (`Usuario_CPF`)
    REFERENCES `ProjetoCaoleta`.`Usuario` (`CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProjetoCaoleta`.`Endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProjetoCaoleta`.`Endereco` (
  `logradouro` INT NOT NULL,
  `numero` INT NOT NULL,
  `bairro` VARCHAR(45) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `UF` CHAR(2) NOT NULL,
  `CEP` VARCHAR(9) NOT NULL,
  `complemento` VARCHAR(45) NULL,
  `Coleta_idColeta` INT NOT NULL,
  PRIMARY KEY (`Coleta_idColeta`),
  CONSTRAINT `fk_Endereco_Coleta1`
    FOREIGN KEY (`Coleta_idColeta`)
    REFERENCES `ProjetoCaoleta`.`Coleta` (`idColeta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProjetoCaoleta`.`Pet`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProjetoCaoleta`.`Pet` (
  `idPet` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(60) NOT NULL,
  `idade` INT NOT NULL,
  `especie` VARCHAR(15) NOT NULL,
  `Usuario_CPF` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`idPet`),
  INDEX `fk_Pet_Usuario1_idx` (`Usuario_CPF` ASC) VISIBLE,
  CONSTRAINT `fk_Pet_Usuario1`
    FOREIGN KEY (`Usuario_CPF`)
    REFERENCES `ProjetoCaoleta`.`Usuario` (`CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProjetoCaoleta`.`Coleta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProjetoCaoleta`.`Coleta` (
  `idColeta` INT NOT NULL AUTO_INCREMENT,
  `pontosGanhos` INT ZEROFILL NOT NULL,
  `dataHora` DATETIME NOT NULL,
  PRIMARY KEY (`idColeta`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProjetoCaoleta`.`Coleta_Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProjetoCaoleta`.`Coleta_Usuario` (
  `Coleta_idColeta` INT NOT NULL,
  `Usuario_CPF` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`Coleta_idColeta`, `Usuario_CPF`),
  INDEX `fk_Coleta_has_Usuario_Usuario1_idx` (`Usuario_CPF` ASC) VISIBLE,
  INDEX `fk_Coleta_has_Usuario_Coleta1_idx` (`Coleta_idColeta` ASC) VISIBLE,
  CONSTRAINT `fk_Coleta_has_Usuario_Coleta1`
    FOREIGN KEY (`Coleta_idColeta`)
    REFERENCES `ProjetoCaoleta`.`Coleta` (`idColeta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Coleta_has_Usuario_Usuario1`
    FOREIGN KEY (`Usuario_CPF`)
    REFERENCES `ProjetoCaoleta`.`Usuario` (`CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProjetoCaoleta`.`Endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProjetoCaoleta`.`Endereco` (
  `logradouro` INT NOT NULL,
  `numero` INT NOT NULL,
  `bairro` VARCHAR(45) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `UF` CHAR(2) NOT NULL,
  `CEP` VARCHAR(9) NOT NULL,
  `complemento` VARCHAR(45) NULL,
  `Coleta_idColeta` INT NOT NULL,
  PRIMARY KEY (`Coleta_idColeta`),
  CONSTRAINT `fk_Endereco_Coleta1`
    FOREIGN KEY (`Coleta_idColeta`)
    REFERENCES `ProjetoCaoleta`.`Coleta` (`idColeta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProjetoCaoleta`.`Pontos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProjetoCaoleta`.`Pontos` (
  `idPontos` INT NOT NULL,
  `qtdPontos` INT NOT NULL,
  PRIMARY KEY (`idPontos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProjetoCaoleta`.`Pontos_Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProjetoCaoleta`.`Pontos_Usuario` (
  `Pontos_idPontos` INT NOT NULL,
  `Usuario_CPF` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`Pontos_idPontos`, `Usuario_CPF`),
  INDEX `fk_Pontos_has_Usuario_Usuario1_idx` (`Usuario_CPF` ASC) VISIBLE,
  INDEX `fk_Pontos_has_Usuario_Pontos1_idx` (`Pontos_idPontos` ASC) VISIBLE,
  CONSTRAINT `fk_Pontos_has_Usuario_Pontos1`
    FOREIGN KEY (`Pontos_idPontos`)
    REFERENCES `ProjetoCaoleta`.`Pontos` (`idPontos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pontos_has_Usuario_Usuario1`
    FOREIGN KEY (`Usuario_CPF`)
    REFERENCES `ProjetoCaoleta`.`Usuario` (`CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProjetoCaoleta`.`Pontos_Coleta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProjetoCaoleta`.`Pontos_Coleta` (
  `Pontos_idPontos` INT NOT NULL,
  `Coleta_idColeta` INT NOT NULL,
  PRIMARY KEY (`Pontos_idPontos`, `Coleta_idColeta`),
  INDEX `fk_Pontos_has_Coleta_Coleta1_idx` (`Coleta_idColeta` ASC) VISIBLE,
  INDEX `fk_Pontos_has_Coleta_Pontos1_idx` (`Pontos_idPontos` ASC) VISIBLE,
  CONSTRAINT `fk_Pontos_has_Coleta_Pontos1`
    FOREIGN KEY (`Pontos_idPontos`)
    REFERENCES `ProjetoCaoleta`.`Pontos` (`idPontos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pontos_has_Coleta_Coleta1`
    FOREIGN KEY (`Coleta_idColeta`)
    REFERENCES `ProjetoCaoleta`.`Coleta` (`idColeta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProjetoCaoleta`.`Troca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProjetoCaoleta`.`Troca` (
  `idTroca` INT NOT NULL AUTO_INCREMENT,
  `dataHora` DATETIME NOT NULL,
  `pontosGastos` INT NOT NULL,
  PRIMARY KEY (`idTroca`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProjetoCaoleta`.`Troca_Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProjetoCaoleta`.`Troca_Usuario` (
  `Troca_idTroca` INT NOT NULL,
  `Usuario_CPF` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`Troca_idTroca`, `Usuario_CPF`),
  INDEX `fk_Troca_has_Usuario_Usuario1_idx` (`Usuario_CPF` ASC) VISIBLE,
  INDEX `fk_Troca_has_Usuario_Troca1_idx` (`Troca_idTroca` ASC) VISIBLE,
  CONSTRAINT `fk_Troca_has_Usuario_Troca1`
    FOREIGN KEY (`Troca_idTroca`)
    REFERENCES `ProjetoCaoleta`.`Troca` (`idTroca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Troca_has_Usuario_Usuario1`
    FOREIGN KEY (`Usuario_CPF`)
    REFERENCES `ProjetoCaoleta`.`Usuario` (`CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProjetoCaoleta`.`Produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProjetoCaoleta`.`Produto` (
  `idProduto` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(60) NOT NULL,
  `tipo` VARCHAR(60) NOT NULL,
  `quantidade` INT NOT NULL,
  `valorPontos` INT NOT NULL,
  `Troca_idTroca` INT NOT NULL,
  PRIMARY KEY (`idProduto`),
  INDEX `fk_Produto_Troca1_idx` (`Troca_idTroca` ASC) VISIBLE,
  CONSTRAINT `fk_Produto_Troca1`
    FOREIGN KEY (`Troca_idTroca`)
    REFERENCES `ProjetoCaoleta`.`Troca` (`idTroca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProjetoCaoleta`.`Empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProjetoCaoleta`.`Empresa` (
  `CNPJ` VARCHAR(18) NOT NULL,
  `nome` VARCHAR(60) NOT NULL,
  `email` VARCHAR(60) NOT NULL,
  `produtosDisponibilizados` VARCHAR(60) NOT NULL,
  `qtdProdutosDisponibilizados` INT NOT NULL,
  PRIMARY KEY (`CNPJ`),
  UNIQUE INDEX `CNPJ_UNIQUE` (`CNPJ` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProjetoCaoleta`.`Empresa_Produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProjetoCaoleta`.`Empresa_Produto` (
  `Empresa_CNPJ` VARCHAR(18) NOT NULL,
  `Produto_idProduto` INT NOT NULL,
  PRIMARY KEY (`Empresa_CNPJ`, `Produto_idProduto`),
  INDEX `fk_Empresa_has_Produto_Produto1_idx` (`Produto_idProduto` ASC) VISIBLE,
  INDEX `fk_Empresa_has_Produto_Empresa1_idx` (`Empresa_CNPJ` ASC) VISIBLE,
  CONSTRAINT `fk_Empresa_has_Produto_Empresa1`
    FOREIGN KEY (`Empresa_CNPJ`)
    REFERENCES `ProjetoCaoleta`.`Empresa` (`CNPJ`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Empresa_has_Produto_Produto1`
    FOREIGN KEY (`Produto_idProduto`)
    REFERENCES `ProjetoCaoleta`.`Produto` (`idProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


