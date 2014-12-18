use webprogdb60132273;
use webprogdb60132337;
show tables;
select * from users;
select * from products;
select * from baskets;
create database webprogdb60132273;
CREATE TABLE `webprogdb60132337`.`users` (
  `id` VARCHAR(10) NOT NULL,
  `password` VARCHAR(45) NULL,
  `name` VARCHAR(45) NULL,
  `ssn` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `mobile` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
CREATE TABLE `webprogdb60132273`.`baskets` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` VARCHAR(45) NULL,
  `product_id` INT NULL,
  `amount` INT NULL,
  PRIMARY KEY (`id`));
INSERT INTO `products` (`name`,`price`,`in_stock`) VALUES ('1',20000,30);
INSERT INTO `products` (`name`,`price`,`in_stock`) VALUES ('2',30000,30);
INSERT INTO `products` (`name`,`price`,`in_stock`) VALUES ('3',40000,30);
INSERT INTO `products` (`name`,`price`,`in_stock`) VALUES ('4',50000,33);
INSERT INTO `products` (`name`,`price`,`in_stock`) VALUES ('4',60000,33);

select * from users;
select * from products where id = 2;
insert into baskets(user_id, product_id, amount) values(1,1,1);