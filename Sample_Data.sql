-- --------------------------------------
--  POPULATE Authors
-- --------------------------------------

INSERT INTO `Author` VALUES (001, 'Prem Sagar', '67345348901' );
INSERT INTO `Author` VALUES (002, 'Paulo Cohelo', '23345348901');
INSERT INTO `Author` VALUES (004,'Lewis Lin', '78345348901');
INSERT INTO `Author` VALUES (005, 'Deepak Malhotra', '90345348901');
INSERT INTO `Author` VALUES (006,'Simon Sinek', '14345348901');
-- --------------------------------------
--  POPULATE Publishers
-- --------------------------------------

INSERT INTO `Publisher` VALUES (1001, 'Khatabook', 12345678942, '23 Pacific Street, Cambridge, MA 02142');
INSERT INTO `Publisher` VALUES (1002, 'APJ Publishing House', 12345348901, '34 Amherst Street, Cambridge, MA 02172');
INSERT INTO `Publisher` VALUES (1003, 'Oxford', 12675678901, '7 Portaland Street, Cambridge, MA 02162');
INSERT INTO `Publisher` VALUES (1004, 'HBR', 12345645901, '23 Suffolk Street, Cambridge, MA 02139');
INSERT INTO `Publisher` VALUES (1005, 'MIT', 12345623901, '75 Pacific Street, Cambridge, MA 02122');

-- --------------------------------------
--  POPULATE Editors
-- --------------------------------------

INSERT INTO `Editor` VALUES (2001, 'Aukriti', 12345678901, '70 Pacific Street, Cambridge, MA 02142');
INSERT INTO `Editor` VALUES (2002, 'Sapna', 23345678901, '76 Essex Street, Cambridge, MA 02142');
INSERT INTO `Editor` VALUES (2003, 'Jeff Bussgang', 47345678901, '70 Sandwich Street, Cambridge, MA 02142');
INSERT INTO `Editor` VALUES (2004, 'Mani', 67345678967, '70 Amherst Street, Cambridge, MA 02142');
INSERT INTO `Editor` VALUES (2005, 'Leena', 123345678956, '34 Sidney Street, Cambridge, MA 02142');


-- --------------------------------------
--  POPULATE BOOKS
-- --------------------------------------

INSERT INTO `Book` VALUES (9780615895772,'Start with why',18, 004, 5, 'USD','Fiction', 002, 005);
INSERT INTO `Book` VALUES (9780615895773,'Alchemist', 12, 002, 2, 'USD', 'Fiction', 003, 001);
INSERT INTO `Book` VALUES (9780615895774,'Negotiation', 28, 004, 4, 'USD', 'Fiction', 001, 002);
INSERT INTO `Book` VALUES (9780615895775,'Let me read', 10, 001, 1, 'USD', 'Non-Fiction', 004, 003);
INSERT INTO `Book` VALUES (9780615895776,'Power', 45, 005, 10, 'USD', 'Fiction', 005, 004);

-- --------------------------------------
--  POPULATE Sales
-- --------------------------------------

INSERT INTO `Orders` VALUES (4001,09122022,5001,9780615895772,18);
INSERT INTO `Orders` VALUES (4002,09122022,5002,9780615895775,10);

-- --------------------------------------
--  POPULATE Customer
-- --------------------------------------

INSERT INTO `Customer` VALUES (5001, 'Prem S', 18572531469, '70 Amherst, Cambridge, MA 02142','70 Amherst, Cambridge, MA 02142');
INSERT INTO `Customer` VALUES (5002, 'James', 18572545469, '70 Essex Street, Cambridge, MA 02139','70 Amherst, Cambridge, MA 02142');


