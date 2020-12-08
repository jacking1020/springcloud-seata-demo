SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `ID` varchar(255) NOT NULL COMMENT '账户',
  `BALANCE` double DEFAULT NULL COMMENT '账户余额',
  `FREEZED` double DEFAULT NULL COMMENT '账户冻结金额',
  `INCOMING` double DEFAULT NULL COMMENT '账户应收金额',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
BEGIN;
INSERT INTO `account` VALUES ('1', 100, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for account_trans
-- ----------------------------
DROP TABLE IF EXISTS `account_trans`;
CREATE TABLE `account_trans` (
  `TX_ID` varchar(255) NOT NULL,
  `ACCOUNT_ID` varchar(255) NOT NULL,
  `AMOUNT` double DEFAULT NULL,
  PRIMARY KEY (`TX_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for temp
-- ----------------------------
DROP TABLE IF EXISTS `temp`;
CREATE TABLE `temp` (
  `id` varchar(255) NOT NULL,
  `data` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of temp
-- ----------------------------
BEGIN;
INSERT INTO `temp` VALUES ('1', '1');
INSERT INTO `temp` VALUES ('2', '1');
INSERT INTO `temp` VALUES ('3', '1');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
