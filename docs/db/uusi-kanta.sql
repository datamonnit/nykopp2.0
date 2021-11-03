-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema nykopp2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema nykopp2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `nykopp2` DEFAULT CHARACTER SET latin1 ;
USE `nykopp2` ;

-- -----------------------------------------------------
-- Table `nykopp2`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nykopp2`.`category` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(200) CHARACTER SET 'latin1' NOT NULL DEFAULT '0',
  `sort` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
AUTO_INCREMENT = 33
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_swedish_ci;


-- -----------------------------------------------------
-- Table `nykopp2`.`technic`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nykopp2`.`technic` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(500) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`))
ENGINE = MyISAM
AUTO_INCREMENT = 57
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_swedish_ci;


-- -----------------------------------------------------
-- Table `nykopp2`.`images`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nykopp2`.`images` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL DEFAULT NULL,
  `dzi_file` VARCHAR(100) NULL DEFAULT NULL,
  `dzi` INT(1) NULL DEFAULT 0,
  `category` VARCHAR(100) NULL DEFAULT NULL,
  `size` VARCHAR(100) NULL DEFAULT NULL,
  `technic` VARCHAR(100) NULL DEFAULT NULL,
  `year` INT(4) NULL DEFAULT NULL,
  `filelocation` VARCHAR(500) NULL DEFAULT NULL,
  `sort` INT(11) NULL DEFAULT NULL,
  `technic_id` INT(11) NOT NULL,
  `category_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_images_technic_idx` (`technic_id` ASC),
  INDEX `fk_images_category1_idx` (`category_id` ASC),
  CONSTRAINT `fk_images_technic`
    FOREIGN KEY (`technic_id`)
    REFERENCES `nykopp2`.`technic` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_images_category1`
    FOREIGN KEY (`category_id`)
    REFERENCES `nykopp2`.`category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 123461
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_swedish_ci;


-- -----------------------------------------------------
-- Table `nykopp2`.`music`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nykopp2`.`music` (
  `mus_id` INT(11) NOT NULL AUTO_INCREMENT,
  `mus_title` VARCHAR(50) CHARACTER SET 'utf8' NOT NULL,
  `mus_file` VARCHAR(1565) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL,
  `mus_desc` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL DEFAULT NULL,
  PRIMARY KEY (`mus_id`))
ENGINE = MyISAM
AUTO_INCREMENT = 16
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_swedish_ci;


-- -----------------------------------------------------
-- Table `nykopp2`.`news`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nykopp2`.`news` (
  `post_id` INT(11) NOT NULL AUTO_INCREMENT,
  `post_title` VARCHAR(20) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL,
  `post_date` DATE NOT NULL,
  `post_content` VARCHAR(2555) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL,
  `expdate` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`post_id`))
ENGINE = MyISAM
AUTO_INCREMENT = 62
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_swedish_ci;


-- -----------------------------------------------------
-- Table `nykopp2`.`poems`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nykopp2`.`poems` (
  `poem_id` INT(11) NOT NULL AUTO_INCREMENT,
  `poem_title` VARCHAR(255) CHARACTER SET 'latin1' NOT NULL,
  `poem_file` VARCHAR(255) CHARACTER SET 'latin1' NOT NULL,
  PRIMARY KEY (`poem_id`))
ENGINE = MyISAM
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_swedish_ci;


-- -----------------------------------------------------
-- Table `nykopp2`.`posts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nykopp2`.`posts` (
  `post_id` INT(11) NOT NULL AUTO_INCREMENT,
  `post_title` VARCHAR(20) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL,
  `post_date` DATE NOT NULL,
  `post_content` VARCHAR(1000) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL,
  `post_link1` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL DEFAULT NULL,
  `post_link2` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL DEFAULT NULL,
  `expdate` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`post_id`))
ENGINE = MyISAM
AUTO_INCREMENT = 56
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_swedish_ci;


-- -----------------------------------------------------
-- Table `nykopp2`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nykopp2`.`users` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL DEFAULT '0',
  `password` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`))
ENGINE = MyISAM
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_swedish_ci;


-- -----------------------------------------------------
-- Table `nykopp2`.`videos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nykopp2`.`videos` (
  `video_id` INT(11) NOT NULL AUTO_INCREMENT,
  `video_title` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL,
  `video_link` VARCHAR(15) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL,
  `video_desc` VARCHAR(150) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL DEFAULT NULL,
  `video_thumb` VARCHAR(500) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL DEFAULT NULL,
  PRIMARY KEY (`video_id`))
ENGINE = MyISAM
AUTO_INCREMENT = 38
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_swedish_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
