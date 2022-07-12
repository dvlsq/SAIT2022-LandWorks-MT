CREATE TABLE IF NOT EXISTS `supplier` (
  `supplierid` INT NOT NULL,
  `suppliername` VARCHAR(100) NOT NULL,
  `contactperson` VARCHAR(100) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `city` VARCHAR(100) NOT NULL,
  `state` VARCHAR(100) NOT NULL,
  `zip` VARCHAR(100) NOT NULL,
  `country` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `contactnumber` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`supplierid`));