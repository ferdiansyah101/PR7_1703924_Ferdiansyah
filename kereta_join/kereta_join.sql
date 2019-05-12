/*
 Navicat Premium Data Transfer

 Source Server         : baru
 Source Server Type    : MySQL
 Source Server Version : 100130
 Source Host           : localhost:3306
 Source Schema         : kereta_join

 Target Server Type    : MySQL
 Target Server Version : 100130
 File Encoding         : 65001

 Date: 15/04/2019 20:55:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gerbong
-- ----------------------------
DROP TABLE IF EXISTS `gerbong`;
CREATE TABLE `gerbong`  (
  `kd_gerbong` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kd_kereta` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`kd_gerbong`) USING BTREE,
  INDEX `fk_kd_kereta_gerbong`(`kd_kereta`) USING BTREE,
  CONSTRAINT `fk_kd_kereta_gerbong` FOREIGN KEY (`kd_kereta`) REFERENCES `lokomotif` (`kd_kereta`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gerbong
-- ----------------------------
INSERT INTO `gerbong` VALUES ('GRB0001', 'KRT0002', 'A01');
INSERT INTO `gerbong` VALUES ('GRB0002', 'KRT0002', 'B01');
INSERT INTO `gerbong` VALUES ('GRB0003', 'KRT0003', 'C01');

-- ----------------------------
-- Table structure for kursi
-- ----------------------------
DROP TABLE IF EXISTS `kursi`;
CREATE TABLE `kursi`  (
  `kd_kursi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kd_gerbong` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kd_kereta` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`kd_kursi`) USING BTREE,
  INDEX `fk_kd_gerbong_kursi`(`kd_gerbong`) USING BTREE,
  INDEX `fk_kd_kereta_kursi`(`kd_kereta`) USING BTREE,
  CONSTRAINT `fk_kd_gerbong_kursi` FOREIGN KEY (`kd_gerbong`) REFERENCES `gerbong` (`kd_gerbong`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_kd_kereta_kursi` FOREIGN KEY (`kd_kereta`) REFERENCES `lokomotif` (`kd_kereta`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kursi
-- ----------------------------
INSERT INTO `kursi` VALUES ('KRS0001', 'GRB0001', 'KRT0001');
INSERT INTO `kursi` VALUES ('KRS0002', 'GRB0001', 'KRT0001');
INSERT INTO `kursi` VALUES ('KRS0003', 'GRB0002', 'KRT0002');
INSERT INTO `kursi` VALUES ('KRS0004', 'GRB0003', 'KRT0002');

-- ----------------------------
-- Table structure for lokomotif
-- ----------------------------
DROP TABLE IF EXISTS `lokomotif`;
CREATE TABLE `lokomotif`  (
  `kd_kereta` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`kd_kereta`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lokomotif
-- ----------------------------
INSERT INTO `lokomotif` VALUES ('KRT0001', 'Argo Wilis');
INSERT INTO `lokomotif` VALUES ('KRT0002', 'MALABAR');
INSERT INTO `lokomotif` VALUES ('KRT0003', 'KURTOJOYO');

SET FOREIGN_KEY_CHECKS = 1;
