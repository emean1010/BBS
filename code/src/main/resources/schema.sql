DROP DATABASE IF EXISTS ssm;
CREATE DATABASE ssm CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE ssm;
CREATE TABLE todo
(
    `id`      INT          NOT NULL AUTO_INCREMENT,
    `content`   VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`)
);


CREATE TABLE `ssm`.`topic` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `content` VARCHAR(1000) NOT NULL,
  `userId` INT NOT NULL,
  `boardId` INT NOT NULL,
  `createdTime` INT NOT NULL,
  `updatedTime` INT NOT NULL,
  PRIMARY KEY (`id`));


CREATE TABLE `ssm`.`user` (
`id` INT NOT NULL AUTO_INCREMENT,
`username` VARCHAR(45) NOT NULL,
`password` VARCHAR(45) NOT NULL,
`avatar` VARCHAR(100),
`signature` VARCHAR(100),
`mail` VARCHAR(45),
`role` ENUM('normal', 'admin', 'guest') NOT NULL,
`createdTime` INT NOT NULL,
`updatedTime` INT NOT NULL,
PRIMARY KEY (`id`));


CREATE TABLE `ssm`.`board` (
`id` INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR(100) NOT NULL,
PRIMARY KEY (`id`));


CREATE TABLE `topicComment` (
`id` INT NOT NULL AUTO_INCREMENT,
`content` varchar(45) DEFAULT NULL,
`userId` INT NOT NULL,
`topicId` INT NOT NULL,
`createdTime` INT NOT NULL,
`updatedTime` INT NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

