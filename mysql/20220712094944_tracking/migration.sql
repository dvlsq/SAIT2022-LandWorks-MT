CREATE TABLE IF NOT EXISTS `tracking` (
  `trackingid` INT NOT NULL,
  `userid` INT NOT NULL,
  `supplierid` INT NOT NULL,
  `companyid` INT NOT NULL,
  `itemid` INT NOT NULL,
  `trackingdate` DATETIME NOT NULL,
  `releaseddatetime` DATETIME NOT NULL,
  `quantity` INT NOT NULL,
  `price` DECIMAL(10,2) NOT NULL,
  `notes` VARCHAR(100) NULL,
  PRIMARY KEY (`trackingid`),
  INDEX `userid_fk_idx` (`userid` ASC) VISIBLE,
  INDEX `supplierid_fk_idx` (`supplierid` ASC) VISIBLE,
  INDEX `companyid_fk_idx` (`companyid` ASC) VISIBLE,
  INDEX `itemid_fk_idx` (`itemid` ASC) VISIBLE,
  CONSTRAINT `userid_fk`
    FOREIGN KEY (`userid`)
    REFERENCES `users` (`userid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `supplierid_fk`
    FOREIGN KEY (`supplierid`)
    REFERENCES `supplier` (`supplierid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `companyid_fk`
    FOREIGN KEY (`companyid`)
    REFERENCES `company` (`companyid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `itemid_fk`
    FOREIGN KEY (`itemid`)
    REFERENCES `items` (`itemid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);