-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema mmd_acidentes
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mmd_acidentes
-- ----------------------------------------------------

DROP database if exists mmd_acidentes ;
CREATE SCHEMA IF NOT EXISTS `mmd_acidentes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `mmd_acidentes` ;

-- -----------------------------------------------------
-- Table `mmd_acidentes`.`dimtempo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_acidentes`.`dimtempo` (
  `idDimtempo` INT NOT NULL ,
  `data` DATE NOT NULL,
  `mes` INT NOT NULL,
  `dia` INT NOT NULL,
  `NomeDia` VARCHAR(9) NOT NULL,
  `NomeMes` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`idDimtempo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mmd_acidentes`.`Dim_causa_acidente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_acidentes`.`Dim_causa_acidente` (
  `ID_Gravidade` INT NOT NULL AUTO_INCREMENT,
  `nm_causa` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID_Gravidade`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mmd_acidentes`.`dim_estado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_acidentes`.`dim_estado` (
  `ID_estado` INT NOT NULL AUTO_INCREMENT,
  `UF` CHAR(2) NOT NULL,
  PRIMARY KEY (`ID_estado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mmd_acidentes`.`dim_tipo_acidente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_acidentes`.`dim_tipo_acidente` (
  `id_tipo_acidente` INT NOT NULL AUTO_INCREMENT,
  `nm_tipo_acidente` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_tipo_acidente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mmd_acidentes`.`dim_fase_dia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_acidentes`.`dim_fase_dia` (
  `id_fase_dia` INT NOT NULL AUTO_INCREMENT,
  `nm_fase_dia` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_fase_dia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mmd_acidentes`.`dim_cond_metereologica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_acidentes`.`dim_cond_metereologica` (
  `id_cond_metereologica` INT NOT NULL AUTO_INCREMENT,
  `nm_cond_metereologica` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_cond_metereologica`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mmd_acidentes`.`dim_tipo_pista`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_acidentes`.`dim_tipo_pista` (
  `id_tipo_pista` INT NOT NULL AUTO_INCREMENT,
  `nm_tipo_pista` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_tipo_pista`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mmd_acidentes`.`fato_acidente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_acidentes`.`fato_acidente` (
  `ID_Gravidade` INT NOT NULL,
  `idDimtempo` INT NOT NULL,
  `ID_estado` INT NOT NULL,
  `id_fase_dia` INT NOT NULL,
  `id_cond_metereologica` INT NOT NULL,
  `id_tipo_pista` INT NOT NULL,
  `id_tipo_acidente` INT NOT NULL,
  `Quantidade` INT NOT NULL,
  PRIMARY KEY (`ID_Gravidade`, `idDimtempo`, `ID_estado`, `id_fase_dia`, `id_cond_metereologica`, `id_tipo_pista`, `id_tipo_acidente`),
  INDEX `fk_fato_acidente_dimtempo1_idx` (`idDimtempo` ASC) VISIBLE,
  INDEX `fk_fato_acidente_dim_estado1_idx` (`ID_estado` ASC) VISIBLE,
  INDEX `fk_fato_acidente_dim_fase_dia1_idx` (`id_fase_dia` ASC) VISIBLE,
  INDEX `fk_fato_acidente_dim_cond_metereologica1_idx` (`id_cond_metereologica` ASC) VISIBLE,
  INDEX `fk_fato_acidente_dim_tipo_pista1_idx` (`id_tipo_pista` ASC) VISIBLE,
  INDEX `fk_fato_acidente_dim_tipo_acidente1_idx` (`id_tipo_acidente` ASC) VISIBLE,
  CONSTRAINT `fk_fato_acidente_Dim_causa_acidente`
    FOREIGN KEY (`ID_Gravidade`)
    REFERENCES `mmd_acidentes`.`Dim_causa_acidente` (`ID_Gravidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_fato_acidente_dimtempo1`
    FOREIGN KEY (`idDimtempo`)
    REFERENCES `mmd_acidentes`.`dimtempo` (`idDimtempo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_fato_acidente_dim_estado1`
    FOREIGN KEY (`ID_estado`)
    REFERENCES `mmd_acidentes`.`dim_estado` (`ID_estado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_fato_acidente_dim_fase_dia1`
    FOREIGN KEY (`id_fase_dia`)
    REFERENCES `mmd_acidentes`.`dim_fase_dia` (`id_fase_dia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_fato_acidente_dim_cond_metereologica1`
    FOREIGN KEY (`id_cond_metereologica`)
    REFERENCES `mmd_acidentes`.`dim_cond_metereologica` (`id_cond_metereologica`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_fato_acidente_dim_tipo_pista1`
    FOREIGN KEY (`id_tipo_pista`)
    REFERENCES `mmd_acidentes`.`dim_tipo_pista` (`id_tipo_pista`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_fato_acidente_dim_tipo_acidente1`
    FOREIGN KEY (`id_tipo_acidente`)
    REFERENCES `mmd_acidentes`.`dim_tipo_acidente` (`id_tipo_acidente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
