CREATE TABLE IF NOT EXISTS `items` (
  `itemid` INT NOT NULL,
  `categoryid` INT NOT NULL,
  `itemname` VARCHAR(100) NOT NULL,
  `description` VARCHAR(100) NOT NULL,
  `quantity` INT NOT NULL,
  `status` VARCHAR(100) NOT NULL,
  `unitcost` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`itemid`),
  INDEX `categoryid_fk_idx` (`categoryid` ASC) VISIBLE,
  CONSTRAINT `categoryid_fk`
    FOREIGN KEY (`categoryid`)
    REFERENCES `category` (`categoryid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);