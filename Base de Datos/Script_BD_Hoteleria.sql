-- MySQL Script generated by MySQL Workbench
-- Tue Sep 19 19:33:37 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema BD_Hoteleria
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema BD_Hoteleria
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `BD_Hoteleria` ;
USE `BD_Hoteleria` ;

-- -----------------------------------------------------
-- Table `BD_Hoteleria`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_Hoteleria`.`Cliente` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `nit_cliente` INT NOT NULL,
  `nombre_cliente` VARCHAR(50) NOT NULL,
  `apellido_cliente` VARCHAR(50) NOT NULL,
  `direccion_cliente` VARCHAR(45) NOT NULL,
  `ciudad_cliente` VARCHAR(45) NOT NULL,
  `pais_cliente` VARCHAR(45) NOT NULL,
  `telefono_cliente` INT(15) NOT NULL,
  `correo_cliente` VARCHAR(45) NULL,
  PRIMARY KEY (`id_cliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_Hoteleria`.`Tipo_Habitacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_Hoteleria`.`Tipo_Habitacion` (
  `id_tipo_habitacion` INT NOT NULL AUTO_INCREMENT,
  `nombre_tipo_habitacion` VARCHAR(50) NOT NULL,
  `costo_tipo_habitacion` FLOAT NOT NULL,
  `capacidad_tipo_habitacion` INT NOT NULL,
  `Descripcion_tipo_habitacion` VARCHAR(120) NULL,
  PRIMARY KEY (`id_tipo_habitacion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_Hoteleria`.`Habitacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_Hoteleria`.`Habitacion` (
  `id_habitacion` INT NOT NULL AUTO_INCREMENT,
  `id_tipo_habitacion` INT NOT NULL,
  `num_habitacion` INT(4) NOT NULL,
  `estatus_habitacion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_habitacion`),
  INDEX `FK_tipo_habitacion_idx` (`id_tipo_habitacion` ASC),
  CONSTRAINT `FK_tipo_habitacion`
    FOREIGN KEY (`id_tipo_habitacion`)
    REFERENCES `BD_Hoteleria`.`Tipo_Habitacion` (`id_tipo_habitacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_Hoteleria`.`Servicio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_Hoteleria`.`Servicio` (
  `id_servicio` INT NOT NULL AUTO_INCREMENT,
  `nombre_servicio` VARCHAR(50) NOT NULL,
  `id_tipo_habitacion` INT NOT NULL,
  `costo_servicio` FLOAT NOT NULL,
  `descripcion_servicio` VARCHAR(150) NULL,
  PRIMARY KEY (`id_servicio`),
  INDEX `FK_servicio_tipo_habitacion_idx` (`id_tipo_habitacion` ASC),
  CONSTRAINT `FK_servicio_tipo_habitacion`
    FOREIGN KEY (`id_tipo_habitacion`)
    REFERENCES `BD_Hoteleria`.`Tipo_Habitacion` (`id_tipo_habitacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_Hoteleria`.`Asignacion_Habitacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_Hoteleria`.`Asignacion_Habitacion` (
  `id_asignacion_habitacion` INT NOT NULL AUTO_INCREMENT,
  `id_cliente` INT NOT NULL,
  `id_habitacion` INT NOT NULL,
  `fecha_inicio` DATE NULL,
  `fecha_final` DATE NULL,
  PRIMARY KEY (`id_asignacion_habitacion`),
  INDEX `FK_asignacion_habitacion_cliente_idx` (`id_cliente` ASC),
  INDEX `FK_asignacion_habitacion_idx` (`id_habitacion` ASC),
  CONSTRAINT `FK_asignacion_cliente`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `BD_Hoteleria`.`Cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_asignacion_habitacion`
    FOREIGN KEY (`id_habitacion`)
    REFERENCES `BD_Hoteleria`.`Habitacion` (`id_habitacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_Hoteleria`.`Detalle_Asignacion_Servicio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_Hoteleria`.`Detalle_Asignacion_Servicio` (
  `id_asignacion_habitacion` INT NOT NULL,
  `id_servicio` INT NOT NULL,
  `dias_servicio` INT NOT NULL,
  PRIMARY KEY (`id_asignacion_habitacion`, `id_servicio`),
  INDEX `FK_detalle_servicio_idx` (`id_servicio` ASC),
  CONSTRAINT `FK_detalle_AS_asignacion`
    FOREIGN KEY (`id_asignacion_habitacion`)
    REFERENCES `BD_Hoteleria`.`Asignacion_Habitacion` (`id_asignacion_habitacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_detalle_AS_servicio`
    FOREIGN KEY (`id_servicio`)
    REFERENCES `BD_Hoteleria`.`Servicio` (`id_servicio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_Hoteleria`.`Reservacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_Hoteleria`.`Reservacion` (
  `id_reservacion` INT NOT NULL AUTO_INCREMENT,
  `id_cliente` INT NOT NULL,
  `id_habitacion` INT NOT NULL,
  `fecha_inicio_reservacion` DATE NOT NULL,
  `fecha_final_reservacion` DATE NOT NULL,
  `costo_reservacion` FLOAT NOT NULL,
  `estado_reserva` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_reservacion`),
  INDEX `FK_reservacion_cliente_idx` (`id_cliente` ASC),
  INDEX `FK_reservacion_habitacion_idx` (`id_habitacion` ASC),
  CONSTRAINT `FK_reservacion_cliente`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `BD_Hoteleria`.`Cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_reservacion_habitacion`
    FOREIGN KEY (`id_habitacion`)
    REFERENCES `BD_Hoteleria`.`Habitacion` (`id_habitacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_Hoteleria`.`Platillo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_Hoteleria`.`Platillo` (
  `id_platillo` INT NOT NULL AUTO_INCREMENT,
  `nombre_platillo` VARCHAR(45) NOT NULL,
  `descripcion_platillo` VARCHAR(200) NOT NULL,
  `costo_platillo` FLOAT NOT NULL,
  PRIMARY KEY (`id_platillo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_Hoteleria`.`Mesa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_Hoteleria`.`Mesa` (
  `id_mesa` INT NOT NULL AUTO_INCREMENT,
  `no_mesa` INT NOT NULL,
  `capacidad` INT NOT NULL,
  PRIMARY KEY (`id_mesa`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_Hoteleria`.`Pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_Hoteleria`.`Pedido` (
  `id_pedido` INT NOT NULL AUTO_INCREMENT,
  `id_cliente` INT NOT NULL,
  `id_mesa` INT NOT NULL,
  `fecha_pedido` DATE NOT NULL,
  PRIMARY KEY (`id_pedido`),
  INDEX `FK_pedido_cliente_idx` (`id_cliente` ASC),
  INDEX `FK_pedido_mesa_idx` (`id_mesa` ASC),
  CONSTRAINT `FK_pedido_cliente`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `BD_Hoteleria`.`Cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_pedido_mesa`
    FOREIGN KEY (`id_mesa`)
    REFERENCES `BD_Hoteleria`.`Mesa` (`id_mesa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_Hoteleria`.`Bebida`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_Hoteleria`.`Bebida` (
  `id_bebida` INT NOT NULL AUTO_INCREMENT,
  `nombre_bebida` VARCHAR(45) NOT NULL,
  `descripcion_bebida` VARCHAR(150) NULL,
  `costo_bebida` FLOAT NOT NULL,
  PRIMARY KEY (`id_bebida`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_Hoteleria`.`Detalle_Pedido_Platillo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_Hoteleria`.`Detalle_Pedido_Platillo` (
  `id_pedido` INT NOT NULL,
  `id_platillo` INT NOT NULL,
  `cantidad_platillo` INT NOT NULL,
  PRIMARY KEY (`id_pedido`, `id_platillo`),
  INDEX `FK_detalle_platillo_idx` (`id_platillo` ASC),
  CONSTRAINT `FK_detalle_PP_pedido`
    FOREIGN KEY (`id_pedido`)
    REFERENCES `BD_Hoteleria`.`Pedido` (`id_pedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_detalle_PP_platillo`
    FOREIGN KEY (`id_platillo`)
    REFERENCES `BD_Hoteleria`.`Platillo` (`id_platillo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_Hoteleria`.`Detalle_Pedido_Bebida`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_Hoteleria`.`Detalle_Pedido_Bebida` (
  `id_pedido` INT NOT NULL,
  `id_bebida` INT NOT NULL,
  `cantidad_bebida` INT NOT NULL,
  PRIMARY KEY (`id_pedido`, `id_bebida`),
  INDEX `FK_detalle_PB_bebida_idx` (`id_bebida` ASC),
  CONSTRAINT `FK_detalle_PB_pedido`
    FOREIGN KEY (`id_pedido`)
    REFERENCES `BD_Hoteleria`.`Pedido` (`id_pedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_detalle_PB_bebida`
    FOREIGN KEY (`id_bebida`)
    REFERENCES `BD_Hoteleria`.`Bebida` (`id_bebida`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_Hoteleria`.`Detalle_Reservacion_Servicio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_Hoteleria`.`Detalle_Reservacion_Servicio` (
  `id_reservacion` INT NOT NULL,
  `id_servicio` INT NOT NULL,
  PRIMARY KEY (`id_reservacion`, `id_servicio`),
  INDEX `FK_detalle_RS_servicio_idx` (`id_servicio` ASC),
  CONSTRAINT `FK_detalle_RS_reservacion`
    FOREIGN KEY (`id_reservacion`)
    REFERENCES `BD_Hoteleria`.`Reservacion` (`id_reservacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_detalle_RS_servicio`
    FOREIGN KEY (`id_servicio`)
    REFERENCES `BD_Hoteleria`.`Servicio` (`id_servicio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_Hoteleria`.`Mantenimiento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_Hoteleria`.`Mantenimiento` (
  `id_mantenimiento` INT NOT NULL AUTO_INCREMENT,
  `nombre_mantenimiento` VARCHAR(45) NOT NULL,
  `descripcion_mantenimiento` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`id_mantenimiento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_Hoteleria`.`Detalle_Mantenimiento_Habitacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_Hoteleria`.`Detalle_Mantenimiento_Habitacion` (
  `id_mantenimiento` INT NOT NULL,
  `id_habitacion` INT NOT NULL,
  `fecha_ultimo_mantenimiento` DATE NOT NULL,
  PRIMARY KEY (`id_mantenimiento`, `id_habitacion`),
  INDEX `FK_detalle_MH_habitacion_idx` (`id_habitacion` ASC),
  CONSTRAINT `FK_detalle_MH_mantenimiento`
    FOREIGN KEY (`id_mantenimiento`)
    REFERENCES `BD_Hoteleria`.`Mantenimiento` (`id_mantenimiento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_detalle_MH_habitacion`
    FOREIGN KEY (`id_habitacion`)
    REFERENCES `BD_Hoteleria`.`Habitacion` (`id_habitacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
