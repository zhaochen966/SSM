/*
 Navicat Premium Data Transfer

 Source Server         : epointMySQL5.7
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : interview

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 08/05/2020 20:07:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for employeeinfo
-- ----------------------------
DROP TABLE IF EXISTS `employeeinfo`;
CREATE TABLE `employeeinfo`  (
  `eid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idnumber` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `education` int(11) NOT NULL,
  `school` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `job` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `interview` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employeeinfo
-- ----------------------------
INSERT INTO `employeeinfo` VALUES ('0bcb557a-a493-4883-bcea-0a4c3e7fe01f', '赵', '33333333333333333X', 2, '常熟', 1, 5888, '面试通过');
INSERT INTO `employeeinfo` VALUES ('82b736a1-2ce3-4831-934e-995330b97d06', '王', '111111111111111111', 2, '苏州', 1, 9630, '面试通过');

-- ----------------------------
-- Table structure for interviewinfo
-- ----------------------------
DROP TABLE IF EXISTS `interviewinfo`;
CREATE TABLE `interviewinfo`  (
  `interviewid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `eid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `interviewer` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `interviewtime` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `writegrade` int(10) NOT NULL,
  `interviewgrade` int(10) NOT NULL,
  `totalgrade` decimal(10, 2) NOT NULL,
  `notes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of interviewinfo
-- ----------------------------
INSERT INTO `interviewinfo` VALUES ('EP20200001', '0bcb557a-a493-4883-bcea-0a4c3e7fe01f', '人', '2020-05-08 19:46:08', 6, 6, 6.00, '仍然');
INSERT INTO `interviewinfo` VALUES ('EP20200003', '82b736a1-2ce3-4831-934e-995330b97d06', '人', '2020-05-08 19:48:48', 100, 59, 75.40, '发发发');
INSERT INTO `interviewinfo` VALUES ('EP20200004', '0bcb557a-a493-4883-bcea-0a4c3e7fe01f', '新点老板', '2020-05-08 20:00:29', 100, 100, 100.00, '好的');

SET FOREIGN_KEY_CHECKS = 1;
