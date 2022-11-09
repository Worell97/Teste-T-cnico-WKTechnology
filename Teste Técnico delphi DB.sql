-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `TesteTecnicoDelphi` DEFAULT CHARACTER SET utf8 ;
USE `TesteTecnicoDelphi` ;

-- -----------------------------------------------------
-- Table `TesteTecnicoDelphi`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`clientes` (
  `codigo` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `cidade` VARCHAR(45) NULL,
  `uf` VARCHAR(45) NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TesteTecnicoDelphi`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`produtos` (
  `codigo` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NOT NULL,
  `precoVenda` DOUBLE NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB
COMMENT = '	';


-- -----------------------------------------------------
-- Table `TesteTecnicoDelphi`.`pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`pedidos` (
  `numero` INT NOT NULL AUTO_INCREMENT,
  `dataEmissao` DATETIME NOT NULL,
  `codCliente` INT NULL,
  `valorTotal` DOUBLE NULL,
  PRIMARY KEY (`numero`),
  INDEX `codCliente_idx` (`codCliente` ASC) VISIBLE,
  CONSTRAINT `codCliente`
    FOREIGN KEY (`codCliente`)
    REFERENCES `mydb`.`clientes` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TesteTecnicoDelphi`.`pedidos_produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`pedidos_produtos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `pedido` INT NOT NULL,
  `codProduto` INT NOT NULL,
  `quantidade` INT NOT NULL,
  `vlrUnitario` DOUBLE NOT NULL,
  `vlrTotal` DOUBLE NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `pedido_idx` (`pedido` ASC) VISIBLE,
  INDEX `produto_idx` (`codProduto` ASC) VISIBLE,
  CONSTRAINT `pedido`
    FOREIGN KEY (`pedido`)
    REFERENCES `mydb`.`pedidos` (`numero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `produto`
    FOREIGN KEY (`codProduto`)
    REFERENCES `mydb`.`produtos` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `TesteTecnicoDelphi`.`clientes`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`clientes` (`codigo`, `nome`, `cidade`, `uf`) VALUES (1, 'João', 'Cascavel', 'PR');
INSERT INTO `mydb`.`clientes` (`codigo`, `nome`, `cidade`, `uf`) VALUES (2, 'Maria', 'Cascavel', 'PR');
INSERT INTO `mydb`.`clientes` (`codigo`, `nome`, `cidade`, `uf`) VALUES (3, 'Gustavo', 'Londrina', 'PR');
INSERT INTO `mydb`.`clientes` (`codigo`, `nome`, `cidade`, `uf`) VALUES (4, 'Santiago', 'Maringa', 'PR');
INSERT INTO `mydb`.`clientes` (`codigo`, `nome`, `cidade`, `uf`) VALUES (5, 'Silva', 'Toledo', 'PR');
INSERT INTO `mydb`.`clientes` (`codigo`, `nome`, `cidade`, `uf`) VALUES (6, 'Antonio', 'Curitiba', 'PR');
INSERT INTO `mydb`.`clientes` (`codigo`, `nome`, `cidade`, `uf`) VALUES (7, 'Augusto', 'Florianópolis', 'SC');
INSERT INTO `mydb`.`clientes` (`codigo`, `nome`, `cidade`, `uf`) VALUES (8, 'Bruna', 'Joinvile', 'SC');
INSERT INTO `mydb`.`clientes` (`codigo`, `nome`, `cidade`, `uf`) VALUES (9, 'Gabrieli', 'Itapoá', 'SC');
INSERT INTO `mydb`.`clientes` (`codigo`, `nome`, `cidade`, `uf`) VALUES (10, 'Julia', 'Itapema', 'SC');
INSERT INTO `mydb`.`clientes` (`codigo`, `nome`, `cidade`, `uf`) VALUES (11, 'Mateus', 'Cascavel', 'PR');
INSERT INTO `mydb`.`clientes` (`codigo`, `nome`, `cidade`, `uf`) VALUES (12, 'Thais', 'São Paulo', 'SP');
INSERT INTO `mydb`.`clientes` (`codigo`, `nome`, `cidade`, `uf`) VALUES (13, 'Renan', 'Rio de janeiro', 'RJ');
INSERT INTO `mydb`.`clientes` (`codigo`, `nome`, `cidade`, `uf`) VALUES (14, 'Marta', 'São miguel do Oeste', 'SC');
INSERT INTO `mydb`.`clientes` (`codigo`, `nome`, `cidade`, `uf`) VALUES (15, 'Cleiton', 'Paraiba', 'CE');
INSERT INTO `mydb`.`clientes` (`codigo`, `nome`, `cidade`, `uf`) VALUES (16, 'Sidnei', 'Araguaina', 'TO');
INSERT INTO `mydb`.`clientes` (`codigo`, `nome`, `cidade`, `uf`) VALUES (17, 'Salete', 'Foz do Iguaçu', 'PR');
INSERT INTO `mydb`.`clientes` (`codigo`, `nome`, `cidade`, `uf`) VALUES (18, 'Andre', 'Cascavel', 'PR');
INSERT INTO `mydb`.`clientes` (`codigo`, `nome`, `cidade`, `uf`) VALUES (19, 'Rodrigo', 'Cascavel', 'PR');
INSERT INTO `mydb`.`clientes` (`codigo`, `nome`, `cidade`, `uf`) VALUES (20, 'Jorge', 'Cascavel', 'PR');

COMMIT;


-- -----------------------------------------------------
-- Data for table `TesteTecnicoDelphi`.`produtos`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`produtos` (`codigo`, `descricao`, `precoVenda`) VALUES (1, 'Pão', 0.5);
INSERT INTO `mydb`.`produtos` (`codigo`, `descricao`, `precoVenda`) VALUES (2, 'Leite', 4.99);
INSERT INTO `mydb`.`produtos` (`codigo`, `descricao`, `precoVenda`) VALUES (3, 'Ovos', 15.00);
INSERT INTO `mydb`.`produtos` (`codigo`, `descricao`, `precoVenda`) VALUES (4, 'Farinha', 7.00);
INSERT INTO `mydb`.`produtos` (`codigo`, `descricao`, `precoVenda`) VALUES (5, 'Banana', 3.99);
INSERT INTO `mydb`.`produtos` (`codigo`, `descricao`, `precoVenda`) VALUES (6, 'Maça', 5.99);
INSERT INTO `mydb`.`produtos` (`codigo`, `descricao`, `precoVenda`) VALUES (7, 'Oleo', 8.59);
INSERT INTO `mydb`.`produtos` (`codigo`, `descricao`, `precoVenda`) VALUES (8, 'Detergente', 2.69);
INSERT INTO `mydb`.`produtos` (`codigo`, `descricao`, `precoVenda`) VALUES (9, 'Macarrão', 3.59);
INSERT INTO `mydb`.`produtos` (`codigo`, `descricao`, `precoVenda`) VALUES (10, 'Margarina', 5.59);
INSERT INTO `mydb`.`produtos` (`codigo`, `descricao`, `precoVenda`) VALUES (11, 'Sal', 3.69);
INSERT INTO `mydb`.`produtos` (`codigo`, `descricao`, `precoVenda`) VALUES (12, 'Açucar', 7.49);
INSERT INTO `mydb`.`produtos` (`codigo`, `descricao`, `precoVenda`) VALUES (13, 'Sabão em pó', 12.89);
INSERT INTO `mydb`.`produtos` (`codigo`, `descricao`, `precoVenda`) VALUES (14, 'Amaciante', 8.99);
INSERT INTO `mydb`.`produtos` (`codigo`, `descricao`, `precoVenda`) VALUES (15, 'Alface', 0.89);
INSERT INTO `mydb`.`produtos` (`codigo`, `descricao`, `precoVenda`) VALUES (16, 'Tomate', 0.79);
INSERT INTO `mydb`.`produtos` (`codigo`, `descricao`, `precoVenda`) VALUES (17, 'Cenoura', 1.79);
INSERT INTO `mydb`.`produtos` (`codigo`, `descricao`, `precoVenda`) VALUES (18, 'Beterraba', 2.99);
INSERT INTO `mydb`.`produtos` (`codigo`, `descricao`, `precoVenda`) VALUES (19, 'Batata', 0.79);
INSERT INTO `mydb`.`produtos` (`codigo`, `descricao`, `precoVenda`) VALUES (20, 'Uvas', 8.99);

COMMIT;

