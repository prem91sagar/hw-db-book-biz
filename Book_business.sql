DROP DATABASE IF EXISTS `book`;
CREATE DATABASE IF NOT EXISTS `book`;
USE `book`;

CREATE TABLE `Publisher` (
	`PublisherID` int (10) NOT NULL AUTO_INCREMENT,
	`Name` varchar (50) NOT NULL,
    `Contact` int (20) NOT NULL,
    `Address` varchar (50) NOT NULL,
    PRIMARY KEY (`PublisherID`),
    INDEX `PublisherID` (`PublisherID` ASC)
    
    ) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;
    CREATE TABLE `Author` (
	`AuthorID` int (10)   NOT NULL AUTO_INCREMENT,
    `Name` varchar (50) NOT NULL,
    `Contact` int (20) NOT NULL,
    PRIMARY KEY (`AuthorID`),
    INDEX `AuthorID` (`AuthorID` ASC)
    ) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;
    CREATE TABLE `Editor` (
	`EditorID` int (10) NOT NULL AUTO_INCREMENT,
    `Name` varchar (50) NOT NULL,
    `Contact` int (20) NOT NULL,
	`Address` varchar (50) NOT NULL,
    PRIMARY KEY (`EditorID`),
    INDEX `EditorID` (`EditorID` ASC)
    ) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `Book` (
	`ISBN` varchar (13) NOT NULL ,
    `Title` varchar (50) NOT NULL,
    `Price` int (10) NOT NULL,
    `AuthorID` int (50) NOT NULL,
    `Royalty` int (50) NOT NULL,
    `Currency` varchar (3) NOT NULL,
    `Genre` varchar (50) NOT NULL,
    `PublisherID` int (50) NOT NULL,
    `EditorID` int (50) NOT NULL,
    
    PRIMARY KEY (`ISBN`),
    INDEX `ISBN` (`ISBN` ASC),
    FOREIGN KEY (`AuthorID`) REFERENCES `Author` (`AuthorID`)
    ON DELETE NO ACTION
		ON UPDATE NO ACTION,
   FOREIGN KEY (`PublisherID`) REFERENCES `Publisher` (`PublisherID`)
  ON DELETE NO ACTION
		ON UPDATE NO ACTION,
    FOREIGN KEY (`EditorID`) REFERENCES `Editor` (`EditorID`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
    ) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `Customer` (
	`CustomerID` int NOT NULL AUTO_INCREMENT,
     `Name` varchar (50) NOT NULL,
    `Contact` int (20) NOT NULL,
	`BillingAddress` varchar (70) NOT NULL,
    `ShippingAddress` varchar (70) NOT NULL,
    PRIMARY KEY (`CustomerID`),
    INDEX `CustomerID` (`CustomerID` ASC)
    ) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `Sales` (
	`OrderID` int NOT NULL AUTO_INCREMENT,
    `OrderDate` int (20) NOT NULL,
      `CustomerID` int (13) NOT NULL,
        `ISBN` varchar (13) NOT NULL,
             `Amount` int (20) NOT NULL,
          
    PRIMARY KEY (`OrderID`),
    INDEX `OrderID` (`OrderID` ASC),
FOREIGN KEY (`ISBN`) REFERENCES `Book` (`ISBN`)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION ,
FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
    ) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;


    


    
