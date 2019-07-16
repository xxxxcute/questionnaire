/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : cloud

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-02-18 00:44:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `answersheet`
-- ----------------------------
DROP TABLE IF EXISTS `answersheet`;
CREATE TABLE `answersheet` (
  `id` varchar(36) NOT NULL,
  `sno` varchar(255) DEFAULT NULL,
  `qid` varchar(255) DEFAULT NULL,
  `FindexPoint` varchar(255) DEFAULT NULL,
  `SindexPoint` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answersheet
-- ----------------------------
INSERT INTO `answersheet` VALUES ('01e3c8db32014be5bd7b5b17fb83a257', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '4', '4.1', '1');
INSERT INTO `answersheet` VALUES ('075d3a011e684bdd8ec31d1273caedf0', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '5', '5.1', '1');
INSERT INTO `answersheet` VALUES ('29c242a1063447df8f2f91e47a6fa4e3', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '2', '2.3', '3');
INSERT INTO `answersheet` VALUES ('4ee60a4313da49f1941069b7aa8045c0', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '8', '8.1', '1');
INSERT INTO `answersheet` VALUES ('4f613afbcf964a9ca9037c14b24cf1d6', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '4', '4.5', '5');
INSERT INTO `answersheet` VALUES ('55eb2638fd5f4b81bf7731c231e9b962', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '7', '7.2', '2');
INSERT INTO `answersheet` VALUES ('598a7f5e8ab848458cd1af7ecb943073', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '4', '4.2', '2');
INSERT INTO `answersheet` VALUES ('68c61b228c734f7bb96d8ee87a2ea462', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '5', '5.2', '2');
INSERT INTO `answersheet` VALUES ('6b387090e2024073ba506c3e06c475e9', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '3', '3.3', '3');
INSERT INTO `answersheet` VALUES ('6e7370c9e289450eaf6501f53cd2bba6', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '4', '4.4', '4');
INSERT INTO `answersheet` VALUES ('76c952f6a63e4f8c94a40ef6e8f43f2e', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '6', '6.1', '1');
INSERT INTO `answersheet` VALUES ('795a8d0e35dc4fcdbe248863bc60ca2e', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '1', '1.1', '1');
INSERT INTO `answersheet` VALUES ('7e4080a6525f44179d5b1963b48ff305', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '1', '1.2', '5');
INSERT INTO `answersheet` VALUES ('876fc10ca62140739d4ef9bf3ea23c4d', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '4', '4.3', '3');
INSERT INTO `answersheet` VALUES ('925b6d8673ed43afbf56f78fd4940b3b', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '3', '3.2', '2');
INSERT INTO `answersheet` VALUES ('9479a0349db74a208f3c45967ca560ae', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '6', '6.3', '3');
INSERT INTO `answersheet` VALUES ('9600b183ae14435c855d609a0158ee95', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '7', '7.1', '1');
INSERT INTO `answersheet` VALUES ('97c89aa548ae4452be65baf3269b76b8', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '3', '3.1', '1');
INSERT INTO `answersheet` VALUES ('9fa6aa32b98b4ab084d66c80d7525ebe', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '7', '7.4', '4');
INSERT INTO `answersheet` VALUES ('a8cf95530e234afeba1cd0f6c489b72b', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '6', '6.2', '2');
INSERT INTO `answersheet` VALUES ('bc58913f2fa04033979dfc0451ec0518', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '2', '2.2', '2');
INSERT INTO `answersheet` VALUES ('bd35a5e0530d451abf4ebebac1296a7c', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '8', '8.2', '2');
INSERT INTO `answersheet` VALUES ('be45613939a64a68aa7f93d25906ded1', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '7', '7.3', '3');
INSERT INTO `answersheet` VALUES ('d07f1ccb3ffe4ced8a7022a6a4cc0351', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '2', '2.1', '1');
INSERT INTO `answersheet` VALUES ('dda3563dcfad453faeaea01cfa3f04f5', '040111101', 'ab5d8d4bdc174414bdbff9dd37170bb7', '3', '3.4', '4');

-- ----------------------------
-- Table structure for `count_class_point`
-- ----------------------------
DROP TABLE IF EXISTS `count_class_point`;
CREATE TABLE `count_class_point` (
  `id` varchar(36) NOT NULL,
  `classID` varchar(255) DEFAULT NULL COMMENT '班级ID',
  `point` varchar(255) DEFAULT NULL COMMENT '指标点',
  `stu` varchar(255) DEFAULT NULL COMMENT '学号',
  `zdf` varchar(255) DEFAULT '0' COMMENT '指标点配置的总得分',
  `zpf` varchar(255) DEFAULT NULL COMMENT '指标点配置的总配分',
  `method` varchar(255) DEFAULT NULL COMMENT '考核类型',
  `dcd` varchar(255) DEFAULT NULL COMMENT '指标点达成度',
  `bfb` varchar(255) DEFAULT NULL COMMENT '指标点改考核类型达成度所占百分比',
  `zdfd` varchar(255) DEFAULT NULL COMMENT '指标点总达成度',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of count_class_point
-- ----------------------------
INSERT INTO `count_class_point` VALUES ('129e15a2fa764490b35a2cdc666ad24b', '2cf2d9b0bae04330a2e0d607734cf388', '8.2', '49.0', '0.0', '0.0', '平时', '0', '0', '0.82375');
INSERT INTO `count_class_point` VALUES ('2e2b6ea2fa3a4da2885e8051025c7e11', '2cf2d9b0bae04330a2e0d607734cf388', '7.1', '48.0', '0.0', '0.0', '期末', '0', '0', '0.0');
INSERT INTO `count_class_point` VALUES ('2fdba5dba6e44a4693a74cdf9d8bcc3f', '2cf2d9b0bae04330a2e0d607734cf388', '7.4', '48.0', '0.0', '0.0', '期末', '0', '0', '0.82375');
INSERT INTO `count_class_point` VALUES ('39e4431cb3354e8e92d5bca40f08ae35', '2cf2d9b0bae04330a2e0d607734cf388', '6.2', '49.0', '0.0', '0.0', '平时', '0', '0', '0.0');
INSERT INTO `count_class_point` VALUES ('44544392136f41699cbd2c115bd6bcb2', '2cf2d9b0bae04330a2e0d607734cf388', '4.2', '48.0', '0.0', '0.0', '课程论文', '0', '0', '0.7815752551020408');
INSERT INTO `count_class_point` VALUES ('51e4baa80bfd44d2bf0ed186d1e5e8c0', '2cf2d9b0bae04330a2e0d607734cf388', '4.2', '48.0', '1083.0', '28.0', '期末', '0.8058035714285714', '50', '0.7815752551020408');
INSERT INTO `count_class_point` VALUES ('667e5d4f08634164ab4006f6053c3fed', '2cf2d9b0bae04330a2e0d607734cf388', '6.2', '48.0', '0.0', '0.0', '期末', '0', '0', '0.0');
INSERT INTO `count_class_point` VALUES ('7c3b166acb3649479cb14af9bfb386ed', '2cf2d9b0bae04330a2e0d607734cf388', '8.2', '48.0', '0.0', '0.0', '期末', '0', '0', '0.82375');
INSERT INTO `count_class_point` VALUES ('7cf5a3ef503d4c8a8e58badd850f59e7', '2cf2d9b0bae04330a2e0d607734cf388', '7.1', '48.0', '0.0', '0.0', '课程论文', '0', '0', '0.0');
INSERT INTO `count_class_point` VALUES ('81443b66015543eba984caba5d01ecb8', '2cf2d9b0bae04330a2e0d607734cf388', '3.4', '49.0', '0.0', '0.0', '平时', '0', '0', '0.0');
INSERT INTO `count_class_point` VALUES ('85765bba1901472aad8a737e167142d5', '2cf2d9b0bae04330a2e0d607734cf388', '6.2', '48.0', '0.0', '0.0', '课程论文', '0', '0', '0.0');
INSERT INTO `count_class_point` VALUES ('ab5b7531a7ea431a9a76a3f12e615e73', '2cf2d9b0bae04330a2e0d607734cf388', '3.1', '49.0', '3711.0', '100.0', '平时', '0.7573469387755103', '50', '0.76380078420257');
INSERT INTO `count_class_point` VALUES ('ae9713fe8b8a489ebeb4e8ec43ab25bc', '2cf2d9b0bae04330a2e0d607734cf388', '4.2', '49.0', '3711.0', '100.0', '平时', '0.7573469387755103', '50', '0.7815752551020408');
INSERT INTO `count_class_point` VALUES ('ce9e33608b3b4daa90e83f871c20ab8f', '2cf2d9b0bae04330a2e0d607734cf388', '3.4', '48.0', '0.0', '0.0', '课程论文', '0', '0', '0.0');
INSERT INTO `count_class_point` VALUES ('e3fb32baaaad4d388b781028b8052d37', '2cf2d9b0bae04330a2e0d607734cf388', '3.1', '48.0', '2662.0', '72.0', '期末', '0.7702546296296297', '50', '0.76380078420257');
INSERT INTO `count_class_point` VALUES ('ebe38b39be914e3ba4bc55a87790078c', '2cf2d9b0bae04330a2e0d607734cf388', '7.4', '48.0', '11862.0', '300.0', '课程论文', '0.82375', '100', '0.82375');
INSERT INTO `count_class_point` VALUES ('ec5cfc21eb964059a90aa5fe91717721', '2cf2d9b0bae04330a2e0d607734cf388', '3.1', '48.0', '0.0', '0.0', '课程论文', '0', '0', '0.76380078420257');
INSERT INTO `count_class_point` VALUES ('eca5717543624aebafe865e6ed7105a4', '2cf2d9b0bae04330a2e0d607734cf388', '7.1', '49.0', '0.0', '0.0', '平时', '0', '0', '0.0');
INSERT INTO `count_class_point` VALUES ('ee1b9d56f4844ed5b7dc2d2e22dbb0d7', '2cf2d9b0bae04330a2e0d607734cf388', '7.4', '49.0', '0.0', '0.0', '平时', '0', '0', '0.82375');
INSERT INTO `count_class_point` VALUES ('fca37a7feee1430da055bf676cbb969f', '2cf2d9b0bae04330a2e0d607734cf388', '3.4', '48.0', '0.0', '0.0', '期末', '0', '0', '0.0');
INSERT INTO `count_class_point` VALUES ('fd75e807122e4ce79b14f00bc22a94c3', '2cf2d9b0bae04330a2e0d607734cf388', '8.2', '48.0', '11862.0', '300.0', '课程论文', '0.82375', '100', '0.82375');

-- ----------------------------
-- Table structure for `count_student_point`
-- ----------------------------
DROP TABLE IF EXISTS `count_student_point`;
CREATE TABLE `count_student_point` (
  `id` varchar(36) NOT NULL,
  `classID` varchar(255) DEFAULT NULL COMMENT '班级ID',
  `sno` varchar(255) DEFAULT NULL COMMENT '学号',
  `sname` varchar(255) DEFAULT NULL COMMENT '姓名',
  `point` varchar(255) DEFAULT NULL COMMENT '指标点',
  `zdf` varchar(255) DEFAULT NULL COMMENT '总得分',
  `zpf` varchar(255) DEFAULT NULL COMMENT '总配分',
  `zdcd` varchar(255) DEFAULT NULL COMMENT '每个学生对应考核类型的总达成度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of count_student_point
-- ----------------------------
INSERT INTO `count_student_point` VALUES ('032aabf9292c465780553bf80ed38d11', '2cf2d9b0bae04330a2e0d607734cf388', '040114126', '肖璐琰', '4.2', '102.0', '128.0', '0.796875');
INSERT INTO `count_student_point` VALUES ('03bbb36295e449229d7b882c431b9072', '2cf2d9b0bae04330a2e0d607734cf388', '040114149', '曹静怡', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('04fc99c1d68f46beadca5f91c74d3a66', '2cf2d9b0bae04330a2e0d607734cf388', '040114122', '魏薇', '4.2', '100.0', '128.0', '0.78125');
INSERT INTO `count_student_point` VALUES ('0893907bcf2b492f8e44b5af123a5c7a', '2cf2d9b0bae04330a2e0d607734cf388', '040114111', '易川江', '3.1', '114.0', '172.0', '0.6627906976744186');
INSERT INTO `count_student_point` VALUES ('09b2448861c94612afcdda73525eb75e', '2cf2d9b0bae04330a2e0d607734cf388', '040214211', '马也骋', '7.4', '257.0', '300.0', '0.8566666666666667');
INSERT INTO `count_student_point` VALUES ('0a4c05b95c99428186880202685e05ac', '2cf2d9b0bae04330a2e0d607734cf388', '040114122', '魏薇', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('0d13096600bc4b95bffd5a703fa5f5a5', '2cf2d9b0bae04330a2e0d607734cf388', '', '', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('0ddad5b99c81481eb794f1c73e77ca99', '2cf2d9b0bae04330a2e0d607734cf388', '040114140', '程怡婷', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('0ecaa6095b524f8dbb39cbaf00c7d459', '2cf2d9b0bae04330a2e0d607734cf388', '040114140', '程怡婷', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('0ef8406244fc4bf0b141e9c31502bbee', '2cf2d9b0bae04330a2e0d607734cf388', '040114131', '毛佳瑜', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('0f99890e3162441688f0b047a8cd73db', '2cf2d9b0bae04330a2e0d607734cf388', '040114137', '何铭', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('0fd4c8b278eb4832beb794c0b636e7c1', '2cf2d9b0bae04330a2e0d607734cf388', '040114138', '陶颖红', '3.1', '136.0', '172.0', '0.7906976744186046');
INSERT INTO `count_student_point` VALUES ('100fc80a7f7e4b549fb32ab811d5877f', '2cf2d9b0bae04330a2e0d607734cf388', '040114145', '林琦', '3.1', '162.0', '172.0', '0.9418604651162791');
INSERT INTO `count_student_point` VALUES ('10c46e212bd641b28a41f884d6d6c899', '2cf2d9b0bae04330a2e0d607734cf388', '040114118', '王宇超', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('12872e4aa9e94dabab7e707925b34bd3', '2cf2d9b0bae04330a2e0d607734cf388', '040114139', '徐思佳', '7.4', '249.0', '300.0', '0.83');
INSERT INTO `count_student_point` VALUES ('1340e95721c24f78adda10c4f6879cc6', '2cf2d9b0bae04330a2e0d607734cf388', '040114107', '李志远', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('1508d880b9cd4edebbaa48d644072043', '2cf2d9b0bae04330a2e0d607734cf388', '040114110', '杜志沅', '8.2', '233.0', '300.0', '0.7766666666666666');
INSERT INTO `count_student_point` VALUES ('166b8fa91b3547bba02fe405420a5340', '2cf2d9b0bae04330a2e0d607734cf388', '040114110', '杜志沅', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('17ba958822254a98aa19fa32481d2e80', '2cf2d9b0bae04330a2e0d607734cf388', '040114127', '姚心怡', '3.1', '156.0', '172.0', '0.9069767441860465');
INSERT INTO `count_student_point` VALUES ('17ee82fae31544ff8ca1b30b087795e1', '2cf2d9b0bae04330a2e0d607734cf388', '040114114', '顾康能', '8.2', '239.0', '300.0', '0.7966666666666666');
INSERT INTO `count_student_point` VALUES ('1847af65c3eb469da82f021910e7ebb7', '2cf2d9b0bae04330a2e0d607734cf388', '040114117', '王锦艺', '4.2', '97.0', '128.0', '0.7578125');
INSERT INTO `count_student_point` VALUES ('1893061423994daea1464ab6efac3c90', '2cf2d9b0bae04330a2e0d607734cf388', '040114147', '徐蓓佳', '7.4', '262.0', '300.0', '0.8733333333333333');
INSERT INTO `count_student_point` VALUES ('195ab734c30848acb7c31c37c655f35a', '2cf2d9b0bae04330a2e0d607734cf388', '040114126', '肖璐琰', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('19dcbda25a024fb580e7dfafde0c2f6a', '2cf2d9b0bae04330a2e0d607734cf388', '040114137', '何铭', '7.4', '242.0', '300.0', '0.8066666666666666');
INSERT INTO `count_student_point` VALUES ('1a03f1d7633249d98592283fbe56350c', '2cf2d9b0bae04330a2e0d607734cf388', '040114147', '徐蓓佳', '4.2', '97.0', '128.0', '0.7578125');
INSERT INTO `count_student_point` VALUES ('1a5df8bb3ee74a9a83b0ef17958fe845', '2cf2d9b0bae04330a2e0d607734cf388', '040114117', '王锦艺', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('1bd0e1ed3b7c48adae0353077ec6f2cc', '2cf2d9b0bae04330a2e0d607734cf388', '040114118', '王宇超', '3.1', '119.0', '172.0', '0.6918604651162791');
INSERT INTO `count_student_point` VALUES ('1c1542e92af6426b8679eac55d5b85e3', '2cf2d9b0bae04330a2e0d607734cf388', '040114141', '徐静', '4.2', '111.0', '128.0', '0.8671875');
INSERT INTO `count_student_point` VALUES ('1c6b02d09c804ff0a86ac6797cc7a9aa', '2cf2d9b0bae04330a2e0d607734cf388', '050114133', '张琦', '3.1', '114.0', '172.0', '0.6627906976744186');
INSERT INTO `count_student_point` VALUES ('1cd6c5a12b45420dae42ac0c70118670', '2cf2d9b0bae04330a2e0d607734cf388', '040114114', '顾康能', '7.4', '239.0', '300.0', '0.7966666666666666');
INSERT INTO `count_student_point` VALUES ('1d8d7a2867c849af8f6a7c55fab07b1b', '2cf2d9b0bae04330a2e0d607734cf388', '040114112', '曾乾坤', '3.1', '115.0', '172.0', '0.6686046511627907');
INSERT INTO `count_student_point` VALUES ('1eae658cba3749d5aaf686f701ac5f87', '2cf2d9b0bae04330a2e0d607734cf388', '040614138', '吴顺婷', '8.2', '241.0', '300.0', '0.8033333333333333');
INSERT INTO `count_student_point` VALUES ('1f116a18c3764f8d8c22c12ec69c1c3a', '2cf2d9b0bae04330a2e0d607734cf388', '040114145', '林琦', '4.2', '120.0', '128.0', '0.9375');
INSERT INTO `count_student_point` VALUES ('1f1a75a04245488c9cac1256383ba7c4', '2cf2d9b0bae04330a2e0d607734cf388', '040114144', '张雅蕾', '8.2', '256.0', '300.0', '0.8533333333333334');
INSERT INTO `count_student_point` VALUES ('1f826f91124a41249aff017e37b3edba', '2cf2d9b0bae04330a2e0d607734cf388', '040114118', '王宇超', '4.2', '94.0', '128.0', '0.734375');
INSERT INTO `count_student_point` VALUES ('1fd36e7984854a55b65156c4b554a63d', '2cf2d9b0bae04330a2e0d607734cf388', '040114103', '夏汪洋', '7.4', '220.0', '300.0', '0.7333333333333333');
INSERT INTO `count_student_point` VALUES ('20031541d25e4df3ab92f680aa7294cb', '2cf2d9b0bae04330a2e0d607734cf388', '040114119', '杨顺', '4.2', '113.0', '128.0', '0.8828125');
INSERT INTO `count_student_point` VALUES ('20bad7cf888a463c99e9f7f316e51073', '2cf2d9b0bae04330a2e0d607734cf388', '040114131', '毛佳瑜', '8.2', '230.0', '300.0', '0.7666666666666667');
INSERT INTO `count_student_point` VALUES ('20d39de0dda2423c9a8f5b90a5d8f454', '2cf2d9b0bae04330a2e0d607734cf388', '040114131', '毛佳瑜', '7.4', '230.0', '300.0', '0.7666666666666667');
INSERT INTO `count_student_point` VALUES ('21e888bbc38a49a3b9311ddb3553c5b7', '2cf2d9b0bae04330a2e0d607734cf388', '040114130', '徐艺璇', '4.2', '115.0', '128.0', '0.8984375');
INSERT INTO `count_student_point` VALUES ('2441f6e0a81d4e9d939c7a98c1188937', '2cf2d9b0bae04330a2e0d607734cf388', '041414239', '戴心雨', '7.4', '256.0', '300.0', '0.8533333333333334');
INSERT INTO `count_student_point` VALUES ('260b7338533543748c8026c6d4eb4030', '2cf2d9b0bae04330a2e0d607734cf388', '040114146', '陶欢', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('26cd3bb62a764a2fa59df549a0ede7e5', '2cf2d9b0bae04330a2e0d607734cf388', '040114143', '王晓蕾', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('275f4cf5971448f192b9a11f16040340', '2cf2d9b0bae04330a2e0d607734cf388', '041414239', '戴心雨', '3.1', '103.0', '172.0', '0.5988372093023255');
INSERT INTO `count_student_point` VALUES ('27c55355dc5e4ada987b464d5d22312a', '2cf2d9b0bae04330a2e0d607734cf388', '040114111', '易川江', '8.2', '232.0', '300.0', '0.7733333333333333');
INSERT INTO `count_student_point` VALUES ('287a4792e119440a8fc87cfb3932c677', '2cf2d9b0bae04330a2e0d607734cf388', '040114128', '张玲燕', '8.2', '254.0', '300.0', '0.8466666666666667');
INSERT INTO `count_student_point` VALUES ('29f80cb0f87c4fb08bf0b4d9b711979c', '2cf2d9b0bae04330a2e0d607734cf388', '040114135', '沈佳敏', '8.2', '255.0', '300.0', '0.85');
INSERT INTO `count_student_point` VALUES ('2a2b0da3247c48fcac26d5a0ca157d68', '2cf2d9b0bae04330a2e0d607734cf388', '040114140', '程怡婷', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('2a8cb4a9da094597af636eab9cd8cb7b', '2cf2d9b0bae04330a2e0d607734cf388', '040114131', '毛佳瑜', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('2b3cc9390a2e4cba9fa137de7eb7a7ae', '2cf2d9b0bae04330a2e0d607734cf388', '040114139', '徐思佳', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('2c724e74dd1f4de5aa7ecef0e6596f5a', '2cf2d9b0bae04330a2e0d607734cf388', '040114134', '赵雨婷', '4.2', '104.0', '128.0', '0.8125');
INSERT INTO `count_student_point` VALUES ('2debf36b9a684caf9c0741d3ab6873df', '2cf2d9b0bae04330a2e0d607734cf388', '040114148', '赵予晴', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('301312f8e8944ad8a6b10c4c37aeb536', '2cf2d9b0bae04330a2e0d607734cf388', '040114115', '凌华', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('3026180a42c8444aa4ac454f587da8d3', '2cf2d9b0bae04330a2e0d607734cf388', '040114147', '徐蓓佳', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('30544291da2f4a5c815f1f7bb681be86', '2cf2d9b0bae04330a2e0d607734cf388', '040114143', '王晓蕾', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('32616e877ac146a0a7f3f79b6ac6eafd', '2cf2d9b0bae04330a2e0d607734cf388', '040614138', '吴顺婷', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('32628696378a4c08ae14d2334b77b301', '2cf2d9b0bae04330a2e0d607734cf388', '040114134', '赵雨婷', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('32aa6450d59f4b04a36bff59202e9808', '2cf2d9b0bae04330a2e0d607734cf388', '040114117', '王锦艺', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('33097da6f90147509e33fc8feced1795', '2cf2d9b0bae04330a2e0d607734cf388', '040114120', '陈强', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('34d36a684eb845ca8da9821f35bc94ce', '2cf2d9b0bae04330a2e0d607734cf388', '040114142', '孙雨亭', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('350f72dc5433429b9f5c241bfdeaab61', '2cf2d9b0bae04330a2e0d607734cf388', '040214211', '马也骋', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('37579169c65c45798abd888357cf12df', '2cf2d9b0bae04330a2e0d607734cf388', '040114150', '刘净楠', '4.2', '65.0', '128.0', '0.5078125');
INSERT INTO `count_student_point` VALUES ('37fdeb7e23ab492db721c8d718718f85', '2cf2d9b0bae04330a2e0d607734cf388', '040114107', '李志远', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('38e0ef063ab54cf9b39f95ab80aa2291', '2cf2d9b0bae04330a2e0d607734cf388', '040114127', '姚心怡', '7.4', '245.0', '300.0', '0.8166666666666667');
INSERT INTO `count_student_point` VALUES ('39a39539b37d49c4b0d28f8f64804287', '2cf2d9b0bae04330a2e0d607734cf388', '040114128', '张玲燕', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('3eb48551513f4578be8c34777ee3f9a6', '2cf2d9b0bae04330a2e0d607734cf388', '040114114', '顾康能', '4.2', '84.0', '128.0', '0.65625');
INSERT INTO `count_student_point` VALUES ('3edcc6e6818f4f38b52cca31549c0c78', '2cf2d9b0bae04330a2e0d607734cf388', '040114124', '万红利', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('3f2a2aa4b906428394587da213f7ab4a', '2cf2d9b0bae04330a2e0d607734cf388', '040114134', '赵雨婷', '8.2', '251.0', '300.0', '0.8366666666666667');
INSERT INTO `count_student_point` VALUES ('4015343defbd4dc2be203cc1923b5200', '2cf2d9b0bae04330a2e0d607734cf388', '040114133', '谈潇玥', '7.4', '234.0', '300.0', '0.78');
INSERT INTO `count_student_point` VALUES ('4023edb647c9435e93eab4222a328acf', '2cf2d9b0bae04330a2e0d607734cf388', '040114146', '陶欢', '4.2', '103.0', '128.0', '0.8046875');
INSERT INTO `count_student_point` VALUES ('405620e63b374612b10b84e948532b7d', '2cf2d9b0bae04330a2e0d607734cf388', '040114138', '陶颖红', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('412ba9ed31cd44838fed322773aaf00c', '2cf2d9b0bae04330a2e0d607734cf388', '040114127', '姚心怡', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('4143618e52fb4804bb5ba440407c2bf9', '2cf2d9b0bae04330a2e0d607734cf388', '040614138', '吴顺婷', '7.4', '241.0', '300.0', '0.8033333333333333');
INSERT INTO `count_student_point` VALUES ('41534558ced74ef882086884a63604d5', '2cf2d9b0bae04330a2e0d607734cf388', '040114111', '易川江', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('42a4d8d060d245e1be62a90f9513de0b', '2cf2d9b0bae04330a2e0d607734cf388', '', '', '8.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('42efe93280da4e2bb40bb857bbc2dd67', '2cf2d9b0bae04330a2e0d607734cf388', '040114142', '孙雨亭', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('42f717ed419b4943be64b368da276846', '2cf2d9b0bae04330a2e0d607734cf388', '040114114', '顾康能', '3.1', '115.0', '172.0', '0.6686046511627907');
INSERT INTO `count_student_point` VALUES ('46010118245e46bc89d33ce4abdadd3c', '2cf2d9b0bae04330a2e0d607734cf388', '041414239', '戴心雨', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('46074957ac5d46e6bd854182653f7156', '2cf2d9b0bae04330a2e0d607734cf388', '040114108', '姚籽呈', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('46b133116f1a466ea378dee3306bc8c4', '2cf2d9b0bae04330a2e0d607734cf388', '040114141', '徐静', '8.2', '238.0', '300.0', '0.7933333333333333');
INSERT INTO `count_student_point` VALUES ('483873bbae0c4de5b48cacb6cec11195', '2cf2d9b0bae04330a2e0d607734cf388', '040114145', '林琦', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('48798bc60b85433b9be5a2ad9a5f67ab', '2cf2d9b0bae04330a2e0d607734cf388', '040114141', '徐静', '7.4', '238.0', '300.0', '0.7933333333333333');
INSERT INTO `count_student_point` VALUES ('48df2e6eaee64a70a506a3104f4014cc', '2cf2d9b0bae04330a2e0d607734cf388', '040114119', '杨顺', '7.4', '257.0', '300.0', '0.8566666666666667');
INSERT INTO `count_student_point` VALUES ('491dca2b848f48428333ed8a353462d3', '2cf2d9b0bae04330a2e0d607734cf388', '040614138', '吴顺婷', '3.1', '164.0', '172.0', '0.9534883720930233');
INSERT INTO `count_student_point` VALUES ('4996cccde8f54d7194da9e65e0b23063', '2cf2d9b0bae04330a2e0d607734cf388', '040114126', '肖璐琰', '3.1', '126.0', '172.0', '0.7325581395348837');
INSERT INTO `count_student_point` VALUES ('49d0ff5afbc04f2285feb2c2e7d25908', '2cf2d9b0bae04330a2e0d607734cf388', '040114135', '沈佳敏', '7.4', '255.0', '300.0', '0.85');
INSERT INTO `count_student_point` VALUES ('49f915e8164941069db4e46a966b55ff', '2cf2d9b0bae04330a2e0d607734cf388', '040114132', '沈宽', '4.2', '122.0', '128.0', '0.953125');
INSERT INTO `count_student_point` VALUES ('49fa778155d84dd3b4353f1591137772', '2cf2d9b0bae04330a2e0d607734cf388', '040114139', '徐思佳', '4.2', '122.0', '128.0', '0.953125');
INSERT INTO `count_student_point` VALUES ('4aa9c7bade0c417b85f3d1bff261e343', '2cf2d9b0bae04330a2e0d607734cf388', '040114134', '赵雨婷', '3.1', '140.0', '172.0', '0.813953488372093');
INSERT INTO `count_student_point` VALUES ('4b4d659137034864b6a918805cbb8992', '2cf2d9b0bae04330a2e0d607734cf388', '040114130', '徐艺璇', '8.2', '231.0', '300.0', '0.77');
INSERT INTO `count_student_point` VALUES ('4b70799c4cb0440988b30011acc7772f', '2cf2d9b0bae04330a2e0d607734cf388', '040114105', '宋金钱', '4.2', '92.0', '128.0', '0.71875');
INSERT INTO `count_student_point` VALUES ('4bba536c098f4c37a357058035e6aab9', '2cf2d9b0bae04330a2e0d607734cf388', '040114111', '易川江', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('4f401810f4564c20894f41a778156d95', '2cf2d9b0bae04330a2e0d607734cf388', '040114131', '毛佳瑜', '3.1', '157.0', '172.0', '0.9127906976744186');
INSERT INTO `count_student_point` VALUES ('4f59cfecc946431f938fe3aab70add5b', '2cf2d9b0bae04330a2e0d607734cf388', '040114143', '王晓蕾', '7.4', '252.0', '300.0', '0.84');
INSERT INTO `count_student_point` VALUES ('4fba36f73f3a40c2ae4eebe5b9203bfb', '2cf2d9b0bae04330a2e0d607734cf388', '040114123', '古丹', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('5069b381d88549f68894a3997d647fda', '2cf2d9b0bae04330a2e0d607734cf388', '040114143', '王晓蕾', '8.2', '252.0', '300.0', '0.84');
INSERT INTO `count_student_point` VALUES ('51e9b13875264f2e93917c4ad2e8ddf9', '2cf2d9b0bae04330a2e0d607734cf388', '041414239', '戴心雨', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('5238ff6097d54d01aee80781541d40e1', '2cf2d9b0bae04330a2e0d607734cf388', '040114136', '沈云萍', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('52b1e394e65944ac89cf5d3d81dda5d1', '2cf2d9b0bae04330a2e0d607734cf388', '040111101', '陈鑫', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('54be39d203634fe1967053979369e7bb', '2cf2d9b0bae04330a2e0d607734cf388', '030314314', '胡莹月', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('553add42c87746d5a5e3d2750ca82a03', '2cf2d9b0bae04330a2e0d607734cf388', '040114122', '魏薇', '7.4', '257.0', '300.0', '0.8566666666666667');
INSERT INTO `count_student_point` VALUES ('566592098ec94d6188a9bd3285ff6adf', '2cf2d9b0bae04330a2e0d607734cf388', '041414239', '戴心雨', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('56b8d66e38994c07b6d74ee2cb0b74ba', '2cf2d9b0bae04330a2e0d607734cf388', '040114123', '古丹', '4.2', '102.0', '128.0', '0.796875');
INSERT INTO `count_student_point` VALUES ('57257ccba83042fbb5240dc5748c652d', '2cf2d9b0bae04330a2e0d607734cf388', '040114119', '杨顺', '3.1', '149.0', '172.0', '0.8662790697674418');
INSERT INTO `count_student_point` VALUES ('575a6d98641c4f4c8bceb6ae77b36d1d', '2cf2d9b0bae04330a2e0d607734cf388', '040114124', '万红利', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('591af528a89b4bcfb53998706e8fd6a5', '2cf2d9b0bae04330a2e0d607734cf388', '040114129', '景莉洁', '4.2', '99.0', '128.0', '0.7734375');
INSERT INTO `count_student_point` VALUES ('592cc8cd6a52414f9e7dccf4a4b5cf06', '2cf2d9b0bae04330a2e0d607734cf388', '040114128', '张玲燕', '3.1', '158.0', '172.0', '0.9186046511627907');
INSERT INTO `count_student_point` VALUES ('5afe21c256494a9293ec5e434cce23ef', '2cf2d9b0bae04330a2e0d607734cf388', '040114143', '王晓蕾', '3.1', '133.0', '172.0', '0.7732558139534884');
INSERT INTO `count_student_point` VALUES ('5c7fda9599bb47bf827b887b5095bfbb', '2cf2d9b0bae04330a2e0d607734cf388', '040114122', '魏薇', '3.1', '130.0', '172.0', '0.7558139534883721');
INSERT INTO `count_student_point` VALUES ('5c8ca731a30841fdbac2f2792aa895d9', '2cf2d9b0bae04330a2e0d607734cf388', '040114133', '谈潇玥', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('5cb285bda3a24b47a646a65ce8a9de1d', '2cf2d9b0bae04330a2e0d607734cf388', '040114148', '赵予晴', '3.1', '130.0', '172.0', '0.7558139534883721');
INSERT INTO `count_student_point` VALUES ('5d2665030d7a4065898555d35e7bf42d', '2cf2d9b0bae04330a2e0d607734cf388', '030314314', '胡莹月', '3.1', '122.0', '172.0', '0.7093023255813954');
INSERT INTO `count_student_point` VALUES ('5d440fdd0ffc404d8f0f099e0d823a3d', '2cf2d9b0bae04330a2e0d607734cf388', '040114115', '凌华', '4.2', '100.0', '128.0', '0.78125');
INSERT INTO `count_student_point` VALUES ('5e20253eaef94cf6a76e6d13b4f2ec87', '2cf2d9b0bae04330a2e0d607734cf388', '040214211', '马也骋', '8.2', '257.0', '300.0', '0.8566666666666667');
INSERT INTO `count_student_point` VALUES ('5ea2664c33ef450d82d3cc0a1d197a63', '2cf2d9b0bae04330a2e0d607734cf388', '040114127', '姚心怡', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('603abef4a9d44851871e6e98d1e89572', '2cf2d9b0bae04330a2e0d607734cf388', '040114128', '张玲燕', '4.2', '115.0', '128.0', '0.8984375');
INSERT INTO `count_student_point` VALUES ('60c6487ed09e4583801a1f4f458d4a77', '2cf2d9b0bae04330a2e0d607734cf388', '040114141', '徐静', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('6188f9689e6d4839b5aaf4566e90690c', '2cf2d9b0bae04330a2e0d607734cf388', '040114146', '陶欢', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('61e4c1c88d264b1db506278bcb36cc95', '2cf2d9b0bae04330a2e0d607734cf388', '040114150', '刘净楠', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('62637b2540bd4d61b5fac7cbb343be40', '2cf2d9b0bae04330a2e0d607734cf388', '040114124', '万红利', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('62f93c64123b4654bbd93fcbbc416167', '2cf2d9b0bae04330a2e0d607734cf388', '040114107', '李志远', '3.1', '135.0', '172.0', '0.7848837209302325');
INSERT INTO `count_student_point` VALUES ('6443806bd08641af8ef1a114dcbf8769', '2cf2d9b0bae04330a2e0d607734cf388', '040114129', '景莉洁', '3.1', '150.0', '172.0', '0.872093023255814');
INSERT INTO `count_student_point` VALUES ('6455492f6e0448ac95577c13fb158c7c', '2cf2d9b0bae04330a2e0d607734cf388', '040114118', '王宇超', '7.4', '245.0', '300.0', '0.8166666666666667');
INSERT INTO `count_student_point` VALUES ('648d2c8fe66a4e76a49acd7fbe4b70d7', '2cf2d9b0bae04330a2e0d607734cf388', '040114136', '沈云萍', '7.4', '244.0', '300.0', '0.8133333333333334');
INSERT INTO `count_student_point` VALUES ('6540790fcc6f40d4b5196e2c2c854312', '2cf2d9b0bae04330a2e0d607734cf388', '050114133', '张琦', '8.2', '272.0', '300.0', '0.9066666666666666');
INSERT INTO `count_student_point` VALUES ('65a7d75bc8d942efa21f7b70f082fb06', '2cf2d9b0bae04330a2e0d607734cf388', '', '', '7.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('6773c0dc147e4e4aa602d6f9b1a625fa', '2cf2d9b0bae04330a2e0d607734cf388', '040114144', '张雅蕾', '7.4', '256.0', '300.0', '0.8533333333333334');
INSERT INTO `count_student_point` VALUES ('6a18a164ccf94bbdb300f0387a3babd3', '2cf2d9b0bae04330a2e0d607734cf388', '040114132', '沈宽', '7.4', '271.0', '300.0', '0.9033333333333333');
INSERT INTO `count_student_point` VALUES ('6a2c6748d16e40dd8c4dc4b3b9b37df4', '2cf2d9b0bae04330a2e0d607734cf388', '040114108', '姚籽呈', '3.1', '107.0', '172.0', '0.622093023255814');
INSERT INTO `count_student_point` VALUES ('6a32d59de13a4819a1f5c1b02d58f564', '2cf2d9b0bae04330a2e0d607734cf388', '040114123', '古丹', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('6ae9e48e01504cd0ac3afd322f385067', '2cf2d9b0bae04330a2e0d607734cf388', '040114123', '古丹', '3.1', '145.0', '172.0', '0.8430232558139535');
INSERT INTO `count_student_point` VALUES ('6b6b37b099754286938d3f5605bb2e24', '2cf2d9b0bae04330a2e0d607734cf388', '040114108', '姚籽呈', '7.4', '230.0', '300.0', '0.7666666666666667');
INSERT INTO `count_student_point` VALUES ('6b8ef0eb72264de0aaa069c720594cac', '2cf2d9b0bae04330a2e0d607734cf388', '040114107', '李志远', '7.4', '245.0', '300.0', '0.8166666666666667');
INSERT INTO `count_student_point` VALUES ('6c585b33e82845918e4b172fec6b0820', '2cf2d9b0bae04330a2e0d607734cf388', '040114142', '孙雨亭', '7.4', '279.0', '300.0', '0.93');
INSERT INTO `count_student_point` VALUES ('6d8e573072504c3fa4ebe11bcffbcdcb', '2cf2d9b0bae04330a2e0d607734cf388', '040114129', '景莉洁', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('6dbe381f71424aba9e77cb94a16e20b5', '2cf2d9b0bae04330a2e0d607734cf388', '040214211', '马也骋', '3.1', '138.0', '172.0', '0.8023255813953488');
INSERT INTO `count_student_point` VALUES ('6e11944d79ad4895be3c31e4e232d0fa', '2cf2d9b0bae04330a2e0d607734cf388', '040114116', '马嘉禾', '8.2', '224.0', '300.0', '0.7466666666666667');
INSERT INTO `count_student_point` VALUES ('6e93cca7486d431285b85cf6d9acfb3b', '2cf2d9b0bae04330a2e0d607734cf388', '040114111', '易川江', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('6ea09907bc0a4c70937099f7bb1f6a2d', '2cf2d9b0bae04330a2e0d607734cf388', '040114110', '杜志沅', '7.4', '233.0', '300.0', '0.7766666666666666');
INSERT INTO `count_student_point` VALUES ('704ba23c722b4dce8b999641023a8f4b', '2cf2d9b0bae04330a2e0d607734cf388', '040114129', '景莉洁', '7.4', '233.0', '300.0', '0.7766666666666666');
INSERT INTO `count_student_point` VALUES ('70dc0656aa014c139119f4f0888d620f', '2cf2d9b0bae04330a2e0d607734cf388', '040114107', '李志远', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('71abe8f01a74480fb88cddc26c9d2d9c', '2cf2d9b0bae04330a2e0d607734cf388', '040114130', '徐艺璇', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('7264f70654a34a63826da55be591aeef', '2cf2d9b0bae04330a2e0d607734cf388', '040114107', '李志远', '8.2', '245.0', '300.0', '0.8166666666666667');
INSERT INTO `count_student_point` VALUES ('72bb3ecc720a45e3b7184c25b9abf73d', '2cf2d9b0bae04330a2e0d607734cf388', '040114128', '张玲燕', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('74967415670446219a0afae2c7802732', '2cf2d9b0bae04330a2e0d607734cf388', '040114128', '张玲燕', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('755716968a8f4cbf8d17e7e7cf50796d', '2cf2d9b0bae04330a2e0d607734cf388', '040114141', '徐静', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('75ee07caa72c44f29e79c84339e77222', '2cf2d9b0bae04330a2e0d607734cf388', '040114144', '张雅蕾', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('766a32475f0b4a5ba39fce8de57c7eb3', '2cf2d9b0bae04330a2e0d607734cf388', '030314314', '胡莹月', '7.4', '272.0', '300.0', '0.9066666666666666');
INSERT INTO `count_student_point` VALUES ('773e35f50e4247e28650c11d2ec41441', '2cf2d9b0bae04330a2e0d607734cf388', '040114136', '沈云萍', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('777cd47fdea440aa9aa7f3d9b2b37961', '2cf2d9b0bae04330a2e0d607734cf388', '040114142', '孙雨亭', '3.1', '142.0', '172.0', '0.8255813953488372');
INSERT INTO `count_student_point` VALUES ('7799f395728246939cad0a1da3e49855', '2cf2d9b0bae04330a2e0d607734cf388', '040114126', '肖璐琰', '8.2', '258.0', '300.0', '0.86');
INSERT INTO `count_student_point` VALUES ('77fc4760de604ce0961e25d51d9ba39e', '2cf2d9b0bae04330a2e0d607734cf388', '', '', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('7821b8a50c744146800e5970429509f0', '2cf2d9b0bae04330a2e0d607734cf388', '040114134', '赵雨婷', '7.4', '251.0', '300.0', '0.8366666666666667');
INSERT INTO `count_student_point` VALUES ('7828569abfd64f29a3fea8ae0995b6a4', '2cf2d9b0bae04330a2e0d607734cf388', '041414239', '戴心雨', '4.2', '79.0', '128.0', '0.6171875');
INSERT INTO `count_student_point` VALUES ('783429024c0043cea286f7dab3b7c32b', '2cf2d9b0bae04330a2e0d607734cf388', '040114117', '王锦艺', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('78595f28f56346879ccb9dfa03515237', '2cf2d9b0bae04330a2e0d607734cf388', '040114133', '谈潇玥', '8.2', '234.0', '300.0', '0.78');
INSERT INTO `count_student_point` VALUES ('787ba9c8d7fc4b618b2796dcbf3dc791', '2cf2d9b0bae04330a2e0d607734cf388', '040614138', '吴顺婷', '4.2', '113.0', '128.0', '0.8828125');
INSERT INTO `count_student_point` VALUES ('78c53b4d0da74822a9c1da85e91c0364', '2cf2d9b0bae04330a2e0d607734cf388', '040114124', '万红利', '7.4', '264.0', '300.0', '0.88');
INSERT INTO `count_student_point` VALUES ('78deb4b888fe4268b88ae3de7b1c20d1', '2cf2d9b0bae04330a2e0d607734cf388', '030314314', '胡莹月', '4.2', '106.0', '128.0', '0.828125');
INSERT INTO `count_student_point` VALUES ('791a3557d7bf4369b3553ef7e4be3590', '2cf2d9b0bae04330a2e0d607734cf388', '040214211', '马也骋', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('7932462a0d084a37b5512bb0ef39a75c', '2cf2d9b0bae04330a2e0d607734cf388', '040114131', '毛佳瑜', '4.2', '118.0', '128.0', '0.921875');
INSERT INTO `count_student_point` VALUES ('79339210f0a24ca5a658a97450ba87dd', '2cf2d9b0bae04330a2e0d607734cf388', '040114136', '沈云萍', '3.1', '149.0', '172.0', '0.8662790697674418');
INSERT INTO `count_student_point` VALUES ('7a273bb863eb46d4ba4817313dd80b28', '2cf2d9b0bae04330a2e0d607734cf388', '040114148', '赵予晴', '7.4', '241.0', '300.0', '0.8033333333333333');
INSERT INTO `count_student_point` VALUES ('7a2b5f32487147f1a2ddea0a67530264', '2cf2d9b0bae04330a2e0d607734cf388', '040114144', '张雅蕾', '4.2', '100.0', '128.0', '0.78125');
INSERT INTO `count_student_point` VALUES ('7b2ccdda484d4bfba95662856172c2b7', '2cf2d9b0bae04330a2e0d607734cf388', '040111101', '陈鑫', '4.2', '77.0', '128.0', '0.6015625');
INSERT INTO `count_student_point` VALUES ('7bdb9a8623ce4361a41db9bbe157bf2e', '2cf2d9b0bae04330a2e0d607734cf388', '040114131', '毛佳瑜', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('7dff57cbbbee466fa889e4eae47bbaf1', '2cf2d9b0bae04330a2e0d607734cf388', '040114130', '徐艺璇', '7.4', '231.0', '300.0', '0.77');
INSERT INTO `count_student_point` VALUES ('7e36af923b674e7c86f6066315b3406e', '2cf2d9b0bae04330a2e0d607734cf388', '040114150', '刘净楠', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('7f3d0bb5982b4f9da7684da5725aa8b4', '2cf2d9b0bae04330a2e0d607734cf388', '040114139', '徐思佳', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('7f7a1738a2844f83adfbf3efb951cf51', '2cf2d9b0bae04330a2e0d607734cf388', '040114133', '谈潇玥', '3.1', '102.0', '172.0', '0.5930232558139535');
INSERT INTO `count_student_point` VALUES ('7f867d37322042fe9cccf9b2175de96c', '2cf2d9b0bae04330a2e0d607734cf388', '040114144', '张雅蕾', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('8278183a33f14e84a706339a248bac8d', '2cf2d9b0bae04330a2e0d607734cf388', '040114135', '沈佳敏', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('82b87e3654e849acac72fcea528910c4', '2cf2d9b0bae04330a2e0d607734cf388', '040114103', '夏汪洋', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('84d7d7ac88574b4b92e5cbaf4eb4e763', '2cf2d9b0bae04330a2e0d607734cf388', '040114138', '陶颖红', '7.4', '249.0', '300.0', '0.83');
INSERT INTO `count_student_point` VALUES ('84e683832d8741a89cd37923465ed7e5', '2cf2d9b0bae04330a2e0d607734cf388', '040114108', '姚籽呈', '8.2', '230.0', '300.0', '0.7666666666666667');
INSERT INTO `count_student_point` VALUES ('8560f1c3868d4c59aef855c0072fc5ae', '2cf2d9b0bae04330a2e0d607734cf388', '040114107', '李志远', '4.2', '98.0', '128.0', '0.765625');
INSERT INTO `count_student_point` VALUES ('85db1b147f814a619e268351224eebdc', '2cf2d9b0bae04330a2e0d607734cf388', '040114120', '陈强', '7.4', '262.0', '300.0', '0.8733333333333333');
INSERT INTO `count_student_point` VALUES ('85f517e481b54987a8402111c0e46744', '2cf2d9b0bae04330a2e0d607734cf388', '040114136', '沈云萍', '4.2', '109.0', '128.0', '0.8515625');
INSERT INTO `count_student_point` VALUES ('86aa500e76c340eeaf460c26b227c4bd', '2cf2d9b0bae04330a2e0d607734cf388', '040114112', '曾乾坤', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('86cc5bbbdfb34b31bdb46cdd96e20d76', '2cf2d9b0bae04330a2e0d607734cf388', '040114108', '姚籽呈', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('86ec41ff595e4efbb505bad2235dbb0a', '2cf2d9b0bae04330a2e0d607734cf388', '040114118', '王宇超', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('8734331a2aa6429da4cafc042b9e16bb', '2cf2d9b0bae04330a2e0d607734cf388', '040114149', '曹静怡', '4.2', '86.0', '128.0', '0.671875');
INSERT INTO `count_student_point` VALUES ('879d91b329a7459ab8b929e983cb9d21', '2cf2d9b0bae04330a2e0d607734cf388', '040114119', '杨顺', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('87d986052c17468b89a99358eea7a7d9', '2cf2d9b0bae04330a2e0d607734cf388', '040114103', '夏汪洋', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('8827025defc045e0b3c914aea63c4492', '2cf2d9b0bae04330a2e0d607734cf388', '040114138', '陶颖红', '4.2', '106.0', '128.0', '0.828125');
INSERT INTO `count_student_point` VALUES ('8a191fa445634fa1875ccf2700d140b0', '2cf2d9b0bae04330a2e0d607734cf388', '040114120', '陈强', '4.2', '112.0', '128.0', '0.875');
INSERT INTO `count_student_point` VALUES ('8b43d3f1cc61455fb90016d019de838a', '2cf2d9b0bae04330a2e0d607734cf388', '040114149', '曹静怡', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('8b7cfbaf1d90436889425c4945f74000', '2cf2d9b0bae04330a2e0d607734cf388', '040114144', '张雅蕾', '3.1', '138.0', '172.0', '0.8023255813953488');
INSERT INTO `count_student_point` VALUES ('8b88f7b189474f36a463b0a8fba5c92b', '2cf2d9b0bae04330a2e0d607734cf388', '040114146', '陶欢', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('8ba45dd180f1407393983c578d6f8895', '2cf2d9b0bae04330a2e0d607734cf388', '040114117', '王锦艺', '3.1', '137.0', '172.0', '0.7965116279069767');
INSERT INTO `count_student_point` VALUES ('8c19df231a014a3796e4b66e94296b5e', '2cf2d9b0bae04330a2e0d607734cf388', '040114124', '万红利', '3.1', '142.0', '172.0', '0.8255813953488372');
INSERT INTO `count_student_point` VALUES ('8c986ddce5364e4caba19e77839b537c', '2cf2d9b0bae04330a2e0d607734cf388', '040114147', '徐蓓佳', '3.1', '127.0', '172.0', '0.7383720930232558');
INSERT INTO `count_student_point` VALUES ('8cb1d2cc072e424b830f9bcf5f4a5de2', '2cf2d9b0bae04330a2e0d607734cf388', '040114140', '程怡婷', '4.2', '87.0', '128.0', '0.6796875');
INSERT INTO `count_student_point` VALUES ('8cc84658e6824fd4be1c9997aa9077bd', '2cf2d9b0bae04330a2e0d607734cf388', '040114120', '陈强', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('8d36a40506be4c65b285bf02e21d82df', '2cf2d9b0bae04330a2e0d607734cf388', '040114122', '魏薇', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('8d5ae5c811de4034bcf0f0c6ffcac405', '2cf2d9b0bae04330a2e0d607734cf388', '', '', '3.1', '0.0', '100.0', '0.0');
INSERT INTO `count_student_point` VALUES ('8e29b76f832b440b83081e88ff6f6e38', '2cf2d9b0bae04330a2e0d607734cf388', '040114146', '陶欢', '3.1', '141.0', '172.0', '0.8197674418604651');
INSERT INTO `count_student_point` VALUES ('8e36fee02b8b4801a1d4fb46c829678e', '2cf2d9b0bae04330a2e0d607734cf388', '040114145', '林琦', '7.4', '270.0', '300.0', '0.9');
INSERT INTO `count_student_point` VALUES ('8e4ac63cd531401080aa5ee9ca640fbd', '2cf2d9b0bae04330a2e0d607734cf388', '040114122', '魏薇', '8.2', '257.0', '300.0', '0.8566666666666667');
INSERT INTO `count_student_point` VALUES ('8fa43016bad4428c9522354bbd32cc77', '2cf2d9b0bae04330a2e0d607734cf388', '040111101', '陈鑫', '3.1', '73.0', '172.0', '0.42441860465116277');
INSERT INTO `count_student_point` VALUES ('9118e2d836bf4f1385c7001a8893221e', '2cf2d9b0bae04330a2e0d607734cf388', '040114118', '王宇超', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('916382d805cc4ce2a274e11f87e55e46', '2cf2d9b0bae04330a2e0d607734cf388', '040114135', '沈佳敏', '4.2', '107.0', '128.0', '0.8359375');
INSERT INTO `count_student_point` VALUES ('9240fff2709949d889d88888ab43b582', '2cf2d9b0bae04330a2e0d607734cf388', '', '', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('92baaf97e9b141e0af5dd16520408925', '2cf2d9b0bae04330a2e0d607734cf388', '040114126', '肖璐琰', '7.4', '258.0', '300.0', '0.86');
INSERT INTO `count_student_point` VALUES ('92c27beda9d34df9b7f18f2c95cbbd92', '2cf2d9b0bae04330a2e0d607734cf388', '040114118', '王宇超', '8.2', '245.0', '300.0', '0.8166666666666667');
INSERT INTO `count_student_point` VALUES ('941e96dd2f944ed3aad22f489e29b178', '2cf2d9b0bae04330a2e0d607734cf388', '040114119', '杨顺', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('94bd242ce53c4dbfa3d0bd2b48a76e44', '2cf2d9b0bae04330a2e0d607734cf388', '040114133', '谈潇玥', '4.2', '87.0', '128.0', '0.6796875');
INSERT INTO `count_student_point` VALUES ('950b69dd232e438cbaa4ce1558e83ef3', '2cf2d9b0bae04330a2e0d607734cf388', '040114150', '刘净楠', '7.4', '246.0', '300.0', '0.82');
INSERT INTO `count_student_point` VALUES ('9569de00ceb6464b9a687f59eda9ff6c', '2cf2d9b0bae04330a2e0d607734cf388', '030314314', '胡莹月', '8.2', '272.0', '300.0', '0.9066666666666666');
INSERT INTO `count_student_point` VALUES ('95aef92206294045bfaf3b58a46cde85', '2cf2d9b0bae04330a2e0d607734cf388', '040114142', '孙雨亭', '8.2', '279.0', '300.0', '0.93');
INSERT INTO `count_student_point` VALUES ('96328937ed094948ac30fc9ff7ed35ae', '2cf2d9b0bae04330a2e0d607734cf388', '040114141', '徐静', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('969b74cf86ad49a7a1204bbc9f539216', '2cf2d9b0bae04330a2e0d607734cf388', '040114112', '曾乾坤', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('97a9d19a294b44f3bf8a505f7720ef8b', '2cf2d9b0bae04330a2e0d607734cf388', '040114112', '曾乾坤', '8.2', '264.0', '300.0', '0.88');
INSERT INTO `count_student_point` VALUES ('97ae9442c8f34ec1976d3980563eefb2', '2cf2d9b0bae04330a2e0d607734cf388', '040114132', '沈宽', '3.1', '160.0', '172.0', '0.9302325581395349');
INSERT INTO `count_student_point` VALUES ('97f72d49a9d840288dd7516bd5c02845', '2cf2d9b0bae04330a2e0d607734cf388', '040114149', '曹静怡', '7.4', '241.0', '300.0', '0.8033333333333333');
INSERT INTO `count_student_point` VALUES ('9a27a6638452437d8631d622ef283e55', '2cf2d9b0bae04330a2e0d607734cf388', '040114132', '沈宽', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('9a61d2ad8bf24b5b8fc3425ba92e1beb', '2cf2d9b0bae04330a2e0d607734cf388', '040114116', '马嘉禾', '4.2', '106.0', '128.0', '0.828125');
INSERT INTO `count_student_point` VALUES ('9b597ec743d3419cb13709b5d009232d', '2cf2d9b0bae04330a2e0d607734cf388', '040114110', '杜志沅', '3.1', '95.0', '172.0', '0.5523255813953488');
INSERT INTO `count_student_point` VALUES ('9bb1a9e06d4d4594993c031ded63fe5d', '2cf2d9b0bae04330a2e0d607734cf388', '040114105', '宋金钱', '7.4', '232.0', '300.0', '0.7733333333333333');
INSERT INTO `count_student_point` VALUES ('9cec02d20ec740baa999769eb8f261d6', '2cf2d9b0bae04330a2e0d607734cf388', '040111101', '陈鑫', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('9d43757ed77a4376bf5fe976e4757425', '2cf2d9b0bae04330a2e0d607734cf388', '040114103', '夏汪洋', '3.1', '108.0', '172.0', '0.627906976744186');
INSERT INTO `count_student_point` VALUES ('9e992656e67846d68c87c4d170f1a158', '2cf2d9b0bae04330a2e0d607734cf388', '040114111', '易川江', '4.2', '88.0', '128.0', '0.6875');
INSERT INTO `count_student_point` VALUES ('a10e4b98fd114b35adb6bddee7aea36d', '2cf2d9b0bae04330a2e0d607734cf388', '040114117', '王锦艺', '8.2', '262.0', '300.0', '0.8733333333333333');
INSERT INTO `count_student_point` VALUES ('a216d5e89a5a455ea3a44efa95e65acc', '2cf2d9b0bae04330a2e0d607734cf388', '040114137', '何铭', '8.2', '242.0', '300.0', '0.8066666666666666');
INSERT INTO `count_student_point` VALUES ('a252ced0557c4064a258e5944963e540', '2cf2d9b0bae04330a2e0d607734cf388', '040114105', '宋金钱', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('a32dc91808b4434c8ba5436b47acfebf', '2cf2d9b0bae04330a2e0d607734cf388', '040114141', '徐静', '3.1', '133.0', '172.0', '0.7732558139534884');
INSERT INTO `count_student_point` VALUES ('a3b8b38622014546b1d6b3962ecd921d', '2cf2d9b0bae04330a2e0d607734cf388', '040114142', '孙雨亭', '4.2', '109.0', '128.0', '0.8515625');
INSERT INTO `count_student_point` VALUES ('a48e6548e1b2417ba4345ab29cc31aa8', '2cf2d9b0bae04330a2e0d607734cf388', '040114115', '凌华', '3.1', '137.0', '172.0', '0.7965116279069767');
INSERT INTO `count_student_point` VALUES ('a499852406a5453a9a2873c3c38b911d', '2cf2d9b0bae04330a2e0d607734cf388', '030314314', '胡莹月', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('a51dea9914e840069fc0cafe79411d71', '2cf2d9b0bae04330a2e0d607734cf388', '040114130', '徐艺璇', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('a5dad352312849f7bfbc43028a8a117c', '2cf2d9b0bae04330a2e0d607734cf388', '040114137', '何铭', '3.1', '161.0', '172.0', '0.936046511627907');
INSERT INTO `count_student_point` VALUES ('a6086366b0794442a0668b350cde3354', '2cf2d9b0bae04330a2e0d607734cf388', '040114142', '孙雨亭', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('a6bc5289c8ce495b8e9e410a81784178', '2cf2d9b0bae04330a2e0d607734cf388', '040114115', '凌华', '8.2', '230.0', '300.0', '0.7666666666666667');
INSERT INTO `count_student_point` VALUES ('a737eedd52574d94bbf50c6688ebe5dd', '2cf2d9b0bae04330a2e0d607734cf388', '040114127', '姚心怡', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('a8797a26336a4e79a72fb70bed491b32', '2cf2d9b0bae04330a2e0d607734cf388', '040114114', '顾康能', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('ab589a18fde744d2bda34aef0477bf6f', '2cf2d9b0bae04330a2e0d607734cf388', '040114128', '张玲燕', '7.4', '254.0', '300.0', '0.8466666666666667');
INSERT INTO `count_student_point` VALUES ('abd5aba6e51c48e2945cdfeae1572089', '2cf2d9b0bae04330a2e0d607734cf388', '040114122', '魏薇', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('ac1e42af8d784695862a318aaf96f6cd', '2cf2d9b0bae04330a2e0d607734cf388', '040114150', '刘净楠', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('ac6f2fe00cbc45deb8df9c5b80b8fd85', '2cf2d9b0bae04330a2e0d607734cf388', '040114130', '徐艺璇', '3.1', '158.0', '172.0', '0.9186046511627907');
INSERT INTO `count_student_point` VALUES ('adaa5ac800854674bdbed5b6ea62256e', '2cf2d9b0bae04330a2e0d607734cf388', '040114140', '程怡婷', '8.2', '226.0', '300.0', '0.7533333333333333');
INSERT INTO `count_student_point` VALUES ('ade842f8713940b990d8f2c9ca825233', '2cf2d9b0bae04330a2e0d607734cf388', '040114123', '古丹', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('ae35aab12242493bab3099379e5f7e42', '2cf2d9b0bae04330a2e0d607734cf388', '040114140', '程怡婷', '7.4', '226.0', '300.0', '0.7533333333333333');
INSERT INTO `count_student_point` VALUES ('afa34d452fc34c75bbe66f246713cb16', '2cf2d9b0bae04330a2e0d607734cf388', '040114112', '曾乾坤', '7.4', '264.0', '300.0', '0.88');
INSERT INTO `count_student_point` VALUES ('b00171cbd4c1416493429a51f037701b', '2cf2d9b0bae04330a2e0d607734cf388', '040114139', '徐思佳', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('b035cde725994614b20f8580494b751f', '2cf2d9b0bae04330a2e0d607734cf388', '040114116', '马嘉禾', '3.1', '144.0', '172.0', '0.8372093023255814');
INSERT INTO `count_student_point` VALUES ('b11116498135466fb1bbd888634c9591', '2cf2d9b0bae04330a2e0d607734cf388', '040114116', '马嘉禾', '7.4', '224.0', '300.0', '0.7466666666666667');
INSERT INTO `count_student_point` VALUES ('b225803582f14503a5a523222258b2a7', '2cf2d9b0bae04330a2e0d607734cf388', '040114115', '凌华', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('b2ecdc1fde914923aa18bc04b36d2b35', '2cf2d9b0bae04330a2e0d607734cf388', '040614138', '吴顺婷', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('b469b5ffe7cc4221bb89bc2829e5b105', '2cf2d9b0bae04330a2e0d607734cf388', '040114134', '赵雨婷', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('b547329dc0ba4cd297bcb8e00f558d9e', '2cf2d9b0bae04330a2e0d607734cf388', '040114114', '顾康能', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('b611b3bd83a446b0adc3de7c15f058fa', '2cf2d9b0bae04330a2e0d607734cf388', '040114115', '凌华', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('b703c4b9b10d4d2b84f9e8d01703f5f2', '2cf2d9b0bae04330a2e0d607734cf388', '040114149', '曹静怡', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('ba0ab50edb754e8b9315ebc6eed98405', '2cf2d9b0bae04330a2e0d607734cf388', '040114108', '姚籽呈', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('bbabb879ef80417d9465f6431d2ba026', '2cf2d9b0bae04330a2e0d607734cf388', '040114136', '沈云萍', '8.2', '244.0', '300.0', '0.8133333333333334');
INSERT INTO `count_student_point` VALUES ('bbc0b0a8f4e24e31bad06d5b330ef94f', '2cf2d9b0bae04330a2e0d607734cf388', '040114123', '古丹', '7.4', '248.0', '300.0', '0.8266666666666667');
INSERT INTO `count_student_point` VALUES ('bc513674dcfc4d5da12ea59206595963', '2cf2d9b0bae04330a2e0d607734cf388', '040114132', '沈宽', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('bd8273a215f44474bd8331461ca0c651', '2cf2d9b0bae04330a2e0d607734cf388', '040114143', '王晓蕾', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('bd91ffd64b9d4dfba88db5cbf9dc7658', '2cf2d9b0bae04330a2e0d607734cf388', '040114123', '古丹', '8.2', '248.0', '300.0', '0.8266666666666667');
INSERT INTO `count_student_point` VALUES ('be0dd190277c411cb44cc38de4d79722', '2cf2d9b0bae04330a2e0d607734cf388', '040214211', '马也骋', '4.2', '102.0', '128.0', '0.796875');
INSERT INTO `count_student_point` VALUES ('be2f621a96ae42889c765b9b9e81b98e', '2cf2d9b0bae04330a2e0d607734cf388', '040114138', '陶颖红', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('be6d5cfa8a354c0e9af51d1736a36e54', '2cf2d9b0bae04330a2e0d607734cf388', '040111101', '陈鑫', '8.2', '242.0', '300.0', '0.8066666666666666');
INSERT INTO `count_student_point` VALUES ('bef504c86c944f2e9ea5dfe3280c0abd', '2cf2d9b0bae04330a2e0d607734cf388', '040114108', '姚籽呈', '4.2', '87.0', '128.0', '0.6796875');
INSERT INTO `count_student_point` VALUES ('bf949b83d77a4deb9771b64fc53ca688', '2cf2d9b0bae04330a2e0d607734cf388', '040114120', '陈强', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('c0efd6e5f74540d6ac17da81a4a9fee3', '2cf2d9b0bae04330a2e0d607734cf388', '040114116', '马嘉禾', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('c1b5f40819f543e6ab9bc1ac46b3a1e3', '2cf2d9b0bae04330a2e0d607734cf388', '040214211', '马也骋', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('c2b466d1acc14242b73eba17f0180712', '2cf2d9b0bae04330a2e0d607734cf388', '040114133', '谈潇玥', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('c2ff40fea52d403ca82dba53e67a4869', '2cf2d9b0bae04330a2e0d607734cf388', '050114133', '张琦', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('c3a2c3ffc091481b9a451d57f941e20a', '2cf2d9b0bae04330a2e0d607734cf388', '040114147', '徐蓓佳', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('c5ac8787a95248efb3eddc66fef0616b', '2cf2d9b0bae04330a2e0d607734cf388', '', '', '4.2', '0.0', '100.0', '0.0');
INSERT INTO `count_student_point` VALUES ('c5e56b5affee4fc6b58b6e7b2d01056b', '2cf2d9b0bae04330a2e0d607734cf388', '040614138', '吴顺婷', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('c8d5c54c7f434ed9816a518fd5b56e5e', '2cf2d9b0bae04330a2e0d607734cf388', '040114112', '曾乾坤', '4.2', '73.0', '128.0', '0.5703125');
INSERT INTO `count_student_point` VALUES ('c9308671601148fba51584943e38c44e', '2cf2d9b0bae04330a2e0d607734cf388', '040114148', '赵予晴', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('c93e01e680f8493f8909e67d9fe96bf9', '2cf2d9b0bae04330a2e0d607734cf388', '040114132', '沈宽', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('ca276310fa954a35906c26096ba9b2cb', '2cf2d9b0bae04330a2e0d607734cf388', '050114133', '张琦', '7.4', '272.0', '300.0', '0.9066666666666666');
INSERT INTO `count_student_point` VALUES ('cac1e84785ef4d028b3837a171142d04', '2cf2d9b0bae04330a2e0d607734cf388', '040114149', '曹静怡', '8.2', '241.0', '300.0', '0.8033333333333333');
INSERT INTO `count_student_point` VALUES ('cb1474ca40fe4e12846c364cccc3a56f', '2cf2d9b0bae04330a2e0d607734cf388', '040114111', '易川江', '7.4', '232.0', '300.0', '0.7733333333333333');
INSERT INTO `count_student_point` VALUES ('cbe6954c4ef24827b7b5b60546b86188', '2cf2d9b0bae04330a2e0d607734cf388', '040114139', '徐思佳', '3.1', '162.0', '172.0', '0.9418604651162791');
INSERT INTO `count_student_point` VALUES ('cd22e00493cb4d66b84552d6d95629ca', '2cf2d9b0bae04330a2e0d607734cf388', '040114150', '刘净楠', '8.2', '246.0', '300.0', '0.82');
INSERT INTO `count_student_point` VALUES ('cdb8d3a0083048f897acd80bf3695862', '2cf2d9b0bae04330a2e0d607734cf388', '040114116', '马嘉禾', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('cdc39068f0074888bcf4766dcf41b0e7', '2cf2d9b0bae04330a2e0d607734cf388', '040114135', '沈佳敏', '3.1', '142.0', '172.0', '0.8255813953488372');
INSERT INTO `count_student_point` VALUES ('cdce6c02a2a64631a237450888df0580', '2cf2d9b0bae04330a2e0d607734cf388', '050114133', '张琦', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('d08362cf9fd944e6ad0da1e3b37a800b', '2cf2d9b0bae04330a2e0d607734cf388', '040114137', '何铭', '4.2', '117.0', '128.0', '0.9140625');
INSERT INTO `count_student_point` VALUES ('d0eb60c1e20e46709638d5ad8eafba23', '2cf2d9b0bae04330a2e0d607734cf388', '040114134', '赵雨婷', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('d227080f36fe49348bd6a0ca90a007a4', '2cf2d9b0bae04330a2e0d607734cf388', '041414239', '戴心雨', '8.2', '256.0', '300.0', '0.8533333333333334');
INSERT INTO `count_student_point` VALUES ('d3ec7211e33c4c2abe244d153600bc17', '2cf2d9b0bae04330a2e0d607734cf388', '040111101', '陈鑫', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('d4247f13197b43aeb2cbdccef1eabaec', '2cf2d9b0bae04330a2e0d607734cf388', '040114133', '谈潇玥', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('d5039f757f6941928df0aaf1cddf80c4', '2cf2d9b0bae04330a2e0d607734cf388', '040114135', '沈佳敏', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('d5ca266f5d3c4ade8e5c047967742ef6', '2cf2d9b0bae04330a2e0d607734cf388', '040114150', '刘净楠', '3.1', '98.0', '172.0', '0.5697674418604651');
INSERT INTO `count_student_point` VALUES ('d6083368fdec47278de3ff487d5d44d7', '2cf2d9b0bae04330a2e0d607734cf388', '040114103', '夏汪洋', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('d89572c1052f46618d76b272c7494f89', '2cf2d9b0bae04330a2e0d607734cf388', '040114129', '景莉洁', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('d89be5487a31435aa78b67e301208690', '2cf2d9b0bae04330a2e0d607734cf388', '040114129', '景莉洁', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('d8b4441b7d54462cb4b4cec5c26b882e', '2cf2d9b0bae04330a2e0d607734cf388', '040114119', '杨顺', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('d9e9261bc9f84baaa8d0e1b9cd019b0d', '2cf2d9b0bae04330a2e0d607734cf388', '040114105', '宋金钱', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('dbfcc2e69df040a2891955ac395738b6', '2cf2d9b0bae04330a2e0d607734cf388', '040114103', '夏汪洋', '8.2', '220.0', '300.0', '0.7333333333333333');
INSERT INTO `count_student_point` VALUES ('dc3ceb204eb349efb9479e37a1a60503', '2cf2d9b0bae04330a2e0d607734cf388', '040114132', '沈宽', '8.2', '271.0', '300.0', '0.9033333333333333');
INSERT INTO `count_student_point` VALUES ('dde2df2f37bb4a779af264235c66c2ef', '2cf2d9b0bae04330a2e0d607734cf388', '040114126', '肖璐琰', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('de5434c02eef4ae69edd50b00f0f3331', '2cf2d9b0bae04330a2e0d607734cf388', '040114110', '杜志沅', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('dfb611d2a78e4f76bb83a12ccb43e99c', '2cf2d9b0bae04330a2e0d607734cf388', '040114119', '杨顺', '8.2', '257.0', '300.0', '0.8566666666666667');
INSERT INTO `count_student_point` VALUES ('e3131e64f94a47da847338f4d36a0100', '2cf2d9b0bae04330a2e0d607734cf388', '040114127', '姚心怡', '4.2', '117.0', '128.0', '0.9140625');
INSERT INTO `count_student_point` VALUES ('e397f57fe25e45efa6cbc52b003e09ed', '2cf2d9b0bae04330a2e0d607734cf388', '040114143', '王晓蕾', '4.2', '106.0', '128.0', '0.828125');
INSERT INTO `count_student_point` VALUES ('e5f91a9f31bf43cab7785f26ba98cdf1', '2cf2d9b0bae04330a2e0d607734cf388', '040114117', '王锦艺', '7.4', '262.0', '300.0', '0.8733333333333333');
INSERT INTO `count_student_point` VALUES ('e60560126a794fa5abbbf3a278861038', '2cf2d9b0bae04330a2e0d607734cf388', '040114105', '宋金钱', '8.2', '232.0', '300.0', '0.7733333333333333');
INSERT INTO `count_student_point` VALUES ('e78e962ca8524d0fa1d427f206297dab', '2cf2d9b0bae04330a2e0d607734cf388', '040114145', '林琦', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('e7dade3e48ce4384a01f6dea61eb4fe2', '2cf2d9b0bae04330a2e0d607734cf388', '040114136', '沈云萍', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('e7dd657188464d7eaa327bca613fbdba', '2cf2d9b0bae04330a2e0d607734cf388', '040114129', '景莉洁', '8.2', '233.0', '300.0', '0.7766666666666666');
INSERT INTO `count_student_point` VALUES ('e83280f1ce4a4d8ebb4098d187bedb59', '2cf2d9b0bae04330a2e0d607734cf388', '040114137', '何铭', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('e8d526a9226d40eeb490a99595085325', '2cf2d9b0bae04330a2e0d607734cf388', '050114133', '张琦', '4.2', '82.0', '128.0', '0.640625');
INSERT INTO `count_student_point` VALUES ('e9820d2c26d84ec4ac797507eb7ab6bf', '2cf2d9b0bae04330a2e0d607734cf388', '040114146', '陶欢', '8.2', '221.0', '300.0', '0.7366666666666667');
INSERT INTO `count_student_point` VALUES ('e9decb1007c64adb9f30c4832d84f166', '2cf2d9b0bae04330a2e0d607734cf388', '040114138', '陶颖红', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('ea2fd70d2e264ce1acd56f60b5070220', '2cf2d9b0bae04330a2e0d607734cf388', '040114115', '凌华', '7.4', '230.0', '300.0', '0.7666666666666667');
INSERT INTO `count_student_point` VALUES ('eb18f672f0c340b4bef70ca272b0acf2', '2cf2d9b0bae04330a2e0d607734cf388', '040114148', '赵予晴', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('ebf90a233b4144e6a7e99b6938570ca2', '2cf2d9b0bae04330a2e0d607734cf388', '040114148', '赵予晴', '4.2', '97.0', '128.0', '0.7578125');
INSERT INTO `count_student_point` VALUES ('ecd9ee9d64a04a04bdbd2284ca2cee78', '2cf2d9b0bae04330a2e0d607734cf388', '040114148', '赵予晴', '8.2', '241.0', '300.0', '0.8033333333333333');
INSERT INTO `count_student_point` VALUES ('ed90923f7d784b238094451b3c3cfa38', '2cf2d9b0bae04330a2e0d607734cf388', '040111101', '陈鑫', '7.4', '242.0', '300.0', '0.8066666666666666');
INSERT INTO `count_student_point` VALUES ('eda746a147a045098d92aa0858c1b234', '2cf2d9b0bae04330a2e0d607734cf388', '040114105', '宋金钱', '3.1', '117.0', '172.0', '0.6802325581395349');
INSERT INTO `count_student_point` VALUES ('eff38560853d4a60869158b93e7ca41d', '2cf2d9b0bae04330a2e0d607734cf388', '040114130', '徐艺璇', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('f02b2cf175604934a699d06b43cfd04f', '2cf2d9b0bae04330a2e0d607734cf388', '040114144', '张雅蕾', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('f0a8c7526e4d4de18609e406c53f88d7', '2cf2d9b0bae04330a2e0d607734cf388', '040114110', '杜志沅', '4.2', '76.0', '128.0', '0.59375');
INSERT INTO `count_student_point` VALUES ('f106efb6a6534e9bb3221e0fcbbaac21', '2cf2d9b0bae04330a2e0d607734cf388', '040114114', '顾康能', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('f14972648fc4448283ab911faaf9ac56', '2cf2d9b0bae04330a2e0d607734cf388', '030314314', '胡莹月', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('f2a68fe74831452a90e83952e3492889', '2cf2d9b0bae04330a2e0d607734cf388', '040114140', '程怡婷', '3.1', '122.0', '172.0', '0.7093023255813954');
INSERT INTO `count_student_point` VALUES ('f2c1360fa9504898bd8951205bb9d36a', '2cf2d9b0bae04330a2e0d607734cf388', '040114147', '徐蓓佳', '8.2', '262.0', '300.0', '0.8733333333333333');
INSERT INTO `count_student_point` VALUES ('f309857c647a4e8ba129813d81aa4789', '2cf2d9b0bae04330a2e0d607734cf388', '040114145', '林琦', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('f31cf5a2aae448419948bc209ddac878', '2cf2d9b0bae04330a2e0d607734cf388', '040114127', '姚心怡', '8.2', '245.0', '300.0', '0.8166666666666667');
INSERT INTO `count_student_point` VALUES ('f343a79bcfca46199dcf4948e5bc4efb', '2cf2d9b0bae04330a2e0d607734cf388', '040114126', '肖璐琰', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('f470565515f644858787fc1db4bedee5', '2cf2d9b0bae04330a2e0d607734cf388', '040114112', '曾乾坤', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('f6f1e3bd42074a1d8050ef96c3dabadd', '2cf2d9b0bae04330a2e0d607734cf388', '040114124', '万红利', '4.2', '102.0', '128.0', '0.796875');
INSERT INTO `count_student_point` VALUES ('f7429a6d48da4d92a8977be01cf2a88c', '2cf2d9b0bae04330a2e0d607734cf388', '040114139', '徐思佳', '8.2', '249.0', '300.0', '0.83');
INSERT INTO `count_student_point` VALUES ('f7839db9c5b64c06af3b2505169ea1f7', '2cf2d9b0bae04330a2e0d607734cf388', '050114133', '张琦', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('f7aacbee63fd4008b1c712a14e6aa280', '2cf2d9b0bae04330a2e0d607734cf388', '040114124', '万红利', '8.2', '264.0', '300.0', '0.88');
INSERT INTO `count_student_point` VALUES ('f7bc90159321432b8537a4191b7eb07a', '2cf2d9b0bae04330a2e0d607734cf388', '040114116', '马嘉禾', '7.1', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('f7f1274d47dc4d428e533b5d24a4c21a', '2cf2d9b0bae04330a2e0d607734cf388', '040114105', '宋金钱', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('f9064ba3c0a3423fa5039b02d0a9022e', '2cf2d9b0bae04330a2e0d607734cf388', '040114110', '杜志沅', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('f907d79022034e0487c802e9ff0589be', '2cf2d9b0bae04330a2e0d607734cf388', '040114146', '陶欢', '7.4', '221.0', '300.0', '0.7366666666666667');
INSERT INTO `count_student_point` VALUES ('f913e073ed9342c1be9f84d7cecb798d', '2cf2d9b0bae04330a2e0d607734cf388', '040114137', '何铭', '3.4', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('f95894e8e8c04c67bcfe42876833f902', '2cf2d9b0bae04330a2e0d607734cf388', '040114138', '陶颖红', '8.2', '249.0', '300.0', '0.83');
INSERT INTO `count_student_point` VALUES ('f9bb3a3fd4b3495f8b089253c5d0f4e0', '2cf2d9b0bae04330a2e0d607734cf388', '040114147', '徐蓓佳', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('fa8d0904139747e785f14e6737eaa2d1', '2cf2d9b0bae04330a2e0d607734cf388', '040114145', '林琦', '8.2', '270.0', '300.0', '0.9');
INSERT INTO `count_student_point` VALUES ('fa9d6b8bc6714f74a17203c425f48ee6', '2cf2d9b0bae04330a2e0d607734cf388', '040114120', '陈强', '3.1', '142.0', '172.0', '0.8255813953488372');
INSERT INTO `count_student_point` VALUES ('fb952e1d3cf74e8cb5e5d7c689553697', '2cf2d9b0bae04330a2e0d607734cf388', '040114135', '沈佳敏', '6.2', '0.0', '0.0', '0.0');
INSERT INTO `count_student_point` VALUES ('fcfaf8d150a64fae82a000983b41ebcc', '2cf2d9b0bae04330a2e0d607734cf388', '040114120', '陈强', '8.2', '262.0', '300.0', '0.8733333333333333');
INSERT INTO `count_student_point` VALUES ('fdf0d3a4dad24f728dc269e60dc85f7f', '2cf2d9b0bae04330a2e0d607734cf388', '040114149', '曹静怡', '3.1', '125.0', '172.0', '0.7267441860465116');
INSERT INTO `count_student_point` VALUES ('fee1ebf35fab4dbab233da25b216317b', '2cf2d9b0bae04330a2e0d607734cf388', '040114103', '夏汪洋', '4.2', '90.0', '128.0', '0.703125');

-- ----------------------------
-- Table structure for `index_point`
-- ----------------------------
DROP TABLE IF EXISTS `index_point`;
CREATE TABLE `index_point` (
  `id` varchar(36) NOT NULL,
  `year` varchar(255) DEFAULT NULL COMMENT '指标点年份',
  `major` varchar(255) DEFAULT NULL COMMENT '专业',
  `point` int(2) DEFAULT NULL COMMENT '指标点12个大能力（无用）',
  `indexPointDot` varchar(255) DEFAULT NULL COMMENT '指标点',
  `courseName` varchar(255) DEFAULT NULL COMMENT '课程名',
  `qz` varchar(255) DEFAULT NULL COMMENT '指标点权重',
  `bfb` varchar(255) DEFAULT NULL COMMENT '指标点权重对应百分比',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of index_point
-- ----------------------------
INSERT INTO `index_point` VALUES ('00ddbf9ae2d242d2b1bd9c70548cda8a', '2019', '数学师范', '2', '2.2', '数学思想方法', 'L', '20');
INSERT INTO `index_point` VALUES ('010a7d614cdc44c3b640c42bc8acf309', '2019', '数学师范', '2', '2.2', '分析续论', 'L', '20');
INSERT INTO `index_point` VALUES ('0151b18e70e443be81c9cffb3a327851', '2019', '数学师范', '8', '8.2', '大学英语1', 'M', '30');
INSERT INTO `index_point` VALUES ('01e38acea103495e9e399de862c6c52a', '2019', '数学师范', '2', '2.2', '微分几何', 'L', '20');
INSERT INTO `index_point` VALUES ('0268d487b4cf404384ef55a94e551637', '2019', '数学师范', '6', '6.1', '数学教育心理', 'M', '30');
INSERT INTO `index_point` VALUES ('02730f302e3c4e35be75acf1df43774d', '2019', '数学师范', '6', '6.2', '数学分析3', 'L', '20');
INSERT INTO `index_point` VALUES ('0414d693607b4baaa7e4cefbe3a35460', '2019', '数学师范', '4', '4.2', '小学数学教与学', 'H', '50');
INSERT INTO `index_point` VALUES ('04ce5c17a5bf4e88baf7957ee864bb1b', '2019', '数学师范', '7', '7.1', '毕业设计（论文）', 'H', '50');
INSERT INTO `index_point` VALUES ('06150c90fa4148e9b49cbd5965124bb8', '2019', '数学师范', '4', '4.1', '未来数学课堂设计', 'H', '50');
INSERT INTO `index_point` VALUES ('066512b38a4a4b74ab4e535e55cfb68d', '2019', '数学师范', '4', '4.3', '大学计算机技术', 'L', '20');
INSERT INTO `index_point` VALUES ('0744608746da4bed8f10d5bc6b49ca94', '2019', '数学师范', '7', '7.2', '数学史选讲', 'L', '20');
INSERT INTO `index_point` VALUES ('080580fc508143b28133e01798466d65', '2019', '数学师范', '4', '4.4', '数学微格教学', 'L', '20');
INSERT INTO `index_point` VALUES ('08f28e2eb49242d7b73d483234f2f685', '2019', '数学师范', '3', '3.1', '数学分析1', 'M', '30');
INSERT INTO `index_point` VALUES ('0b3e26e0ff9842fbb1ef804ecf1e7c38', '2019', '数学师范', '7', '7.2', '大学英语3', 'M', '30');
INSERT INTO `index_point` VALUES ('0b963cfdc59d4c7c87d16ba6c922903f', '2019', '数学师范', '8', '8.1', '未来数学课堂设计', 'H', '50');
INSERT INTO `index_point` VALUES ('0b975be2b7904378aa5032f686f1e9c6', '2019', '数学师范', '7', '7.2', '数学思想方法', 'M', '30');
INSERT INTO `index_point` VALUES ('0bc2c3bfedc347f3adc660e5829f3502', '2019', '数学师范', '7', '7.4', '毕业设计（论文）', 'H', '50');
INSERT INTO `index_point` VALUES ('0c57235543b9441b83983bf0cade1e6b', '2019', '数学师范', '2', '2.3', '大学生心理健康教育', 'L', '20');
INSERT INTO `index_point` VALUES ('0d64e10a91e44bb9b3ace60c08784946', '2019', '数学师范', '6', '6.2', '常微分方程', 'L', '20');
INSERT INTO `index_point` VALUES ('0d68da3abf0b46c68dbf5532a6d7423c', '2019', '数学师范', '3', '3.2', '实变函数', 'L', '20');
INSERT INTO `index_point` VALUES ('0db9d9513316487bb8182600e95b9310', '2019', '数学师范', '8', '8.2', '初等数学研究2', 'M', '30');
INSERT INTO `index_point` VALUES ('0e1d17317888492e971ebaa43f9b0669', '2019', '数学师范', '7', '7.1', '概率统计', 'L', '20');
INSERT INTO `index_point` VALUES ('0ea7b540808e4312ab2b16486e02fba8', '2019', '数学师范', '2', '2.2', '初等数论', 'L', '20');
INSERT INTO `index_point` VALUES ('0ed5d0c6182d4eb284c0f5b2b64109ff', '2019', '数学师范', '8', '8.2', '中级口语2', 'M', '30');
INSERT INTO `index_point` VALUES ('0fc1a0879a1246c29026eb6b8c9e5124', '2019', '数学师范', '1', '1.2', '大学生职业发展与创业教育', 'H', '50');
INSERT INTO `index_point` VALUES ('0ff17794e0484401a27868414085bfd2', '2019', '数学师范', '7', '7.3', '教育见习', 'L', '20');
INSERT INTO `index_point` VALUES ('10354f85fa6f4c1fab2f03f64f482832', '2019', '数学师范', '2', '2.2', '数学分析1', 'L', '20');
INSERT INTO `index_point` VALUES ('105dd2a15c0a45e4a0c8fad068456055', '2019', '数学师范', '7', '7.2', '大学英语2', 'M', '30');
INSERT INTO `index_point` VALUES ('105f7d84d9b3495a8a6b18b70ea8fad1', '2019', '数学师范', '3', '3.1', '数学分析2', 'H', '50');
INSERT INTO `index_point` VALUES ('11ae95f52ca749558333e0a7be5eae3c', '2019', '数学师范', '7', '7.1', '计算机辅助教学', 'L', '20');
INSERT INTO `index_point` VALUES ('1289fa13bfde4e93af05982492855e0e', '2019', '数学师范', '1', '1.1', '思想道德修养与法律基础', 'H', '50');
INSERT INTO `index_point` VALUES ('12d0da0818ee4a76a07098f6c5b693b9', '2019', '数学师范', '3', '3.3', '教育统计与测评', 'H', '50');
INSERT INTO `index_point` VALUES ('146a982387a14962a8e692a48d6f0025', '2019', '数学师范', '4', '4.1', '教师语言技能', 'L', '20');
INSERT INTO `index_point` VALUES ('14e14f4ee0564c559f25d2f187c24c7c', '2019', '数学师范', '2', '2.2', '常微分方程', 'L', '20');
INSERT INTO `index_point` VALUES ('14f06b23c29445f9ac49d3146adc8a1c', '2019', '数学师范', '3', '3.1', '数学分析3', 'M', '30');
INSERT INTO `index_point` VALUES ('17dfd4a3fd9149b5a258d87475732802', '2019', '数学师范', '7', '7.1', '入学教育', 'L', '20');
INSERT INTO `index_point` VALUES ('17ea230978e3454f984b8fbb36c07494', '2019', '数学师范', '5', '5.1', '教育实习', 'H', '50');
INSERT INTO `index_point` VALUES ('18e57231971247749e8c3c951a6c71ed', '2019', '数学师范', '2', '2.2', '心理学基础', 'H', '50');
INSERT INTO `index_point` VALUES ('1ea7c331c99f4a5b8f87731dc1ae738f', '2019', '数学师范', '7', '7.1', '写作与表达', 'H', '50');
INSERT INTO `index_point` VALUES ('1ecd247ce8634114ae0100731531b5c8', '2019', '数学师范', '6', '6.2', '初等数学研究1', 'L', '20');
INSERT INTO `index_point` VALUES ('1f44f1031cde4e2e8b075cee94033579', '2019', '数学师范', '8', '8.2', '综合实践活动课程设计', 'H', '50');
INSERT INTO `index_point` VALUES ('1fa27c91506249e1b574a7076d5784d4', '2019', '数学师范', '3', '3.1', '数学思想方法', 'L', '20');
INSERT INTO `index_point` VALUES ('2343087c4d2140548179685e5ff40729', '2019', '数学师范', '5', '5.2', '教育见习', 'H', '50');
INSERT INTO `index_point` VALUES ('238c05c2d0884d6b841319cc67e64b4a', '2019', '数学师范', '8', '8.2', '大学英语2', 'M', '30');
INSERT INTO `index_point` VALUES ('245a73f68b224a18bd288025fc36fb80', '2019', '数学师范', '1', '1.2', '班级管理与班主任工作', 'M', '30');
INSERT INTO `index_point` VALUES ('24918a0b297248ecae71bb1fa8d81b1a', '2019', '数学师范', '3', '3.4', '高等代数与解析几何1', 'M', '30');
INSERT INTO `index_point` VALUES ('25d270b0ab2a487ca6bc962e0a04c7fc', '2019', '数学师范', '4', '4.3', '小学数学教与学', 'H', '50');
INSERT INTO `index_point` VALUES ('26ffdb2052494cf59bb96ecaadfa94c2', '2019', '数学师范', '5', '5.2', '教育实习', 'H', '50');
INSERT INTO `index_point` VALUES ('299c50f9fac74e85bb502419c0a6ef8f', '2019', '数学师范', '7', '7.3', '数学教学论', 'M', '30');
INSERT INTO `index_point` VALUES ('29eef01729284396a736ffe464f330ba', '2019', '数学师范', '3', '3.4', '数学分析2', 'H', '50');
INSERT INTO `index_point` VALUES ('2b2adbd10007477ca4a601e612ff3072', '2019', '数学师范', '3', '3.2', '运筹学', 'M', '30');
INSERT INTO `index_point` VALUES ('2cc137d555df42e6931e890add71fa80', '2019', '数学师范', '7', '7.1', '大学英语1', 'M', '30');
INSERT INTO `index_point` VALUES ('302544a4b30140a5bb52a570d43d4bbd', '2019', '数学师范', '7', '7.4', '写作与表达', 'H', '50');
INSERT INTO `index_point` VALUES ('31721ea3152e4400800a6db9aefe6d86', '2019', '数学师范', '6', '6.2', '中学数学现代基础', 'L', '20');
INSERT INTO `index_point` VALUES ('317d47d5ce66454786009d4930d053e5', '2019', '数学师范', '7', '7.1', '小学数学教与学', 'M', '30');
INSERT INTO `index_point` VALUES ('32ea72931eee44e1b7a4e0b4fb40315d', '2019', '数学师范', '7', '7.1', '大学英语进阶1', 'M', '30');
INSERT INTO `index_point` VALUES ('338baa15fd59494bafc4c94c240e0a97', '2019', '数学师范', '4', '4.3', '数学教学软件应用', 'L', '20');
INSERT INTO `index_point` VALUES ('339c331d7d05498ca6edb17805bce7d6', '2019', '数学师范', '8', '8.2', '写作与表达', 'L', '20');
INSERT INTO `index_point` VALUES ('341488c2628a430e82dab4e64efd9d8d', '2019', '数学师范', '3', '3.3', '大学物理C2', 'L', '20');
INSERT INTO `index_point` VALUES ('3907173b39c5437c8790d250e97ea434', '2019', '数学师范', '6', '6.2', '数学教学论', 'L', '20');
INSERT INTO `index_point` VALUES ('393c42d3baa94705b863b13c268488ee', '2019', '数学师范', '4', '4.1', '教育实习', 'H', '50');
INSERT INTO `index_point` VALUES ('39f6c68b1c5c453ebd9dcd5621ae4ba5', '2019', '数学师范', '3', '3.3', '大学物理C1', 'L', '20');
INSERT INTO `index_point` VALUES ('3ad61d1fd30944b98b186f14a7589211', '2019', '数学师范', '2', '2.1', '入学教育', 'L', '20');
INSERT INTO `index_point` VALUES ('3aeb5b2db3e14f5c8096c027ba341eee', '2019', '数学师范', '8', '8.2', '初等数学研究1', 'M', '30');
INSERT INTO `index_point` VALUES ('3cba5e4aa27b4c89b8acd983d04216d1', '2019', '数学师范', '4', '4.4', '教育实习', 'H', '50');
INSERT INTO `index_point` VALUES ('3e01e4fc7db24c669c73ce022f65a860', '2019', '数学师范', '7', '7.3', '教育学基础', 'M', '30');
INSERT INTO `index_point` VALUES ('3e79639df8d4492e82edf9206e0a0c4b', '2019', '数学师范', '7', '7.1', '常微分方程', 'L', '20');
INSERT INTO `index_point` VALUES ('3ec3664283a44ce186043e27feb5adba', '2019', '数学师范', '3', '3.4', '初等数学研究1', 'M', '30');
INSERT INTO `index_point` VALUES ('3f7a7edead10440fb02f369b66935ea8', '2019', '数学师范', '3', '3.3', '小学数学教与学', 'L', '20');
INSERT INTO `index_point` VALUES ('3ff07179fc304b6da38645f175baf7aa', '2019', '数学师范', '1', '1.2', '教育实习', 'M', '30');
INSERT INTO `index_point` VALUES ('40b786a5c9eb4708a5870a9cb8375745', '2019', '数学师范', '3', '3.3', '计算机辅助教学', 'L', '20');
INSERT INTO `index_point` VALUES ('420d0b0469584ac6977f57d61435951a', '2019', '数学师范', '5', '5.2', '大学生心理健康教育', 'M', '30');
INSERT INTO `index_point` VALUES ('42108f9215104445b3c11446434a6df8', '2019', '数学师范', '3', '3.4', '数学分析3', 'M', '30');
INSERT INTO `index_point` VALUES ('4300b04ceb2b4ed1bc0c0fa646be8dbd', '2019', '数学师范', '3', '3.3', '数学教育心理', 'L', '20');
INSERT INTO `index_point` VALUES ('47bada90554f491cb996725981a164e8', '2019', '数学师范', '4', '4.1', '教师书写技能', 'L', '20');
INSERT INTO `index_point` VALUES ('49652f3b31e4482db0c2e948d7d03af3', '2019', '数学师范', '3', '3.4', '近世代数', 'M', '30');
INSERT INTO `index_point` VALUES ('4997c4fcdc594975b5d11d9505ff96b7', '2019', '数学师范', '3', '3.2', '近世代数', 'M', '30');
INSERT INTO `index_point` VALUES ('49b1282fcdf44b50bf4f9a928e9715b0', '2019', '数学师范', '6', '6.2', '数学分析1', 'L', '20');
INSERT INTO `index_point` VALUES ('4bda23823e104d759940aee738557fb4', '2019', '数学师范', '2', '2.2', '马克思主义基本原理概论', 'L', '20');
INSERT INTO `index_point` VALUES ('4c4f9ebfd11d43e2af850fb0bb5ce7e3', '2019', '数学师范', '6', '6.2', '初等数学研究2', 'L', '20');
INSERT INTO `index_point` VALUES ('4c90b4df0676471782b246fd5366971b', '2019', '数学师范', '8', '8.2', '班级管理与班主任工作', 'M', '30');
INSERT INTO `index_point` VALUES ('4ea84f33c903460aae596a3eeb8f6740', '2019', '数学师范', '2', '2.3', '军事理论与军事训练', 'L', '20');
INSERT INTO `index_point` VALUES ('4eaecc98494f4149b650878d0dee3e52', '2019', '数学师范', '3', '3.2', '中学数学现代基础', 'M', '30');
INSERT INTO `index_point` VALUES ('4f3b66538de2476aafbc961c43dbd501', '2019', '数学师范', '8', '8.1', '数学建模', 'H', '50');
INSERT INTO `index_point` VALUES ('515d2307fae8471c92bf3b80de661f66', '2019', '数学师范', '8', '8.2', '教育实习', 'M', '30');
INSERT INTO `index_point` VALUES ('51b9df884a0546b0a6d625fb2f69c251', '2019', '数学师范', '4', '4.2', '教育实习', 'H', '50');
INSERT INTO `index_point` VALUES ('51d8ff739f6b4ce7b027a342a7e20274', '2019', '数学师范', '7', '7.2', '教育学基础', 'M', '30');
INSERT INTO `index_point` VALUES ('529b065827a84461ad6d2ff606aa1a60', '2019', '数学师范', '7', '7.3', '马克思主义基本原理概论', 'L', '20');
INSERT INTO `index_point` VALUES ('52dbb69d51bd48c08f0dfa52b6510b8d', '2019', '数学师范', '7', '7.4', '初等数学研究1', 'M', '30');
INSERT INTO `index_point` VALUES ('555ba1e80a1648de9cd9fe4d88c77bf7', '2019', '数学师范', '7', '7.1', '数学分析3', 'L', '20');
INSERT INTO `index_point` VALUES ('55b6bcfd3e5a4ce78969136a0ac93c36', '2019', '数学师范', '8', '8.2', '大学英语3', 'M', '30');
INSERT INTO `index_point` VALUES ('5731c5a41c524b488094b3e9499be6da', '2019', '数学师范', '6', '6.2', '数学史选讲', 'L', '20');
INSERT INTO `index_point` VALUES ('5746b6aad1d94eabb3023d624a529e93', '2019', '数学师范', '6', '6.2', '概率统计', 'L', '20');
INSERT INTO `index_point` VALUES ('58b96ff680c84ffca95123997218c499', '2019', '数学师范', '8', '8.1', '小学数学教与学', 'M', '30');
INSERT INTO `index_point` VALUES ('58d9b5f8c1d84b76b18f7c08b22df3a1', '2019', '数学师范', '3', '3.4', '数学分析1', 'M', '30');
INSERT INTO `index_point` VALUES ('598371982dc842a781ddab0daf13c55e', '2019', '数学师范', '8', '8.2', '数学微格教学', 'M', '30');
INSERT INTO `index_point` VALUES ('5a26185626f443ba8fcfc4c01e2ce3b5', '2019', '数学师范', '7', '7.3', '毕业设计（论文）', 'H', '50');
INSERT INTO `index_point` VALUES ('5a4f09024c0d4c1fb3b92df2c024a115', '2019', '数学师范', '3', '3.2', '数学史选讲', 'L', '20');
INSERT INTO `index_point` VALUES ('5a8b47388f31403d838a9dc5a505e26c', '2019', '数学师范', '8', '8.2', '大学生心理健康教育', 'M', '30');
INSERT INTO `index_point` VALUES ('5d82fa0363f24fe6906402985ea525b9', '2019', '数学师范', '5', '5.1', '班级管理与班主任工作', 'H', '50');
INSERT INTO `index_point` VALUES ('5d8555c532f940aaadffecdddd918d09', '2019', '数学师范', '7', '7.4', '数学教学研究', 'H', '50');
INSERT INTO `index_point` VALUES ('5f3a958b28f2452896b024f56ba929fb', '2019', '数学师范', '7', '7.3', '教育实习', 'L', '20');
INSERT INTO `index_point` VALUES ('5f567fca04724d8eb9ae4a057baba4db', '2019', '数学师范', '3', '3.4', '运筹学', 'M', '30');
INSERT INTO `index_point` VALUES ('5f56cf4510f74e6c885d4b74cf38c7cb', '2019', '数学师范', '7', '7.1', '高等代数与解析几何1', 'L', '20');
INSERT INTO `index_point` VALUES ('5f7d937cf3054940ab152a0d33cfa808', '2019', '数学师范', '7', '7.2', '大学英语进阶1', 'M', '30');
INSERT INTO `index_point` VALUES ('5fab01c51c3a49e0aec0312a90c899a0', '2019', '数学师范', '4', '4.5', '小学数学教与学', 'H', '50');
INSERT INTO `index_point` VALUES ('601b992fb927405782d34708b9827d69', '2019', '数学师范', '1', '1.2', '教育学基础', 'M', '30');
INSERT INTO `index_point` VALUES ('616aeaf1942d449f955b9b9bc88abd89', '2019', '数学师范', '6', '6.2', '综合实践活动课程设计', 'H', '50');
INSERT INTO `index_point` VALUES ('62a4a66e2a8149b29463c098bb48a2e4', '2019', '数学师范', '7', '7.3', '数学教育心理', 'L', '20');
INSERT INTO `index_point` VALUES ('62b4d1617b20489bad132c979b736c3c', '2019', '数学师范', '4', '4.3', '未来数学课堂设计', 'H', '50');
INSERT INTO `index_point` VALUES ('648a8ddf333f4a1cb20afd0d0ff99bae', '2019', '数学师范', '7', '7.1', '数学教学研究', 'H', '50');
INSERT INTO `index_point` VALUES ('654a682b0200458a8e71793c548d138a', '2019', '数学师范', '2', '2.2', '大学物理C2', 'L', '20');
INSERT INTO `index_point` VALUES ('674405bdb21c4c279b04988ffcf546c4', '2019', '数学师范', '6', '6.2', '数学思想方法', 'L', '20');
INSERT INTO `index_point` VALUES ('684b3142f87d49b39576ad760cf9e4d8', '2019', '数学师范', '6', '6.3', '综合实践活动课程设计', 'H', '50');
INSERT INTO `index_point` VALUES ('68c8c56fb72049be9e237425f7a27859', '2019', '数学师范', '3', '3.1', '数学建模', 'H', '50');
INSERT INTO `index_point` VALUES ('694f7aecdfae4762a656dbb0f166a9ea', '2019', '数学师范', '7', '7.2', '中级英语读写1', 'M', '30');
INSERT INTO `index_point` VALUES ('696189eb57cb48f39efde23e3f930376', '2019', '数学师范', '6', '6.2', '教育见习', 'H', '50');
INSERT INTO `index_point` VALUES ('696cb43e79664bc09fdda8a963d6bd0b', '2019', '数学师范', '3', '3.1', '初等数学研究2', 'M', '30');
INSERT INTO `index_point` VALUES ('6aa0e41232a8444d8007ac9ef73cb9c5', '2019', '数学师范', '7', '7.3', '思想道德修养与法律基础', 'L', '20');
INSERT INTO `index_point` VALUES ('6aa4734216064c33a0b28b77bb003ac4', '2019', '数学师范', '2', '2.2', '毛泽东思想和中国特色社会主义理论体系概论', 'L', '20');
INSERT INTO `index_point` VALUES ('6b3116d30a0f46edab7e0cfb6d7c0021', '2019', '数学师范', '6', '6.2', '教育统计与测评', 'L', '20');
INSERT INTO `index_point` VALUES ('6bc634b18a5941de8ad4f7a198215259', '2019', '数学师范', '4', '4.2', '数学教育心理', 'L', '20');
INSERT INTO `index_point` VALUES ('6dc3ef8baeaa479b8fa19a1227126fa5', '2019', '数学师范', '1', '1.1', '中国近现代史纲要', 'M', '30');
INSERT INTO `index_point` VALUES ('6e3bf835d5374ef99545128cfc148beb', '2019', '数学师范', '4', '4.5', '教育实习', 'H', '50');
INSERT INTO `index_point` VALUES ('6f036123512a482a8ab720250de204c4', '2019', '数学师范', '7', '7.1', '数学分析1', 'L', '20');
INSERT INTO `index_point` VALUES ('6f12fd3212534b2f868422c0d806c0f4', '2019', '数学师范', '2', '2.3', '心理学基础', 'H', '50');
INSERT INTO `index_point` VALUES ('6f3067880587424f9e41367af1320c31', '2019', '数学师范', '3', '3.3', '大学物理实验C1', 'L', '20');
INSERT INTO `index_point` VALUES ('703cf2aa14e9448aacdcc86423a20153', '2019', '数学师范', '2', '2.2', '教师文化素养与基本能力', 'M', '30');
INSERT INTO `index_point` VALUES ('7326cbdf0ae54e43931fda63a095e7d8', '2019', '数学师范', '6', '6.2', '小学数学教与学', 'L', '20');
INSERT INTO `index_point` VALUES ('73be9cd48e5d472fb221fe7c7579ef9a', '2019', '数学师范', '2', '2.3', '思想道德修养与法律基础', 'L', '20');
INSERT INTO `index_point` VALUES ('7443b966fe4c44d285c9cfed900e8c7f', '2019', '数学师范', '2', '2.2', '离散数学', 'L', '20');
INSERT INTO `index_point` VALUES ('783beccc2dce4d5a9053408a33cf43c2', '2019', '数学师范', '7', '7.2', '中级口语1', 'M', '30');
INSERT INTO `index_point` VALUES ('7904961d90d34e46b80b579aca3a2fa3', '2019', '数学师范', '7', '7.1', '数学教学论', 'M', '30');
INSERT INTO `index_point` VALUES ('796316beac294e6ea83b48aa79c09e9d', '2019', '数学师范', '7', '7.2', '大学英语1', 'M', '30');
INSERT INTO `index_point` VALUES ('7b3b8198072d45a48c50a0d16b5d4fcd', '2019', '数学师范', '6', '6.3', '班级管理与班主任工作', 'M', '30');
INSERT INTO `index_point` VALUES ('7b5b51f3d70b471797e5a50876df3fae', '2019', '数学师范', '7', '7.3', '形势与政策', 'L', '20');
INSERT INTO `index_point` VALUES ('7b7d287e4063401c914568b1d99ef8ad', '2019', '数学师范', '4', '4.5', '教育统计与测评', 'L', '20');
INSERT INTO `index_point` VALUES ('7c50e3158ad54b099d9bcf5d07637392', '2019', '数学师范', '6', '6.2', '代数续论', 'L', '20');
INSERT INTO `index_point` VALUES ('7cad73767be24e50a4c8df3aeafeb37e', '2019', '数学师范', '3', '3.4', '初等数论', 'M', '30');
INSERT INTO `index_point` VALUES ('7cd6bc22da9641f0bffa284d9700362a', '2019', '数学师范', '7', '7.1', '大学生职业发展与创业教育', 'M', '30');
INSERT INTO `index_point` VALUES ('7e2ddec603bd4f3c95bed272ef3a5523', '2019', '数学师范', '3', '3.2', '数值计算方法', 'M', '30');
INSERT INTO `index_point` VALUES ('7ffa2407c8c247b4b757872c5823df8c', '2019', '数学师范', '5', '5.1', '教育学基础', 'H', '50');
INSERT INTO `index_point` VALUES ('80a12f117fe6455a96cefaedf918e474', '2019', '数学师范', '8', '8.1', '军事理论与军事训练', 'M', '30');
INSERT INTO `index_point` VALUES ('819f852978a04a9e831a84bb144160fb', '2019', '数学师范', '4', '4.4', '小学数学教与学', 'H', '50');
INSERT INTO `index_point` VALUES ('81c680ba2d9c4546946e1dd8f52c69d8', '2019', '数学师范', '3', '3.3', '数据库原理', 'L', '20');
INSERT INTO `index_point` VALUES ('82f693195e884de19e4bd32ef9143d48', '2019', '数学师范', '2', '2.2', '高等代数与解析几何2', 'L', '20');
INSERT INTO `index_point` VALUES ('832680521d38476397d39e0d478ff233', '2019', '数学师范', '8', '8.1', '数学教学论', 'M', '30');
INSERT INTO `index_point` VALUES ('834ed2d9f9394e13b7c2889d34f0f1c1', '2019', '数学师范', '4', '4.5', '教育见习', 'M', '30');
INSERT INTO `index_point` VALUES ('84e640fd359f45eca9f78f21925b51e2', '2019', '数学师范', '7', '7.3', '未来数学课堂设计', 'M', '30');
INSERT INTO `index_point` VALUES ('850e6a5de7d94027bc883eb479b489c8', '2019', '数学师范', '8', '8.2', '大学英语进阶1', 'M', '30');
INSERT INTO `index_point` VALUES ('85286c626b4944b38da544bbf29d0808', '2019', '数学师范', '8', '8.2', '教师语言技能', 'M', '30');
INSERT INTO `index_point` VALUES ('85e5a9fadd30403ebaf3140774f8046e', '2019', '数学师范', '4', '4.3', '计算机辅助教学', 'L', '20');
INSERT INTO `index_point` VALUES ('86139b113024493abf836967546e71bb', '2019', '数学师范', '7', '7.1', '现代教育技术', 'L', '20');
INSERT INTO `index_point` VALUES ('86844c267cd0403388f40ce6aadd58cf', '2019', '数学师范', '6', '6.2', '数学教育心理', 'M', '30');
INSERT INTO `index_point` VALUES ('879c62ca171d4bd0b131dbbf5e57debc', '2019', '数学师范', '5', '5.2', '教育学基础', 'H', '50');
INSERT INTO `index_point` VALUES ('881d524946fe43c0bb2f51c430ee4d29', '2019', '数学师范', '7', '7.1', '大学英语2', 'M', '30');
INSERT INTO `index_point` VALUES ('8851b27aa0ab438baec6d547dadeb72b', '2019', '数学师范', '3', '3.2', '初等数论', 'M', '30');
INSERT INTO `index_point` VALUES ('88547df88de643afba2b1534f16ae9cb', '2019', '数学师范', '4', '4.2', '数学教学论', 'H', '50');
INSERT INTO `index_point` VALUES ('88694d6493584febad56d79ac3c0f969', '2019', '数学师范', '2', '2.2', '高等代数与解析几何1', 'L', '20');
INSERT INTO `index_point` VALUES ('8959648670724448ba9a7ee547f5a5cd', '2019', '数学师范', '6', '6.2', '实变函数', 'L', '20');
INSERT INTO `index_point` VALUES ('8a1036633bb64290b0814dea66212618', '2019', '数学师范', '3', '3.2', '微分几何', 'L', '20');
INSERT INTO `index_point` VALUES ('8a7ea620585740f0a3d6f4f1db1647e5', '2019', '数学师范', '3', '3.1', '初等数学研究1', 'M', '30');
INSERT INTO `index_point` VALUES ('8af6ec3b1ac64e1fb34149a3bdd2317d', '2019', '数学师范', '7', '7.3', '大学生心理健康教育', 'L', '20');
INSERT INTO `index_point` VALUES ('8c5a7368b9eb4d799a259c726f6200a4', '2019', '数学师范', '7', '7.1', '高等代数与解析几何2', 'L', '20');
INSERT INTO `index_point` VALUES ('8d2e643665a64687a30f4c6dd7b64c60', '2019', '数学师范', '3', '3.3', '数学教学软件应用', 'L', '20');
INSERT INTO `index_point` VALUES ('8f600da23e8a47c4b65a134cc4c898cb', '2019', '数学师范', '8', '8.2', '未来数学课堂设计', 'H', '50');
INSERT INTO `index_point` VALUES ('90a5c73ea6b942989558481d05c4e6ca', '2019', '数学师范', '6', '6.2', '高等代数与解析几何2', 'L', '20');
INSERT INTO `index_point` VALUES ('91c876685428463096df23e36dfd378b', '2019', '数学师范', '7', '7.3', '大学生职业发展与创业教育', 'M', '30');
INSERT INTO `index_point` VALUES ('91f0ffd094e94518aaa8d6eee2196255', '2019', '数学师范', '7', '7.1', '中级口语2', 'M', '30');
INSERT INTO `index_point` VALUES ('921a17db25e24a6690257d6de136bee9', '2019', '数学师范', '7', '7.4', '大学计算机技术', 'L', '20');
INSERT INTO `index_point` VALUES ('9324c39cdc6041d4b30018b45184a114', '2019', '数学师范', '7', '7.4', '初等数学研究2', 'M', '30');
INSERT INTO `index_point` VALUES ('9331de8f6d0f460d8d83cd8c35deeb2a', '2019', '数学师范', '6', '6.1', '心理学基础', 'L', '20');
INSERT INTO `index_point` VALUES ('935ab5bd00554c0f8dbe7e0266792afa', '2019', '数学师范', '3', '3.1', '高等代数与解析几何1', 'M', '30');
INSERT INTO `index_point` VALUES ('9363845f024d405d83843a29001ab1a2', '2019', '数学师范', '7', '7.1', '中高考试题研究', 'L', '20');
INSERT INTO `index_point` VALUES ('93c0d90fe6f04e059b18fea4a2865c58', '2019', '数学师范', '3', '3.3', '数学教学论', 'L', '20');
INSERT INTO `index_point` VALUES ('9452838c6ca441e5a8227818d5c09563', '2019', '数学师范', '5', '5.1', '思想道德修养与法律基础', 'M', '30');
INSERT INTO `index_point` VALUES ('94943dbb2203443a91ed6e9685868588', '2019', '数学师范', '2', '2.2', '大学物理实验C2', 'L', '20');
INSERT INTO `index_point` VALUES ('94c1110223874e6daa3170a7534b7b4f', '2019', '数学师范', '3', '3.1', '常微分方程', 'M', '30');
INSERT INTO `index_point` VALUES ('96043abd6a6e414b91c36343e5a2e4bf', '2019', '数学师范', '2', '2.2', '代数续论', 'L', '20');
INSERT INTO `index_point` VALUES ('962a611d6b3d47d98545c50317ecbc04', '2019', '数学师范', '1', '1.2', '入学教育', 'H', '50');
INSERT INTO `index_point` VALUES ('971005b5226a443691a07ee07fc29c9d', '2019', '数学师范', '3', '3.3', '数学教学研究', 'L', '20');
INSERT INTO `index_point` VALUES ('974d34db9ef84b5bafa6399c8699d069', '2019', '数学师范', '4', '4.1', '写作与表达', 'L', '20');
INSERT INTO `index_point` VALUES ('9807c72a8a2448298cb757d8ef702260', '2019', '数学师范', '3', '3.2', '代数续论', 'L', '20');
INSERT INTO `index_point` VALUES ('98bc9628c3534ef5909824fdfbd6beb7', '2019', '数学师范', '2', '2.2', '拓扑基础', 'L', '20');
INSERT INTO `index_point` VALUES ('98c8e42dd77240899faa69d0390e06d0', '2019', '数学师范', '3', '3.1', '教育统计与测评', 'H', '50');
INSERT INTO `index_point` VALUES ('99314fbf214a49f387b131610c7d5a2d', '2019', '数学师范', '6', '6.3', '教育见习', 'H', '50');
INSERT INTO `index_point` VALUES ('9b0cd17e14b14cc896c92255eb29c5d2', '2019', '数学师范', '1', '1.1', '毛泽东思想和中国特色社会主义理论体系概论', 'M', '30');
INSERT INTO `index_point` VALUES ('9bb2419930e942ecab935027d3bee734', '2019', '数学师范', '6', '6.2', '数学分析2', 'L', '20');
INSERT INTO `index_point` VALUES ('9bda2df2c3284c768a2aa8c855129ced', '2019', '数学师范', '4', '4.2', '初等数学研究1', 'L', '20');
INSERT INTO `index_point` VALUES ('9c414ceab49248cbb6e141bf47ed41b0', '2019', '数学师范', '2', '2.3', '中学生认知心理与学习', 'L', '20');
INSERT INTO `index_point` VALUES ('9c4b5da239784186bf430b15471321c6', '2019', '数学师范', '7', '7.3', '数学教学研究', 'H', '50');
INSERT INTO `index_point` VALUES ('9d8ea1f4fb4246cf97b86897fe5d426a', '2019', '数学师范', '1', '1.2', '教师职业道德规范与教育法规', 'M', '30');
INSERT INTO `index_point` VALUES ('9f09d8ffe9d04d48bde401a6a3285413', '2019', '数学师范', '2', '2.1', '大学生职业发展与创业教育', 'L', '20');
INSERT INTO `index_point` VALUES ('9f70b230c07b493eb3502976972534d9', '2019', '数学师范', '7', '7.1', '大学英语3', 'M', '30');
INSERT INTO `index_point` VALUES ('a007468d2b854574863155c3e0e1d650', '2019', '数学师范', '6', '6.2', '复变函数', 'L', '20');
INSERT INTO `index_point` VALUES ('a12e0f82e46d42cdb315f9a2cf44c9fb', '2019', '数学师范', '4', '4.3', '数学教学论', 'H', '50');
INSERT INTO `index_point` VALUES ('a1925c01570a492e88ca226b5781db61', '2019', '数学师范', '4', '4.2', '教育见习', 'M', '30');
INSERT INTO `index_point` VALUES ('a2570a5e2fd445cfa4d816cb41792ab1', '2019', '数学师范', '3', '3.4', '毕业设计（论文）', 'L', '20');
INSERT INTO `index_point` VALUES ('a270826ae2ff40bbb3d2813a01db10a9', '2019', '数学师范', '6', '6.2', '近世代数', 'L', '20');
INSERT INTO `index_point` VALUES ('a27be70bc4a7445db2e6dcade719cca9', '2019', '数学师范', '7', '7.4', '大学信息技术', 'L', '20');
INSERT INTO `index_point` VALUES ('a3478ebfd2224dd1b67224d4a21ec3be', '2019', '数学师范', '2', '2.2', '中国近现代史纲要', 'L', '20');
INSERT INTO `index_point` VALUES ('a3a4908d216f4d50b0a5e7a8c9b8db04', '2019', '数学师范', '3', '3.1', '概率统计', 'M', '30');
INSERT INTO `index_point` VALUES ('a4cdb93ce3e346c78fd243b0b27a4e91', '2019', '数学师范', '7', '7.3', '教育统计与测评', 'L', '20');
INSERT INTO `index_point` VALUES ('a5393e48f4ec44378fd47cdcf725f355', '2019', '数学师范', '7', '7.2', '中级口语2', 'M', '30');
INSERT INTO `index_point` VALUES ('a5df64d23bf349a7a5dc00283bbe5d1a', '2019', '数学师范', '3', '3.3', '数据结构', 'L', '20');
INSERT INTO `index_point` VALUES ('a62f4bcb6c4b4be2aa692bd64d33de3a', '2019', '数学师范', '1', '1.1', '大学生职业发展与创业教育', 'H', '50');
INSERT INTO `index_point` VALUES ('a6876dce231f4d2e808ae1ebd85dd941', '2019', '数学师范', '3', '3.2', '分析续论', 'L', '20');
INSERT INTO `index_point` VALUES ('a69ec6dcc7204c29b6239b04e2ddbc4c', '2019', '数学师范', '6', '6.1', '教育见习', 'H', '50');
INSERT INTO `index_point` VALUES ('a766d4d0cd0d492389bb8704c24ff4ea', '2019', '数学师范', '1', '1.2', '思想道德修养与法律基础', 'H', '50');
INSERT INTO `index_point` VALUES ('a7d99faa8dd74f038f0c3709b85f5b2d', '2019', '数学师范', '2', '2.2', '运筹学', 'L', '20');
INSERT INTO `index_point` VALUES ('a7f139ce66b34d34b85cbe84818e9da5', '2019', '数学师范', '2', '2.2', '实变函数', 'L', '20');
INSERT INTO `index_point` VALUES ('a874c84c90714b0a912deebae814a91e', '2019', '数学师范', '7', '7.1', '中级英语读写1', 'M', '30');
INSERT INTO `index_point` VALUES ('a955bfb421494b4eb315e83545cb667c', '2019', '数学师范', '5', '5.2', '心理学基础', 'M', '30');
INSERT INTO `index_point` VALUES ('aa7d27648a5b4eb5845ba60e6bc4fccb', '2019', '数学师范', '7', '7.1', '初等数学研究1', 'M', '30');
INSERT INTO `index_point` VALUES ('aac26e237b77442ebe349d33dca70c07', '2019', '数学师范', '0', '3.4', '初等数学研究2', 'M', '30');
INSERT INTO `index_point` VALUES ('ab7eaab6e75549f59a5b977cf58ec328', '2019', '数学师范', '4', '4.4', '教育见习', 'M', '30');
INSERT INTO `index_point` VALUES ('ae0ef00d8a0c48e4b5b7adf854be92fa', '2019', '数学师范', '4', '4.3', '现代教育技术', 'L', '20');
INSERT INTO `index_point` VALUES ('af3c497e855a473192f85e57229669d5', '2019', '数学师范', '3', '3.2', '拓扑基础', 'L', '20');
INSERT INTO `index_point` VALUES ('af86a65a29c1427dbec5fce399cda37d', '2019', '数学师范', '6', '6.2', '数学建模', 'L', '20');
INSERT INTO `index_point` VALUES ('aff879d1eda14e15ba2d38f6f85733ad', '2019', '数学师范', '2', '2.2', '形体训练与舞蹈编导基础', 'L', '20');
INSERT INTO `index_point` VALUES ('b1de1476c9694890bb498daa3e6c4c48', '2019', '数学师范', '8', '8.2', '教育见习', 'M', '30');
INSERT INTO `index_point` VALUES ('b2d8a9a7d18f48628dce5b43b577d24d', '2019', '数学师范', '4', '4.2', '数学教学研究', 'M', '30');
INSERT INTO `index_point` VALUES ('b3ad0115f9b7454297af0eda17549807', '2019', '数学师范', '2', '2.2', '教育学基础', 'M', '30');
INSERT INTO `index_point` VALUES ('b464222f7b9f43ec890e9a6122df2f3d', '2019', '数学师范', '7', '7.3', '写作与表达', 'H', '50');
INSERT INTO `index_point` VALUES ('b4fb549635354acfae81cb4e256dda71', '2019', '数学师范', '2', '2.2', '近世代数', 'L', '20');
INSERT INTO `index_point` VALUES ('b66b50488456400c82ba17b176773a3d', '2019', '数学师范', '5', '5.1', '教育见习', 'H', '50');
INSERT INTO `index_point` VALUES ('b7228f2d65134d469e33b5bb2d8578bc', '2019', '数学师范', '3', '3.4', '常微分方程', 'M', '30');
INSERT INTO `index_point` VALUES ('b80204074c374a28abdecd2e97cf850a', '2019', '数学师范', '6', '6.2', '高等代数与解析几何1', 'L', '20');
INSERT INTO `index_point` VALUES ('b811b795a70d42c5b9e472f421d2b7b6', '2019', '数学师范', '2', '2.2', '泛函分析', 'L', '20');
INSERT INTO `index_point` VALUES ('b8bf918b0d5f4d0281f13af14035e9ea', '2019', '数学师范', '7', '7.3', '小学数学教与学', 'M', '30');
INSERT INTO `index_point` VALUES ('b9aa83635e5d48b188b333aac819ce10', '2019', '数学师范', '7', '7.1', '中级口语1', 'M', '30');
INSERT INTO `index_point` VALUES ('bc46db1e595949e0b66ba84288204085', '2019', '数学师范', '1', '1.1', '马克思主义基本原理概论', 'M', '30');
INSERT INTO `index_point` VALUES ('bc92e20568154d158ec46639c96aea64', '2019', '数学师范', '4', '4.3', '教育实习', 'H', '50');
INSERT INTO `index_point` VALUES ('bf86cc688a5644c4afd27608d276a82b', '2019', '数学师范', '2', '2.2', '形势与政策', 'L', '20');
INSERT INTO `index_point` VALUES ('c0b90d9388f84624b41969a6ed6a9db8', '2019', '数学师范', '7', '7.1', '未来数学课堂设计', 'M', '30');
INSERT INTO `index_point` VALUES ('c1dfe9a4859a4634952d6689717de56e', '2019', '数学师范', '4', '4.4', '未来数学课堂设计', 'H', '50');
INSERT INTO `index_point` VALUES ('c29ebf713a3f46d88cc3e69638518ba8', '2019', '数学师范', '7', '7.1', '教师书写技能', 'L', '20');
INSERT INTO `index_point` VALUES ('c3b1d0759bd54c1db0c7d34df00296df', '2019', '数学师范', '7', '7.1', '数学分析2', 'L', '20');
INSERT INTO `index_point` VALUES ('c51d124f9ad844c88b8b253557a7a10f', '2019', '数学师范', '2', '2.2', '大学物理C1', 'L', '20');
INSERT INTO `index_point` VALUES ('c54b9081ae024905b66ab72a1fb8d5e6', '2019', '数学师范', '4', '4.3', '大学信息技术', 'L', '20');
INSERT INTO `index_point` VALUES ('c5581ca5375d4ef787f38449282c8664', '2019', '数学师范', '2', '2.2', '数学史选讲', 'L', '20');
INSERT INTO `index_point` VALUES ('c5976a4dd1ac4541bb37eb5eb735253a', '2019', '数学师范', '6', '6.1', '班级管理与班主任工作', 'M', '30');
INSERT INTO `index_point` VALUES ('c6e544208a2c4d19a02da51f22b1c09c', '2019', '数学师范', '2', '2.1', '教师文化素养与基本能力', 'M', '30');
INSERT INTO `index_point` VALUES ('c7d08d1190a4484cbade184ad2647e1c', '2019', '数学师范', '4', '4.5', '数学教学研究', 'M', '30');
INSERT INTO `index_point` VALUES ('cb17a373f8944a2c85d65439306fb884', '2019', '数学师范', '2', '2.2', '复变函数', 'L', '20');
INSERT INTO `index_point` VALUES ('cce157bc9bbe4ed5b67181a41cfb020f', null, null, '0', null, null, null, null);
INSERT INTO `index_point` VALUES ('cd660f740f6049018e2564a78b847991', '2019', '数学师范', '6', '6.1', '综合实践活动课程设计', 'H', '50');
INSERT INTO `index_point` VALUES ('cdac9bb72dec40fab10266f8a2d27bc1', '2019', '数学师范', '6', '6.2', '数值计算方法', 'L', '20');
INSERT INTO `index_point` VALUES ('cdd768c9b6ac467ea9851ed1f59ded91', '2019', '数学师范', '3', '3.4', '离散数学', 'M', '30');
INSERT INTO `index_point` VALUES ('cdfb58855194478080172d50c985bb03', '2019', '数学师范', '3', '3.4', '高等代数与解析几何2', 'M', '30');
INSERT INTO `index_point` VALUES ('ce89597cc25542649342383a82f8238a', '2019', '数学师范', '4', '4.5', '未来数学课堂设计', 'H', '50');
INSERT INTO `index_point` VALUES ('cfaeb5e0c6de4d339cb5af02d45d3f26', '2019', '数学师范', '8', '8.1', '体育', 'M', '30');
INSERT INTO `index_point` VALUES ('d02ce760dddf49d2b1afb2e0504465c1', '2019', '数学师范', '6', '6.1', '中学生认知心理与学习', 'L', '20');
INSERT INTO `index_point` VALUES ('d1f878d984fc47edb2d18fda8fe1d04c', '2019', '数学师范', '3', '3.2', '离散数学', 'M', '30');
INSERT INTO `index_point` VALUES ('d2f87856416045c29840ba18726a2ba1', '2019', '数学师范', '8', '8.2', '数学建模', 'H', '50');
INSERT INTO `index_point` VALUES ('d3b229fdd5404e469285f6a1388aeecb', '2019', '数学师范', '2', '2.2', '大学物理实验C1', 'L', '20');
INSERT INTO `index_point` VALUES ('d40b46f245ac446c9a2fefb166994294', '2019', '数学师范', '3', '3.4', '教育统计与测评', 'H', '50');
INSERT INTO `index_point` VALUES ('d47db93437974bd6ba7f4306a6256930', '2019', '数学师范', '4', '4.4', '数学教学论', 'H', '50');
INSERT INTO `index_point` VALUES ('d4adc5c03edc436e8491b448e2ec7bf1', '2019', '数学师范', '2', '2.1', '心理学基础', 'H', '50');
INSERT INTO `index_point` VALUES ('d4f2dffefdd84b109ddea47be8556498', '2019', '数学师范', '6', '6.2', '微分几何', 'L', '20');
INSERT INTO `index_point` VALUES ('d643c67342a8445f9ea9d8d06b756c57', '2019', '数学师范', '7', '7.3', '教师职业道德规范与教育法规', 'L', '20');
INSERT INTO `index_point` VALUES ('d652de56e00b41488465903af2f9836d', '2019', '数学师范', '6', '6.3', '教育实习', 'H', '50');
INSERT INTO `index_point` VALUES ('d68fbc10c5bd4c258e00a16540b1561d', '2019', '数学师范', '3', '3.4', '数学建模', 'H', '50');
INSERT INTO `index_point` VALUES ('d79f0e74158143269751ea4f8c9f0156', '2019', '数学师范', '3', '3.2', '复变函数', 'L', '20');
INSERT INTO `index_point` VALUES ('d7a5ccfb63c34988968bacbe15d1a202', '2019', '数学师范', '2', '2.2', '数学分析2', 'L', '20');
INSERT INTO `index_point` VALUES ('d7fca48ffbc4469590f57e3f6fd1faf6', '2019', '数学师范', '6', '6.2', '运筹学', 'M', '30');
INSERT INTO `index_point` VALUES ('d82b341bb46440bdaa1c8676d1b129b9', '2019', '数学师范', '8', '8.2', '中级口语1', 'M', '30');
INSERT INTO `index_point` VALUES ('d89dcaca141541969926fd3627459c29', '2019', '数学师范', '1', '1.2', '教育见习', 'M', '30');
INSERT INTO `index_point` VALUES ('d8cf59a82e9345649004ddbfaf87ddfb', '2019', '数学师范', '5', '5.2', '班级管理与班主任工作', 'H', '50');
INSERT INTO `index_point` VALUES ('d97a559baedb4610b10360e2b5016065', '2019', '数学师范', '2', '2.3', '体育', 'L', '20');
INSERT INTO `index_point` VALUES ('dac7403fca834867bfb4961ee2841f80', '2019', '数学师范', '1', '1.1', '入学教育', 'H', '50');
INSERT INTO `index_point` VALUES ('daf7e9ca8bd144539f7a7d68126c3879', '2019', '数学师范', '7', '7.1', '体育', 'L', '20');
INSERT INTO `index_point` VALUES ('daf935e503954b19a42c7ae72f2b91f2', '2019', '数学师范', '3', '3.3', '大学物理实验C2', 'L', '20');
INSERT INTO `index_point` VALUES ('db67a4933ee74b89a45b85292c9c2f75', '2019', '数学师范', '3', '3.4', '概率统计', 'M', '30');
INSERT INTO `index_point` VALUES ('dc0ee56d91244842a869766a2fcdee1f', '2019', '数学师范', '4', '4.2', '初等数学研究2', 'L', '20');
INSERT INTO `index_point` VALUES ('dc55103d292d44179e68a261e99d0420', '2019', '数学师范', '3', '3.2', '泛函分析', 'L', '20');
INSERT INTO `index_point` VALUES ('deae891986224ba4a2c0e743b4cabd55', '2019', '数学师范', '3', '3.3', '数学建模', 'H', '50');
INSERT INTO `index_point` VALUES ('e1ce0b03c2b94862af57e21296f5542c', '2019', '数学师范', '7', '7.1', '初等数学研究2', 'M', '30');
INSERT INTO `index_point` VALUES ('e1d61f549f2643fca983e5837b387ee4', '2019', '数学师范', '6', '6.2', '拓扑基础', 'L', '20');
INSERT INTO `index_point` VALUES ('e2528eeafcd849f28e7ff3c9f8dfa9f6', '2019', '数学师范', '7', '7.1', '中级英语读写2', 'M', '30');
INSERT INTO `index_point` VALUES ('e2898982a35c41d5a0a7ad9ebb30bc31', null, null, '0', null, null, null, null);
INSERT INTO `index_point` VALUES ('e2b5d62a359348a2a772c82be6857a6f', '2019', '数学师范', '3', '3.1', '高等代数与解析几何2', 'M', '30');
INSERT INTO `index_point` VALUES ('e49da3be6d8345bdbe8fa1f5981c9887', '2019', '数学师范', '1', '1.1', '军事理论与军事训练', 'M', '30');
INSERT INTO `index_point` VALUES ('e4cdd509f29b41f0a40a2ec74ddc21be', '2019', '数学师范', '6', '6.2', '离散数学', 'L', '20');
INSERT INTO `index_point` VALUES ('e57a79c994d54d93b493298dfa7dfaec', '2019', '数学师范', '8', '8.1', '综合实践活动课程设计', 'H', '50');
INSERT INTO `index_point` VALUES ('e69f279a9aed4a88b137f4bff1f5c7a0', '2019', '数学师范', '2', '2.2', '数值计算方法', 'L', '20');
INSERT INTO `index_point` VALUES ('e6c88e97de784f84875accd4ef1fde43', '2019', '数学师范', '2', '2.1', '教师职业道德规范与教育法规', 'L', '20');
INSERT INTO `index_point` VALUES ('e7b01fdd98f64d0cbbf29b148b01f4b8', '2019', '数学师范', '1', '1.1', '形势与政策', 'M', '30');
INSERT INTO `index_point` VALUES ('e832f038078a494085d705b5e165e172', '2019', '数学师范', '3', '3.3', '程序设计基础', 'M', '30');
INSERT INTO `index_point` VALUES ('e84b9613f199436a98b6a23e47bbf3af', '2019', '数学师范', '7', '7.3', '数学思想方法', 'M', '30');
INSERT INTO `index_point` VALUES ('e8e949d3ab024ce7ad1c3ef6aaf0b823', '2019', '数学师范', '7', '7.2', '中级英语读写2', 'M', '30');
INSERT INTO `index_point` VALUES ('e983bc74f6f341fcba5543fdc55478f2', '2019', '数学师范', '2', '2.2', '概率统计', 'L', '20');
INSERT INTO `index_point` VALUES ('e98d086358d646a5836caa43d2a995ec', '2019', '数学师范', '4', '4.3', '中学数学教学设计', 'L', '20');
INSERT INTO `index_point` VALUES ('ead3edd3c6c746f9bc7533134308c034', '2019', '数学师范', '7', '7.1', '教师语言技能', 'L', '20');
INSERT INTO `index_point` VALUES ('eb184e9abcdb4b2d9f48b5186b9c906a', '2019', '数学师范', '4', '4.5', '毕业设计（论文）', 'L', '20');
INSERT INTO `index_point` VALUES ('eb8b8ce31445404eb4c8eb1d178e021b', '2019', '数学师范', '7', '7.4', '数学建模', 'L', '20');
INSERT INTO `index_point` VALUES ('eca222f3a1a54f93ba7941e4511bca24', '2019', '数学师范', '2', '2.1', '教育学基础', 'M', '30');
INSERT INTO `index_point` VALUES ('ef33759639fc42b1b076821c77bed827', '2019', '数学师范', '6', '6.2', '泛函分析', 'L', '20');
INSERT INTO `index_point` VALUES ('ef943a056f2941f992149c8919dc0b42', '2019', '数学师范', '3', '3.4', '中高考试题研究', 'M', '30');
INSERT INTO `index_point` VALUES ('f5bbae8d523f4fbd8a752d2c46f6f07b', '2019', '数学师范', '3', '3.4', '中学数学现代基础', 'M', '30');
INSERT INTO `index_point` VALUES ('f6618dcdcf3a405db3267482ae5ead34', '2019', '数学师范', '2', '2.2', '数学分析3', 'L', '20');
INSERT INTO `index_point` VALUES ('f8cbb1b2ff154e4fba3ffc2cdff89ebb', '2019', '数学师范', '3', '3.1', '中高考试题研究', 'M', '30');
INSERT INTO `index_point` VALUES ('f8e642f0a56049f4bcfe79456d24f3bb', '2019', '数学师范', '4', '4.5', '数学教学论', 'L', '20');
INSERT INTO `index_point` VALUES ('f91f094d68494d0daf13101f451903c0', '2019', '数学师范', '6', '6.2', '初等数论', 'L', '20');
INSERT INTO `index_point` VALUES ('f9970e9886454f4e9dc99a64116bcce0', '2019', '数学师范', '3', '3.4', '程序设计基础', 'M', '30');
INSERT INTO `index_point` VALUES ('f9e477932d41436980fdcd19867fa530', '2019', '数学师范', '6', '6.2', '教育实习', 'H', '50');
INSERT INTO `index_point` VALUES ('f9f473918c0741a7bebedc41cb1c2ec9', '2019', '数学师范', '6', '6.1', '教育实习', 'H', '50');
INSERT INTO `index_point` VALUES ('fd92d2d2529d4621a989a682782db25b', '2019', '数学师范', '6', '6.3', '教育学基础', 'L', '20');
INSERT INTO `index_point` VALUES ('fe097cffad9b4bb998ed9460019cc645', '2019', '数学师范', '6', '6.2', '数学教学研究', 'L', '20');
INSERT INTO `index_point` VALUES ('fe725dd1d3bc41428fd62a4acfcdd60b', '2019', '数学师范', '3', '3.4', '数值计算方法', 'M', '30');

-- ----------------------------
-- Table structure for `index_point_msg`
-- ----------------------------
DROP TABLE IF EXISTS `index_point_msg`;
CREATE TABLE `index_point_msg` (
  `id` varchar(36) NOT NULL,
  `year` varchar(255) DEFAULT NULL COMMENT '指标点年份',
  `major` varchar(255) DEFAULT NULL COMMENT '专业',
  `type` varchar(255) DEFAULT NULL COMMENT 'L1 L2指标点类型',
  `point` varchar(255) DEFAULT NULL COMMENT '指标点',
  `msg` varchar(255) DEFAULT NULL COMMENT '详细描述',
  `m` varchar(255) DEFAULT NULL COMMENT '简述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_point_msg
-- ----------------------------
INSERT INTO `index_point_msg` VALUES ('0f09d53d8c074ad98cf7c3cf835f9c89', '2019', '数学师范', 'L2', '6.2', null, null);
INSERT INTO `index_point_msg` VALUES ('1f379a1e3d5e469296a03e354b2fa4dc', '2019', '数学师范', 'L2', '2.2', null, null);
INSERT INTO `index_point_msg` VALUES ('245a671fc1b54a3cb1fa8b375f4240f3', '2019', '数学师范', 'L2', '3.1', null, null);
INSERT INTO `index_point_msg` VALUES ('26f1d14c9caa4d1fb846a95a74184ded', '2019', '数学师范', 'L2', '4.3', null, null);
INSERT INTO `index_point_msg` VALUES ('3d141308c31740fd98304a1f97a2fd7a', '2019', '数学师范', 'L2', '4.1', null, null);
INSERT INTO `index_point_msg` VALUES ('462904e2b90d45fb87102d0962d71f0a', '2019', '数学师范', 'L2', '3.4', null, null);
INSERT INTO `index_point_msg` VALUES ('4cf5aa3bdac140bd8b7f46e6af542d4f', '2019', '数学师范', 'L2', '8.2', null, null);
INSERT INTO `index_point_msg` VALUES ('525cb8dcfdc44de4bf01f9421053390a', '2019', '数学师范', 'L2', '7.1', null, null);
INSERT INTO `index_point_msg` VALUES ('6394d418f3f74b91b57ee60b19a4036d', '2019', '数学师范', 'L2', '6.3', null, '111');
INSERT INTO `index_point_msg` VALUES ('693912f2f1d648e6bda37e7d60f380e3', '2019', '数学师范', 'L2', '4.4', null, null);
INSERT INTO `index_point_msg` VALUES ('720f5c36f85e49679219ab19f01398bb', '2019', '数学师范', 'L2', '4.2', null, null);
INSERT INTO `index_point_msg` VALUES ('74337b533e4945f7b96b32368ec8afb2', '2019', '数学师范', 'L2', '7.2', null, null);
INSERT INTO `index_point_msg` VALUES ('88eb743e00a0446081a5e53449182428', '2019', '数学师范', 'L2', '1.1', '阿萨德阿大使打算 ', null);
INSERT INTO `index_point_msg` VALUES ('8dce2082eeea40e280dd257a01b16dc7', '2019', '数学师范', 'L2', '2.1', null, null);
INSERT INTO `index_point_msg` VALUES ('8ec3850421a74020b955f3289057f1a0', '2019', '数学师范', 'L2', '2.3', null, null);
INSERT INTO `index_point_msg` VALUES ('9157072229d5422db1346bd569ca504b', '2019', '数学师范', 'L1', '3', null, null);
INSERT INTO `index_point_msg` VALUES ('9cddd3e542874d69a3de4af2c9d7ccd5', '2019', '数学师范', 'L1', '7', null, null);
INSERT INTO `index_point_msg` VALUES ('9e398fa4f1b54db3bc0af60d1da429f4', '2019', '数学师范', 'L1', '1', '放松放松', null);
INSERT INTO `index_point_msg` VALUES ('a96c7e8aa28943bba7199bdc876df4c2', '2019', '数学师范', 'L2', '4.5', null, null);
INSERT INTO `index_point_msg` VALUES ('aa04d26c23544ca5b5116c6af0fb7ec5', '2019', '数学师范', 'L2', '8.1', null, null);
INSERT INTO `index_point_msg` VALUES ('af05d49a2ba740989172757a051ea3d2', '2019', '数学师范', 'L1', '5', null, null);
INSERT INTO `index_point_msg` VALUES ('b1e7f88bb7f74429b099040ad713ba12', '2019', '数学师范', 'L1', '6', null, null);
INSERT INTO `index_point_msg` VALUES ('b21344e096a2490c9676b7d50be23bfb', '2019', '数学师范', 'L2', '7.3', null, null);
INSERT INTO `index_point_msg` VALUES ('b83246d6d8c748b88724b762b077e49b', '2019', '数学师范', 'L2', '7.4', null, null);
INSERT INTO `index_point_msg` VALUES ('c70df93fe5394c52b3603544db7c6d2b', '2019', '数学师范', 'L2', '5.1', null, null);
INSERT INTO `index_point_msg` VALUES ('d781735761dc4acfbe42ac552d192724', '2019', '数学师范', 'L2', '1.2', '撒打算的', null);
INSERT INTO `index_point_msg` VALUES ('db9622fb22d440949a6d91b7a5559396', '2019', '数学师范', 'L1', '2', null, null);
INSERT INTO `index_point_msg` VALUES ('e39bb23204df47de92bc58c03bba4ee4', '2019', '数学师范', 'L2', '6.1', null, null);
INSERT INTO `index_point_msg` VALUES ('eae385c481b24a7dbfbc7a6312d5205d', '2019', '数学师范', 'L1', '8', null, null);
INSERT INTO `index_point_msg` VALUES ('f787b3e51a4243209f4332356b4b68b2', '2019', '数学师范', 'L2', '5.2', null, null);
INSERT INTO `index_point_msg` VALUES ('f949d380354b49a982be4a3e8f438654', '2019', '数学师范', 'L2', '3.2', null, null);
INSERT INTO `index_point_msg` VALUES ('fb6098142ce344cebf2475b30feee884', '2019', '数学师范', 'L1', '4', null, null);
INSERT INTO `index_point_msg` VALUES ('fe21a05298914cb591854a538a6cc031', '2019', '数学师范', 'L2', '3.3', null, null);

-- ----------------------------
-- Table structure for `index_point_th`
-- ----------------------------
DROP TABLE IF EXISTS `index_point_th`;
CREATE TABLE `index_point_th` (
  `id` varchar(36) NOT NULL,
  `classID` varchar(255) DEFAULT NULL COMMENT '班级ID',
  `method` varchar(255) DEFAULT NULL COMMENT '考核类型',
  `th` varchar(255) DEFAULT NULL COMMENT '题号',
  `pf` varchar(255) DEFAULT NULL COMMENT '配分',
  `point` varchar(255) DEFAULT NULL COMMENT '指标点',
  `score` varchar(255) DEFAULT NULL COMMENT '得分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_point_th
-- ----------------------------
INSERT INTO `index_point_th` VALUES ('004d6b4b27d949bc8acf51c7bc284842', '2cf2d9b0bae04330a2e0d607734cf388', '期末', '8', '6.00', '3.1', '198.0');
INSERT INTO `index_point_th` VALUES ('0192bbbd808049bc873ddc17fd60b37a', '2cf2d9b0bae04330a2e0d607734cf388', '期末', '1', '4.00', '3.1', '136.0');
INSERT INTO `index_point_th` VALUES ('2ad8015528bf4fec9b1c1191b0aae8b6', '2cf2d9b0bae04330a2e0d607734cf388', '期末', '7', '6.00', '3.1', '243.0');
INSERT INTO `index_point_th` VALUES ('2b84b409caca4255ac36a8a0f0bc26c3', '2cf2d9b0bae04330a2e0d607734cf388', '平时', '平时成绩', '100.00', '3.1,4.2', '3711.0');
INSERT INTO `index_point_th` VALUES ('3c2678fd20794364b059e1bfbce4a107', '2cf2d9b0bae04330a2e0d607734cf388', '课程论文', '课程论文1', '100.00', '7.4,8.2', '3894.0');
INSERT INTO `index_point_th` VALUES ('3e068cadbd594139b6427c99b87d082b', '2cf2d9b0bae04330a2e0d607734cf388', '期末', '13', '9.00', '4.2', '321.0');
INSERT INTO `index_point_th` VALUES ('5553dfbf2616424c9c69462b1a291004', '2cf2d9b0bae04330a2e0d607734cf388', '期末', '5', '4.00', '3.1', '124.0');
INSERT INTO `index_point_th` VALUES ('6b9880b7c4184436a2b259be3f820e7c', '2cf2d9b0bae04330a2e0d607734cf388', '期末', '12', '10.00', '3.1', '355.0');
INSERT INTO `index_point_th` VALUES ('6d8dfe75ea0f4fec9a3a7077fcca411b', '2cf2d9b0bae04330a2e0d607734cf388', '期末', '3', '4.00', '3.1', '168.0');
INSERT INTO `index_point_th` VALUES ('8488b1b5e10540639df36e534dc3da90', '2cf2d9b0bae04330a2e0d607734cf388', '课程论文', '阅读', '100.00', '7.4,8.2', '4035.0');
INSERT INTO `index_point_th` VALUES ('89e1af0339914a778de69afe5398ceca', '2cf2d9b0bae04330a2e0d607734cf388', '期末', '15', '10.00', '4.2', '365.0');
INSERT INTO `index_point_th` VALUES ('8ac2e9a1b0b54260b59e54b07ebaf374', '2cf2d9b0bae04330a2e0d607734cf388', '期末', '9', '8.00', '3.1', '300.0');
INSERT INTO `index_point_th` VALUES ('8ae285ea42d647c58735b998ce8d44af', '2cf2d9b0bae04330a2e0d607734cf388', '课程论文', '课程论文2', '100.00', '7.4,8.2', '3933.0');
INSERT INTO `index_point_th` VALUES ('96a66529c3a44dc9bb4ad070537b33ee', '2cf2d9b0bae04330a2e0d607734cf388', '期末', '4', '4.00', '3.1', '156.0');
INSERT INTO `index_point_th` VALUES ('9f94792c6805464da7e0b7b513f135f5', '2cf2d9b0bae04330a2e0d607734cf388', '期末', '6', '4.00', '3.1', '172.0');
INSERT INTO `index_point_th` VALUES ('c6c11a2d9d6e479cb8cc4b4255ea3d97', '2cf2d9b0bae04330a2e0d607734cf388', '期末', '11', '10.00', '3.1', '354.0');
INSERT INTO `index_point_th` VALUES ('da6c2536cebe4043b6835ab36cee0b80', '2cf2d9b0bae04330a2e0d607734cf388', '期末', '14', '9.00', '4.2', '397.0');
INSERT INTO `index_point_th` VALUES ('e88a8a8e16f84a578b9bed4775af6dc0', '2cf2d9b0bae04330a2e0d607734cf388', '期末', '2', '4.00', '3.1', '180.0');
INSERT INTO `index_point_th` VALUES ('f072d1acc5da4212a9ffe877ff7b4e2c', '2cf2d9b0bae04330a2e0d607734cf388', '期末', '10', '8.00', '3.1', '276.0');

-- ----------------------------
-- Table structure for `question`
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` varchar(36) NOT NULL,
  `qID` varchar(255) DEFAULT NULL,
  `fNumber` int(2) DEFAULT NULL,
  `FindexPoint` varchar(255) DEFAULT NULL,
  `sNumber` varchar(255) DEFAULT NULL,
  `SindexPoint` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('070be3f8e1284e70b4e2acb2b727dc1f', 'ab5d8d4bdc174414bdbff9dd37170bb7', '3', null, '3.1', null);
INSERT INTO `question` VALUES ('0ac06134a6324b929e8e79433e4d60cc', 'ab5d8d4bdc174414bdbff9dd37170bb7', '4', null, '4.3', null);
INSERT INTO `question` VALUES ('1dca1ae1f7634719b2f4e816cef5e38b', 'ab5d8d4bdc174414bdbff9dd37170bb7', '2', null, '2.2', null);
INSERT INTO `question` VALUES ('1f24cc6e9f154605b8ff3ecf3c2400df', 'ab5d8d4bdc174414bdbff9dd37170bb7', '2', null, '2.3', null);
INSERT INTO `question` VALUES ('383ccaf840b04465867e4246701e3324', 'ab5d8d4bdc174414bdbff9dd37170bb7', '1', null, '1.2', null);
INSERT INTO `question` VALUES ('3b82333ad14b4454a475f0a7198377ad', 'ab5d8d4bdc174414bdbff9dd37170bb7', '1', null, '1.1', null);
INSERT INTO `question` VALUES ('42f0c683ab4043f4a3b770f9b2e0cece', 'ab5d8d4bdc174414bdbff9dd37170bb7', '3', null, '3.3', null);
INSERT INTO `question` VALUES ('5cf2d24ff9f4413ea2470eacf6bb4ab9', 'ab5d8d4bdc174414bdbff9dd37170bb7', '4', null, '4.5', null);
INSERT INTO `question` VALUES ('5fe222a1987b41f68943ac864754591a', 'ab5d8d4bdc174414bdbff9dd37170bb7', '4', null, '4.2', null);
INSERT INTO `question` VALUES ('77ee44ec0269490387df0214bba56227', 'ab5d8d4bdc174414bdbff9dd37170bb7', '5', null, '5.2', null);
INSERT INTO `question` VALUES ('82b8119c7af84bca903e2d8f08898675', 'ab5d8d4bdc174414bdbff9dd37170bb7', '6', null, '6.1', null);
INSERT INTO `question` VALUES ('a205081cc5fa4916b558c7cebf267b0a', 'ab5d8d4bdc174414bdbff9dd37170bb7', '7', null, '7.2', null);
INSERT INTO `question` VALUES ('b0036b6050aa480194a831d5df21d07b', 'ab5d8d4bdc174414bdbff9dd37170bb7', '6', null, '6.3', '111');
INSERT INTO `question` VALUES ('b5727d5cd08d4b3cb9cbd682c190eb95', 'ab5d8d4bdc174414bdbff9dd37170bb7', '5', null, '5.1', null);
INSERT INTO `question` VALUES ('bafcc86e65434c028f91a7ccff1d2dc6', 'ab5d8d4bdc174414bdbff9dd37170bb7', '8', null, '8.1', null);
INSERT INTO `question` VALUES ('bc36cef094bf42089551a656d2dfb39f', 'ab5d8d4bdc174414bdbff9dd37170bb7', '3', null, '3.2', null);
INSERT INTO `question` VALUES ('c0846c6753374b9ba91a15d1aa9bb7ad', 'ab5d8d4bdc174414bdbff9dd37170bb7', '4', null, '4.4', null);
INSERT INTO `question` VALUES ('cbb8f4a7988d4526b3fd52d1fe28447f', 'ab5d8d4bdc174414bdbff9dd37170bb7', '7', null, '7.1', null);
INSERT INTO `question` VALUES ('cd15008cae8343b0a6cd25689601f5ab', 'ab5d8d4bdc174414bdbff9dd37170bb7', '7', null, '7.4', null);
INSERT INTO `question` VALUES ('db4c5eced840414cb612746b429fcccd', 'ab5d8d4bdc174414bdbff9dd37170bb7', '8', null, '8.2', null);
INSERT INTO `question` VALUES ('e39d24ab18bf405185a8708449442043', 'ab5d8d4bdc174414bdbff9dd37170bb7', '7', null, '7.3', null);
INSERT INTO `question` VALUES ('ea9245ba08894516b1b8d4501ebe5e7c', 'ab5d8d4bdc174414bdbff9dd37170bb7', '6', null, '6.2', null);
INSERT INTO `question` VALUES ('f73506570c08495baeef6b0195ff8c97', 'ab5d8d4bdc174414bdbff9dd37170bb7', '3', null, '3.4', null);
INSERT INTO `question` VALUES ('f8b52922f6184a6ba09758d3f1445bfd', 'ab5d8d4bdc174414bdbff9dd37170bb7', '4', null, '4.1', null);
INSERT INTO `question` VALUES ('f90d1b109b2347ac8b0e37547985d4ff', 'ab5d8d4bdc174414bdbff9dd37170bb7', '2', null, '2.1', null);

-- ----------------------------
-- Table structure for `questionnaire`
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire`;
CREATE TABLE `questionnaire` (
  `qid` varchar(36) NOT NULL,
  `year` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `startTime` varchar(255) DEFAULT NULL,
  `stopTime` varchar(255) DEFAULT NULL,
  `starts` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questionnaire
-- ----------------------------
INSERT INTO `questionnaire` VALUES ('8c697d4399dd4e66ac42216fe84521e5', '2016', '数学师范', '2019-02-23', '2019-03-16', '0-0-0-0-0');
INSERT INTO `questionnaire` VALUES ('a2c0c1695302416c95f1aa443e7ccb3f', '2015', '数学师范', '2019-02-01', '2019-02-13', '0-0-0-0-0');
INSERT INTO `questionnaire` VALUES ('ab5d8d4bdc174414bdbff9dd37170bb7', '2019', '数学师范', '2019-02-18', '2019-02-23', '0-0-0-0-0');
INSERT INTO `questionnaire` VALUES ('e0afd9b325ba46d1b6e4c5d1a1df6c7f', '2017', '数学师范', '2019-02-14', '2019-02-24', '0-0-0-0-0');

-- ----------------------------
-- Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` varchar(36) NOT NULL,
  `year` varchar(255) DEFAULT NULL COMMENT '班级ID',
  `sno` varchar(255) DEFAULT NULL COMMENT '学号',
  `sname` varchar(255) DEFAULT NULL COMMENT '姓名',
  `method` varchar(255) DEFAULT NULL COMMENT '考核类型',
  `th` varchar(255) DEFAULT NULL COMMENT '题号',
  `pf` varchar(255) DEFAULT NULL COMMENT '配分',
  `score` varchar(255) DEFAULT NULL COMMENT '得分',
  `major` varchar(255) DEFAULT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  `className` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('001f7e43bbca45b29b148e21cd1b7400', '2019', '040114141', '徐静', '期末', '14', '9.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('004f8e5e33d44af0ab865e1fe53219b6', '2019', '040114146', '陶欢', '期末', '8', '6.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('00d67893c9624816820b5886e7bf5af9', '2019', '040114142', '孙雨亭', '期末', '8', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('00e69c62575c40afbb1a7cdc326c0901', '2019', '040114139', '徐思佳', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('00feaba2fc1047e6a14428c858cbb196', '2019', '040114150', '刘净楠', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('014da951e7ef40ee912397785cff0283', '2019', '040114127', '姚心怡', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('01992b5d17344e90a5f3a1e26f97648d', '2019', '040114119', '杨顺', '期末', '10', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('01e7ca5d08914c8e9836442cbb9c096a', '2019', '040114135', '沈佳敏', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('021159a0d94645d0b9792e8e061efb53', '2019', '040114145', '林琦', '期末', '15', '10.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('022fe6bcc1de4cf3827dc2f66bb67864', '2019', '040114103', '夏汪洋', '期末', '9', '8.00', '3.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('0261c74617ad41bab3ac58a14ea35365', '2019', '040114133', '谈潇玥', '期末', '12', '10.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('02810e8163424edaad473e659958623f', '2019', '040214211', '马也骋', '期末', '13', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('0286f684702c48bc91eedbc1782de6a5', '2019', '040114128', '张玲燕', '课程论文', '阅读', '100.00', '80.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('02b0e29b6fb44345ad3a78497df709d0', '2019', '030314314', '胡莹月', '期末', '13', '9.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('033d3c3e9496439cb4daeeebe957369f', '2019', '040114124', '万红利', '期末', '11', '10.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('0363dfb2854643579af23ed68805971e', '2019', '040114136', '沈云萍', '期末', '10', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('03793da58008432aac2a157d737c3566', '2019', '040114149', '曹静怡', '期末', '13', '9.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('03e9df8183c64d818c6e2f08d230c38a', '2019', '040114139', '徐思佳', '期末', '13', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('042f4743bf1e4209834fc0dfffce1406', '2019', '040114128', '张玲燕', '期末', '10', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('045b084c294a4076ac84bfed4dec01f8', '2019', '040114117', '王锦艺', '平时', '平时成绩', '100.00', '75.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('052b146fb163465494becb1e8cb95fee', '2019', '040114139', '徐思佳', '期末', '7', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('053cc9bcf773495c8901dc58e17e6e14', '2019', '040114144', '张雅蕾', '期末', '8', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('054f521df0fc4c49897a2bef79edc36d', '2019', '040114124', '万红利', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('0663e5daee8644289f2aa37e340dd5ea', '2019', '040114114', '顾康能', '期末', '8', '6.00', '3.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('06c4e9504e034093adfc1a6db54b4bc5', '2019', '040114118', '王宇超', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('077a6dbc670f44b583a3e29551cb8000', '2019', '040114110', '杜志沅', '期末', '15', '10.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('080c4999f14c432aa2c459850836746b', '2019', '030314314', '胡莹月', '期末', '15', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('0849326b4f7d42c499cce4c773903393', '2019', '040114147', '徐蓓佳', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('0860e08e92d546d8a375a6ffae71e6d0', '2019', '040114142', '孙雨亭', '课程论文', '阅读', '100.00', '95.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('08acff24e9304345932483256075e0d1', '2019', '040114103', '夏汪洋', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('08d5373ff8854e2d8f6bd7d8d6a5632c', '2019', '040114134', '赵雨婷', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('0910be241fbc456c8940b5b0d6ac330f', '2019', '040114136', '沈云萍', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('099c9dae262a4c878500b6fe8fb8a60a', '2019', '040114128', '张玲燕', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('09cadf726200422b8a067da72f5237a5', '2019', '040114136', '沈云萍', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('0a72afb5b5c646ac9692cf5b0135d571', '2019', '040114126', '肖璐琰', '平时', '平时成绩', '100.00', '76.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('0ab30baf6b2a442787a542127489a286', '2019', '041414239', '戴心雨', '期末', '10', '8.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('0ad72104902547839e16b4bead725e93', '2019', '040111101', '陈鑫', '期末', '15', '10.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('0b26f223f48445599e8a0635f0302cd6', '2019', '040114149', '曹静怡', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('0bcfe7e2dc8643b6bf09a7bdb1122f97', '2019', '040114149', '曹静怡', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('0bde52bf623941869efabfafb373e581', '2019', '040114123', '古丹', '课程论文', '课程论文2', '100.00', '85.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('0c899296f3a044078382754c4b9adfc4', '2019', '040214211', '马也骋', '课程论文', '课程论文2', '100.00', '76.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('0cd44c4721ff42f39dbe1c809112af05', '2019', '040114111', '易川江', '期末', '15', '10.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('0d0f51d27f7a47bb9c3b9878eda2468d', '2019', '040114116', '马嘉禾', '课程论文', '阅读', '100.00', '75.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('0d4d13b7ab4c4693b271a2b8790c9500', '2019', '040114117', '王锦艺', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('0df70d010db14c88800238a1212e579b', '2019', '040114142', '孙雨亭', '期末', '1', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('0e0ba2e7300d4b07b8bebc8a87c770ab', '2019', '040114112', '曾乾坤', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('0ea31256d6894905b290dee516240bd7', '2019', '040114143', '王晓蕾', '期末', '12', '10.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('0f48267d094548faab8d058d8771247b', '2019', '040114132', '沈宽', '期末', '12', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('10721cb4c5814113bc196ee8e23c5641', '2019', '040114130', '徐艺璇', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1112bc5d0ad7409b805050fa3e23d0ca', '2019', '040114141', '徐静', '期末', '12', '10.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('117e8ce8b0b04c7daf47f35070d976b2', '2019', '041414239', '戴心雨', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('11f912115e5048ac98382b3cddf70c11', '2019', '040111101', '陈鑫', '期末', '3', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('12044ba595ae4c978128d00661a773d0', '2019', '050114133', '张琦', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('121bc77a700d4390875452af37798f42', '2019', '040114129', '景莉洁', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('122e2c02e3854ee19607396e72b278a0', '2019', '040114136', '沈云萍', '期末', '15', '10.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('123b6ce3db7c48a4b126efe3b2b46c2d', '2019', '040114114', '顾康能', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('12418cda93e34660a31635f35844853e', '2019', '040114115', '凌华', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('127c0b34928d458caf757d1d858461e0', '2019', '040114111', '易川江', '课程论文', '课程论文1', '100.00', '70.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('12de2ce029c8453785f575e52bd5317c', '2019', '040114150', '刘净楠', '平时', '平时成绩', '100.00', '59.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('132aa2572c1e4244b5c67c3828395fe3', '2019', '040111101', '陈鑫', '期末', '12', '10.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('13a89e774d1347d0a9496fa51135374a', '2019', '050114133', '张琦', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('13e07fab4f1d4d39984c04a91c8a956a', '2019', '040114107', '李志远', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1479343108a44ae1b48742a5a8d4a7fc', '2019', '040114117', '王锦艺', '期末', '11', '10.00', '3.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('149f57b8c29e44759dbeb7b86cf57f28', '2019', '040114128', '张玲燕', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('14d7127ea5c746a3a6560c54602f0f1f', '2019', '040114135', '沈佳敏', '期末', '11', '10.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('14f1b9651ecc46edbced0cfa143a01dc', '2019', '041414239', '戴心雨', '期末', '11', '10.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1527e66bc3e54a058ce7a25ea164604a', '2019', '040114137', '何铭', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1558fdc5f3fc41e498107d72e25e6da5', '2019', '040114128', '张玲燕', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1599c05bf2aa494f8699c80bb9595be8', '2019', '040114134', '赵雨婷', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('15da015606594dc7b2296d88d28f35aa', '2019', '040114124', '万红利', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1603fd007f3e4f47a765016a4b6d3318', '2019', '040114124', '万红利', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1626d5bd0748447b9b9e6f3fd6bdd7e1', '2019', '040114143', '王晓蕾', '课程论文', '课程论文2', '100.00', '82.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('162ec059492e43d78fd1f733194fce14', '2019', '040114145', '林琦', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('16e510b2c27c4df39cb8150a4b4a5a15', '2019', '040614138', '吴顺婷', '课程论文', '课程论文2', '100.00', '81.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('173605b61d084dfaa46145d9fa3e9850', '2019', '040114133', '谈潇玥', '期末', '7', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('178844cc7a3d417f881d1d06e8f3fbf1', '2019', '040114128', '张玲燕', '期末', '8', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1797949a0e264f23bd02f5dd60d2cba2', '2019', '040114139', '徐思佳', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('17c80229262244d093aa8fa88bdbb05c', '2019', '040114139', '徐思佳', '课程论文', '阅读', '100.00', '80.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('17ddca8c58434c78981d1ac984824593', '2019', '040114137', '何铭', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('18e65e19bb48423fbaab64e572804155', '2019', '040114133', '谈潇玥', '课程论文', '课程论文1', '100.00', '80.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('18e981f78aa1478486fdaede1b6af6cd', '2019', '040114108', '姚籽呈', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('19832245e6394322a7d4455e4f7e1148', '2019', '040114138', '陶颖红', '课程论文', '课程论文2', '100.00', '94.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('19860adb969840a89e3fd6ddfab04878', '2019', '040114138', '陶颖红', '平时', '平时成绩', '100.00', '84.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('19e98c9267234b4ea1a0d13350a46f14', '2019', '040114116', '马嘉禾', '期末', '13', '9.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('19f8ac929f49436e973b9dd0b53d5fc9', '2019', '040114148', '赵予晴', '期末', '13', '9.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1a04a2e73bb5421db929217d31fb7577', '2019', '030314314', '胡莹月', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1b2d931c3eae4a78a468c3db2e8eb96c', '2019', '040114138', '陶颖红', '期末', '8', '6.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1bae84a4df254d5abe1bbbb8da0e8e12', '2019', '040114145', '林琦', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1cc4d6561b7d41d6a672c2e3df385973', '2019', '040114124', '万红利', '课程论文', '课程论文1', '100.00', '85.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1ccf6d57fc1d4b08bc7fd11375edc1d7', '2019', '040114114', '顾康能', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1ce0128c0b944675a46ee6f8c2819d1f', '2019', '040114138', '陶颖红', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1ce2100268944e709b2d3f0579b25166', '2019', '040114132', '沈宽', '平时', '平时成绩', '100.00', '98.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1d48c5c82cda44c5865235c0f581983d', '2019', '040114140', '程怡婷', '期末', '4', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1dcff04eb0714b9e86c25810cdc86b75', '2019', '040114142', '孙雨亭', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1dd91e545f4e4fde893ece7e2ef8378b', '2019', '040114115', '凌华', '课程论文', '阅读', '100.00', '75.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1ddd249f569f4cb8aaa5c371146d0fc2', '2019', '040114112', '曾乾坤', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1e01450845884e26aef4aa1ae1ce3bd7', '2019', '040114139', '徐思佳', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1e4db34cc91b4b2dae1cb200dbb26fb3', '2019', '040114143', '王晓蕾', '课程论文', '阅读', '100.00', '95.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1e5729f762c141469afc3e38cc6ee330', '2019', '040114119', '杨顺', '平时', '平时成绩', '100.00', '89.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1eb5364f5378404ebdb6be1ac00bb5a8', '2019', '040114150', '刘净楠', '期末', '9', '8.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1f571f19ae8b45749fa8f85f4c5d923f', '2019', '040114148', '赵予晴', '期末', '14', '9.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1f829737179b47449aa7b9b917984165', '2019', '040114123', '古丹', '课程论文', '阅读', '100.00', '80.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1fb61eed44454121b636fc5ce5ee9252', '2019', '040114105', '宋金钱', '期末', '10', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1fbec3eaec324b9893dd9d8c1a383744', '2019', '040114149', '曹静怡', '期末', '11', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1fcdface7f5c4b5c80f7b40f7f0a1ac6', '2019', '040114143', '王晓蕾', '期末', '11', '10.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('1feb08d635024028aa0d04768580da01', '2019', '030314314', '胡莹月', '课程论文', '课程论文1', '100.00', '90.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('20947f5ae25a43dd92257bb876418783', '2019', '040114148', '赵予晴', '期末', '15', '10.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('213e45ff373c4cb2859418f208400ca2', '2019', '040114147', '徐蓓佳', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('213fdcd627b9447daf436317287fc29d', '2019', '040114119', '杨顺', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('214eb0a355ae427994282c69ef3375d3', '2019', '040114138', '陶颖红', '课程论文', '阅读', '100.00', '75.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('21659fd6dcaa499db5b3c30cc6c0ea60', '2019', '040114120', '陈强', '期末', '12', '10.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2166bc7949c349ffbea5da46c6a3b15e', '2019', '040114146', '陶欢', '期末', '15', '10.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('21e8af01e92b46a9993805cef365a7cc', '2019', '040114145', '林琦', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('21fa177d35ea47019cf3a7c00874d602', '2019', '040114115', '凌华', '期末', '12', '10.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('21fd9369d11e4701a7c926fb5c04137c', '2019', '040114123', '古丹', '期末', '12', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('228ce55d04604b93819f4ca5e0f2a011', '2019', '040114120', '陈强', '课程论文', '阅读', '100.00', '95.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('22e58cecc18f461abef290bd8359bdc3', '2019', '041414239', '戴心雨', '期末', '14', '9.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('22fc476712b24a57ba1eb57a28f0bb7e', '2019', '040114108', '姚籽呈', '期末', '10', '8.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('231664e03f2845fea6858d3f89d21ea4', '2019', '040114148', '赵予晴', '课程论文', '课程论文2', '100.00', '81.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('232417c8515848ec88784c4b1a6c47be', '2019', '040114107', '李志远', '期末', '15', '10.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('246dd10f684d4ffc9cf8f7ef614f24de', '2019', '040114146', '陶欢', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('24da9a57e9d54cd9b4d2838250e0fa6e', '2019', '040114129', '景莉洁', '课程论文', '课程论文1', '100.00', '82.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('258b3769b11d4ac7acf30d9b147a147d', '2019', '040114124', '万红利', '期末', '15', '10.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('25954d8d59f84d96b9d24a9e76ccd55e', '2019', '040114118', '王宇超', '课程论文', '课程论文2', '100.00', '75.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('25c84eec6e884bafa4be59f1776a2862', '2019', '040114122', '魏薇', '期末', '14', '9.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('25e9213a5c714e2e941f8e61f0caaa80', '2019', '040114133', '谈潇玥', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('267ef2f4ad7e4d65a92fb0c7aa87f1cc', '2019', '040114124', '万红利', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('27754c9e036d40298a2b0579c3a67dba', '2019', '040114126', '肖璐琰', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('27ac604d441b4d3695716fabcfacc8e7', '2019', '040114144', '张雅蕾', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('27bc36b241b14cbdb2607a3015a13ed6', '2019', '040114108', '姚籽呈', '期末', '6', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('27d3808b864444a883d6aa21931d9618', '2019', '040114107', '李志远', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('27f1736aeace45cc821966240aef0d78', '2019', '040114105', '宋金钱', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('286ea656cb604bf6ab2f4f17e8b4aab4', '2019', '040114147', '徐蓓佳', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2954405a6963491dab3f2164c97b0778', '2019', '040114115', '凌华', '平时', '平时成绩', '100.00', '74.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('29747faeb76f417498d0c961a37c2691', '2019', '040114110', '杜志沅', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('297c4d2d0ade4a009daeb3b1017d0b2a', '2019', '040114134', '赵雨婷', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2a1505b49e724cf4bf1d21471c99d18b', '2019', '040114132', '沈宽', '期末', '11', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2a29d6d2d3884c5095ca19173cdd6963', '2019', '040114122', '魏薇', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2a368be12eaf4b629dfa7d1bce9c0ed7', '2019', '040114149', '曹静怡', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2b0fa43a4dec43ba8ff6e6b9c3066677', '2019', '040114114', '顾康能', '期末', '13', '9.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2b16682240d449849628fa062daadf14', '2019', '040114133', '谈潇玥', '课程论文', '阅读', '100.00', '80.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2b3a97aac3bf4e99993dfba7812eedfa', '2019', '040114122', '魏薇', '期末', '15', '10.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2bfaddd5402249e7b160a3ebf61c9986', '2019', '040111101', '陈鑫', '期末', '2', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2c481562af7d4023acc255182e86deba', '2019', '040114141', '徐静', '课程论文', '课程论文2', '100.00', '85.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2c4da5549c2f48938120efe94ffe13f1', '2019', '040114126', '肖璐琰', '期末', '15', '10.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2c9023ea23e8417eaa7d081143450b2e', '2019', '040114119', '杨顺', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2cb799abb5fe441685863a9f42e76033', '2019', '040214211', '马也骋', '期末', '15', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2d483a4efe8a4ebda803aa495822a467', '2019', '040114120', '陈强', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2d5f2ff36a4c4360aee6d706bfb79b58', '2019', '040114126', '肖璐琰', '期末', '13', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2d676ab80185437f82ea58b87d757769', '2019', '040114134', '赵雨婷', '期末', '11', '10.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2d702a055a6e450a955c9d5bc139e35f', '2019', '040114117', '王锦艺', '期末', '8', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2df8e2e87d184cb88937573a28ba012e', '2019', '040114144', '张雅蕾', '课程论文', '阅读', '100.00', '95.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2e40cde12bb04bbc813b8911650a3445', '2019', '040114146', '陶欢', '课程论文', '课程论文2', '100.00', '71.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2e4b810fe44345db9b7418082fb46307', '2019', '040114123', '古丹', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2e7d2ed404d94071a6cc7a3cdc62a7d9', '2019', '040114103', '夏汪洋', '平时', '平时成绩', '100.00', '63.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2e86d897c68a4158adade4d13fa09c67', '2019', '040114122', '魏薇', '平时', '平时成绩', '100.00', '74.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2eb5643322654e2eb64674765880ca65', '2019', '040114119', '杨顺', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2f2a130aa062443d80d6749a5ec3fd14', '2019', '040114148', '赵予晴', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2f4515fa1b644dfa8fda7409779fd028', '2019', '040114119', '杨顺', '课程论文', '课程论文1', '100.00', '85.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2f636c0291e84cad9da701eda675d318', '2019', '040114120', '陈强', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2f8a2b89294147d2bbe682d17c616dcb', '2019', '040114138', '陶颖红', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('2fcff347d1c74c9b90ba8eb45902dd51', '2019', '050114133', '张琦', '期末', '10', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('302746c99ecb4c7bafce8218231d28df', '2019', '040114122', '魏薇', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('303b05ed1af94bedbf493d77ae86d622', '2019', '030314314', '胡莹月', '课程论文', '阅读', '100.00', '95.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('31884bed67ed4180a77810aabd2cd6ea', '2019', '040114147', '徐蓓佳', '期末', '11', '10.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('31a4014a560849de8bccbf0cf157bbc4', '2019', '050114133', '张琦', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('31caf1a84014434aaad47f110a900345', '2019', '040114105', '宋金钱', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('3232dac19bdd4f20863ed59811312b70', '2019', '040114117', '王锦艺', '课程论文', '课程论文1', '100.00', '85.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('32426c2c768f4689a57c68c3b204fb48', '2019', '040114134', '赵雨婷', '课程论文', '阅读', '100.00', '95.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('32970c4aa7b34c9f8ca4606e678224ab', '2019', '040114105', '宋金钱', '平时', '平时成绩', '100.00', '71.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('32a3653c186a4708ad81bf61565aee48', '2019', '040114132', '沈宽', '课程论文', '课程论文2', '100.00', '96.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('336936899d034b5a9f5366d3927589f9', '2019', '040114105', '宋金钱', '课程论文', '课程论文2', '100.00', '82.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('33f7c87c4d1341489ed6bce1028bf52b', '2019', '040114140', '程怡婷', '期末', '12', '10.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('345214a362274058b80c2f12da444ebb', '2019', '040214211', '马也骋', '课程论文', '课程论文1', '100.00', '86.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('34b62e1947944bd48d8efe9466da3eae', '2019', '040114110', '杜志沅', '课程论文', '课程论文1', '100.00', '80.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('358e3bda6f204111a7c3b306e649127c', '2019', '040114133', '谈潇玥', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('35eab63516524ea88a0b34b0cad003e9', '2019', '040114124', '万红利', '期末', '4', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('363a2295d8144a59bc280efffddbf732', '2019', '040114140', '程怡婷', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('3686e5fa01c841d8b01c17379fad7e9e', '2019', '030314314', '胡莹月', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('372c15e75729407a95b5986c2c1f367b', '2019', '040114139', '徐思佳', '课程论文', '课程论文1', '100.00', '83.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('372fee19987d4229bb2a4617df76b20b', '2019', '030314314', '胡莹月', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('373dbce6648c4622806ffcb2ec19c7ab', '2019', '040114114', '顾康能', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('37b282e5762f4d3a98b93fcc3e213c00', '2019', '040114116', '马嘉禾', '期末', '8', '6.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('37e4c302a9a34f62914e7a4b6375d584', '2019', '040114150', '刘净楠', '课程论文', '阅读', '100.00', '95.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('37f8a3d7655d45bd80a55d859c5fe57a', '2019', '040114132', '沈宽', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('3827d1e6852c425b9e7fb4ae39ede934', '2019', '040114139', '徐思佳', '期末', '11', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('38488a0dc88b43d499e936fd0b2d78cd', '2019', '040114110', '杜志沅', '期末', '4', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('38b2bc0fc4e44a049b5e455d7bc769f2', '2019', '040114118', '王宇超', '期末', '15', '10.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('3914e23de2524c29b8f99f9604a2128c', '2019', '050114133', '张琦', '期末', '8', '6.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('394698426f8c4819b66fa4f1539255b9', '2019', '040114127', '姚心怡', '平时', '平时成绩', '100.00', '89.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('39cdc70b1e2748fdbc9517ce29b5c690', '2019', '040114105', '宋金钱', '期末', '8', '6.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('39e07c4d6fa4461980c1094d01375dfd', '2019', '041414239', '戴心雨', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('3a4c4a64ffad444c87a3e05fe9d2e83a', '2019', '040614138', '吴顺婷', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('3a873d878cda452f84aaaf33d0885bb2', '2019', '040114132', '沈宽', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('3a89f197eefb4d4ab1cddc19e2186407', '2019', '040114150', '刘净楠', '课程论文', '课程论文2', '100.00', '71.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('3af5f566bcc64154931a88c7998429f3', '2019', '040114124', '万红利', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('3b49c26fa5234f13bfd5a2a990b640ae', '2019', '040114139', '徐思佳', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('3bef2fb70d694a5490fbfcf3c3d595b8', '2019', '040114130', '徐艺璇', '期末', '14', '9.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('3c0c3d357fef4eae86ea36259f42461c', '2019', '040114142', '孙雨亭', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('3ca06b51eea94a13a921ccb83abf319c', '2019', '040114131', '毛佳瑜', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('3ca9c7982a0f41419b6e47c0e50e7c79', '2019', '040114148', '赵予晴', '期末', '9', '8.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('3cb66545870044aba2cc1811f8759354', '2019', '040114136', '沈云萍', '期末', '8', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('3ce83d1aca7944e799b50b7c1ad8040a', '2019', '030314314', '胡莹月', '课程论文', '课程论文2', '100.00', '87.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('3d3e13643f6a47658fff28c4c8dddaf6', '2019', '040114111', '易川江', '期末', '13', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('3d9fa82746d341d0a4615725aee83602', '2019', '040114139', '徐思佳', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('3eb8e376fb6845ad9ba7e446d1606a73', '2019', '040114111', '易川江', '期末', '11', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('3ed0f53c78594d68b8ae844836dbaa9e', '2019', '040114148', '赵予晴', '期末', '12', '10.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('3f247059cec14c06be47f98d3cb342c1', '2019', '040114131', '毛佳瑜', '期末', '15', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('3f2d6145672442baa60f1e9905281fa4', '2019', '040114147', '徐蓓佳', '期末', '15', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('3f3e31d17ff1473cb9e94607c90a4c9f', '2019', '050114133', '张琦', '期末', '15', '10.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('3f63cfefc5a34e95836dfa2d2a7a50b5', '2019', '040114110', '杜志沅', '期末', '5', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('3f7ac85efcea4e7a910b8b56a405fcc7', '2019', '040114111', '易川江', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('400ba839e4594e43b553f4ecc408f8e3', '2019', '040114123', '古丹', '期末', '10', '8.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('405b31b4fa6c42fa83165ea82d4ac860', '2019', '040114138', '陶颖红', '课程论文', '课程论文1', '100.00', '80.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('407b984e4e744b02b2ae8a9f1a76065d', '2019', '040114134', '赵雨婷', '期末', '8', '6.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4127c8654cd84f27bed52ba2bea3dc39', '2019', '040114115', '凌华', '期末', '15', '10.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('41dfdf71785545f2a3fc195dfdbebf45', '2019', '040114135', '沈佳敏', '期末', '10', '8.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('41e02b59859944d7873bc0a0593d16ee', '2019', '040114130', '徐艺璇', '期末', '10', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('41e7e09d37bb4b19be9a36ff8aa814b7', '2019', '040114150', '刘净楠', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4214c68ae0c3447eaf09cf91d13555bf', '2019', '040114120', '陈强', '期末', '8', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('424d0e4d932b4260b26665da8750bbdc', '2019', '040114118', '王宇超', '平时', '平时成绩', '100.00', '68.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('42d6261047dc4dea9ca4a8c390e15d41', '2019', '040114129', '景莉洁', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('42f0d3884b10454ca38fdff630037b74', '2019', '040114148', '赵予晴', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('42f74ddb3ef74d46955272bfa1d066fd', '2019', '040114144', '张雅蕾', '期末', '11', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('431e588e89af44fa85dbcbb6c0ce6b83', '2019', '040114126', '肖璐琰', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4333f92ef7cc4a3baf68fbb4e7948077', '2019', '040114123', '古丹', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('435db582fc004337b698d71489d18bef', '2019', '040114122', '魏薇', '期末', '12', '10.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('437acc8a1b5d4ec2b7378c0130992cfb', '2019', '040114146', '陶欢', '期末', '10', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('43b089dee007413b9d281400f9ef292f', '2019', '040114147', '徐蓓佳', '课程论文', '课程论文2', '100.00', '82.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('44c1dade29434ec4ac72c8d20ea35a94', '2019', '040114142', '孙雨亭', '期末', '12', '10.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('44d8a2f0cbe945d985c66bcf47aa460a', '2019', '040114120', '陈强', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('453e44a7ee2a444798e66953d434f952', '2019', '040114110', '杜志沅', '期末', '6', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('459245e5f2954c5b8249a582f51fd418', '2019', '040114127', '姚心怡', '期末', '8', '6.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('45abce34b65d40d39cf462330a3cac30', '2019', '040114128', '张玲燕', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('45c69ea9fbdc474eb2001267ef2f028c', '2019', '040114145', '林琦', '期末', '13', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('466934b4a4ee47cb94679e22f22134cf', '2019', '040114142', '孙雨亭', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('467e01c6ae5c4010b0099ec946a655ec', '2019', '040114129', '景莉洁', '期末', '12', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('46912e021a794130a585f92866f06c74', '2019', '040114131', '毛佳瑜', '平时', '平时成绩', '100.00', '91.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4694f8dd79834b9b9e217f252bfd05a2', '2019', '040114112', '曾乾坤', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('46a54df264284eefb9e5f47f62f5fddd', '2019', '040114135', '沈佳敏', '课程论文', '课程论文2', '100.00', '85.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4799ef0aace14a9c8f55f2891da6441c', '2019', '040114144', '张雅蕾', '期末', '14', '9.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('47d767ef827444b79a794f02db4369d0', '2019', '040114114', '顾康能', '期末', '10', '8.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('47dfa68222d642129a19889bc8484798', '2019', '040114111', '易川江', '期末', '1', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('48563fefdcd5423da0853f3173ed7616', '2019', '040614138', '吴顺婷', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4880a9eb432f417bbd2dcc648f841f56', '2019', '040114119', '杨顺', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('499f889880514d38beff5ac974d6a872', '2019', '040114117', '王锦艺', '期末', '15', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('49b6c136861f441cb3ddf8a490e79ba1', '2019', '040114105', '宋金钱', '期末', '12', '10.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4a4e36609f2c4bd69bd332884948176f', '2019', '040114142', '孙雨亭', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4a595b49c5d3497ab30a309fc057a93f', '2019', '040214211', '马也骋', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4a6f244aea72409f8ccb7505388d1eed', '2019', '040114134', '赵雨婷', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4a9e435477f94c839a8818e591d36aec', '2019', '040114149', '曹静怡', '平时', '平时成绩', '100.00', '69.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4af3b1143e414af7abb6e097f658d4d4', '2019', '040114108', '姚籽呈', '期末', '3', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4bad348dc36d4773ad9639fc36f8845c', '2019', '040114135', '沈佳敏', '期末', '8', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4baed0c76b0d4c3ebab161e99e85eaae', '2019', '040114107', '李志远', '平时', '平时成绩', '100.00', '78.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4bd8ca8726b74d1e92978ee93a3ad1be', '2019', '040114105', '宋金钱', '期末', '11', '10.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4c178d187fea43cc8caae3b40e8b1e78', '2019', '040114131', '毛佳瑜', '期末', '10', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4caaa5b2433b40a1997acf5a19541fcc', '2019', '040114110', '杜志沅', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4cf287baa00949e89cff93c0e250ffe6', '2019', '040114135', '沈佳敏', '期末', '12', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4d137c616f734353865ae8baccf2b494', '2019', '040114146', '陶欢', '期末', '13', '9.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4d85de4423214b378505e9d105509286', '2019', '040114129', '景莉洁', '期末', '13', '9.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4dcaa6b173f0492bbccd713eceb1a820', '2019', '040114130', '徐艺璇', '期末', '8', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4ddb66cfc0954a3c81fb0d1112f46887', '2019', '040114135', '沈佳敏', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4ddd7fffc0a844b5bfb4dc840ce8c33a', '2019', '040114112', '曾乾坤', '期末', '12', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4de06dbba5824cefa4bc32f27574f1e3', '2019', '040214211', '马也骋', '期末', '8', '6.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4dea14155c3e42608765bfcd8d43fd03', '2019', '040114107', '李志远', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4e046004c6164099ab5a5704e98b5bfd', '2019', '040114148', '赵予晴', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4ea1b34c57f44efc946059e48b5db25d', '2019', '040111101', '陈鑫', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4ead9dd0106e4092a74119d6068cbebc', '2019', '040114133', '谈潇玥', '期末', '9', '8.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4f14bebe2e3f459191622fdae25e2edd', '2019', '040114129', '景莉洁', '期末', '11', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4f6b8c4d7ee64485996783bcdc5d8f1f', '2019', '040614138', '吴顺婷', '期末', '8', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4fb5cc5c36f94bc19ffa4967c4b3785c', '2019', '040114118', '王宇超', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4fe018dd8474444b877ac40b6920534d', '2019', '040114141', '徐静', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('4ff250eea3514ad2bb3a6ccb274bf910', '2019', '040114134', '赵雨婷', '期末', '15', '10.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('50242e45ed60435a8e869d8e32e2ffc3', '2019', '040114132', '沈宽', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5053134d9bcc44a5a27fdf222420014b', '2019', '040614138', '吴顺婷', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('508cab0420a54ec49cad171c5c2c4dd2', '2019', '040114141', '徐静', '期末', '9', '8.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('50b3dfbf6df24c76b02ee0f78c71cdcb', '2019', '040114150', '刘净楠', '期末', '11', '10.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5186932fef924d1e90105e5b6904e210', '2019', '040114138', '陶颖红', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5188c3dad5c94628bdc9287cc521b0f2', '2019', '040114128', '张玲燕', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('51b52a6092f24189ab9026725e49511f', '2019', '030314314', '胡莹月', '平时', '平时成绩', '100.00', '81.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('51efbcf1ae834d359f4b1c28dd683931', '2019', '040114147', '徐蓓佳', '期末', '10', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5216f33bd5df41cc9d2a5675afac39e8', '2019', '050114133', '张琦', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('52547500a2d349f3ad524704ee8316f2', '2019', '040114118', '王宇超', '期末', '13', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('52770fb52ba34198aaa615489fcdb3b6', '2019', '040114111', '易川江', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('527f0011337244839c6211471e14507b', '2019', '040114103', '夏汪洋', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('52cfab4c02694c90acbbc93e8d1288d4', '2019', '040114147', '徐蓓佳', '期末', '12', '10.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('52d1cba182b6491d9fba0ef5fb5b4acd', '2019', '040114135', '沈佳敏', '期末', '13', '9.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('52ecf0fa6f6a4c5ba645c89e5bc05bce', '2019', '040114136', '沈云萍', '期末', '12', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5355d042c6484ac1b27f7fcc93d4ab0e', '2019', '040114132', '沈宽', '期末', '13', '9.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('538ef23e6a5c4b369280440d64c60688', '2019', '040114145', '林琦', '课程论文', '课程论文2', '100.00', '90.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('53c8b6a63e6244ed8bad84033349a84f', '2019', '040114137', '何铭', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('540be5c1c84d4d08a68d1313bef8b3be', '2019', '040114137', '何铭', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('548b6d47caf8423f9189a3f6f28a755d', '2019', '040114140', '程怡婷', '课程论文', '课程论文2', '100.00', '81.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('55638747843341c1b7137203e2264743', '2019', '040114103', '夏汪洋', '期末', '11', '10.00', '3.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('563058d1f22244a0858c32f230502059', '2019', '040114147', '徐蓓佳', '期末', '8', '6.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('56670558601a4aff9ca169a705f71682', '2019', '040114129', '景莉洁', '课程论文', '课程论文2', '100.00', '81.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('567dc2edc63a427c99b58cb04ae903c3', '2019', '040614138', '吴顺婷', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('569005f56b4e4ff7a79aae59bc9ecea0', '2019', '040614138', '吴顺婷', '课程论文', '课程论文1', '100.00', '85.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('56eaab70021244889b33d400021b2788', '2019', '050114133', '张琦', '期末', '1', '4.00', '3.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('57217974b09d4149910c2bdcd0072685', '2019', '040114110', '杜志沅', '期末', '8', '6.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5736bacc82d14af9ad097dfbfb700e05', '2019', '040114147', '徐蓓佳', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5749dbab5275496aa38a4f69822a188b', '2019', '040214211', '马也骋', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('575b9f7001ec424aaedf701823b28523', '2019', '040114119', '杨顺', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5871dcba391c46bea535a3147ebcb2e1', '2019', '040114129', '景莉洁', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('587ef1c4dfd24754beb50f63b971c952', '2019', '040114123', '古丹', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('58a0e629f9984ed28f6e6501db09a64e', '2019', '040114127', '姚心怡', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('58c0202e616b408e9e43d1010fba3677', '2019', '040614138', '吴顺婷', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('58ed1ed884ff4bbab5122eca9eff03ba', '2019', '040114142', '孙雨亭', '期末', '11', '10.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5991ea7f4926402e9e5741acbafd215b', '2019', '040114103', '夏汪洋', '期末', '15', '10.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('59b7bda4575648a39bea794324d17ecb', '2019', '040114140', '程怡婷', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('59c9652344c94069a5b4e68f0babf134', '2019', '040114107', '李志远', '课程论文', '课程论文1', '100.00', '75.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('59cb981bcbdf400eba0d6ecb999768ef', '2019', '040614138', '吴顺婷', '期末', '1', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('59f23332eae244ce8e7c7eff4c8b2691', '2019', '040114114', '顾康能', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('59f2c14e092e4425961191a36289de32', '2019', '040114134', '赵雨婷', '课程论文', '课程论文1', '100.00', '80.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5a21cc946da04036977e53f423f207fb', '2019', '040114107', '李志远', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5ae3518f6ce84cd88f9f4c2e306e1148', '2019', '040114112', '曾乾坤', '期末', '11', '10.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5b3dc73152004e2fa43ddb2d95119940', '2019', '040114112', '曾乾坤', '期末', '8', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5b974ce8e9a54bcf82ce5e3c784059c0', '2019', '040114133', '谈潇玥', '期末', '10', '8.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5bac01613855486992d3c3c2bede85b4', '2019', '040114145', '林琦', '期末', '10', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5bba9d5f57c44531a03b30500575ff1d', '2019', '040114133', '谈潇玥', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5bee991dc3b34be5a06ae86e6c364ccc', '2019', '040114107', '李志远', '期末', '14', '9.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5c3424e3e4f544b7ae64e468104ec44a', '2019', '040114126', '肖璐琰', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5c391dae4c9f46148bd16b6259eeb475', '2019', '030314314', '胡莹月', '期末', '9', '8.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5cb8b420cbba41128a20bdab503c79bf', '2019', '040114136', '沈云萍', '课程论文', '课程论文1', '100.00', '80.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5d54e5610a1849b28909dd6a37c72d6c', '2019', '040114149', '曹静怡', '课程论文', '课程论文2', '100.00', '71.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5de5237ddfc74e3e898ec1e1387b46d5', '2019', '040114126', '肖璐琰', '期末', '9', '8.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5e047ae62e194cdeac8107e754801c0d', '2019', '040114107', '李志远', '期末', '13', '9.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5e1f020a513248b9a155ec6ad3d4f2db', '2019', '040114120', '陈强', '平时', '平时成绩', '100.00', '87.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5ea929bd1af44dad8aab7145876b7f52', '2019', '040114130', '徐艺璇', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5f55344ca22746029be3fbd5981dd440', '2019', '040114143', '王晓蕾', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5f7b68efe1574a9a800f2c4a057bdba6', '2019', '040114103', '夏汪洋', '期末', '3', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5f83b9931cf34d0ca60de771424f708d', '2019', '040114134', '赵雨婷', '平时', '平时成绩', '100.00', '81.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('5fa84cf93e73464fac2505f12795e5bf', '2019', '040114150', '刘净楠', '课程论文', '课程论文1', '100.00', '80.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('603327d16030411383aa0d181bd8ec1a', '2019', '040114130', '徐艺璇', '课程论文', '课程论文1', '100.00', '80.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('6090c6ccf6414f86be598a4372cbb674', '2019', '040114145', '林琦', '期末', '11', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('60e51ca9093946c1a29b81d32996f848', '2019', '040114130', '徐艺璇', '平时', '平时成绩', '100.00', '93.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('617b40da855a4671a70a00f94840b80d', '2019', '040114142', '孙雨亭', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('61c31c551e114234b231a8614fb3cf1a', '2019', '040114122', '魏薇', '期末', '6', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('6453c99cf55f436bbc52ad11a68017e1', '2019', '040114131', '毛佳瑜', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('64c3c5860cd34586a214c76b9a0f6825', '2019', '040114139', '徐思佳', '期末', '10', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('64d2243cbf51403dbd11507c455f1c78', '2019', '040114118', '王宇超', '期末', '8', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('65008c68a3b947deaa3e858388d7361f', '2019', '040114111', '易川江', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('6547f6298a2242d9a84e777a3789a863', '2019', '040214211', '马也骋', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('65d92430ae714799a8d3fd187daf6a0b', '2019', '040114116', '马嘉禾', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('65fc2bf4b08a40acafe81feab79dfe67', '2019', '040114137', '何铭', '期末', '15', '10.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('669ce523841e4f70b2c58d775135c3f1', '2019', '040114137', '何铭', '期末', '12', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('66c1070921e8459aa2824e06489323dd', '2019', '040114141', '徐静', '课程论文', '阅读', '100.00', '70.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('6713456062aa4b06a7139b0766cb4858', '2019', '040114144', '张雅蕾', '期末', '13', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('67138dcae2754efa8f5a9c037f7935c0', '2019', '040114134', '赵雨婷', '期末', '10', '8.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('67157737e58d4aabb8d403ff4d1a07fb', '2019', '040114144', '张雅蕾', '课程论文', '课程论文1', '100.00', '80.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('673d21ca5cf442f6983e746350ca49e0', '2019', '040114108', '姚籽呈', '期末', '11', '10.00', '3.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('673d81db0b1f4cfd9cb2a9e0c3022043', '2019', '040114117', '王锦艺', '期末', '14', '9.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('67a85aa25a2a4b9e951e6b9b21c21f9d', '2019', '040114111', '易川江', '期末', '10', '8.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('683cd4bd778b4c588e76101640bc2a3d', '2019', '040114117', '王锦艺', '期末', '13', '9.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('6842c18916ea46b892cc34a5796937d5', '2019', '040114117', '王锦艺', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('68f4f167110047a2801b9a1a2cc33ea6', '2019', '040114117', '王锦艺', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('692ecf1db283425c904d206b5cc5ed0e', '2019', '041414239', '戴心雨', '期末', '12', '10.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('6986dac255a847969753dfe7eef586f5', '2019', '040114135', '沈佳敏', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('69cdc8ea8d9245ada88846f7222437da', '2019', '040114119', '杨顺', '期末', '13', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('69e2b3efcd9a4952b494b750b3d39166', '2019', '040114120', '陈强', '期末', '2', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('6a43e4af3c734b4baf331b1c2ab81e96', '2019', '040114107', '李志远', '期末', '6', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('6b0caa3edcc14c6b89977b6390d6091e', '2019', '040114128', '张玲燕', '期末', '13', '9.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('6b29b28ac34d4bb381f6f620caed2581', '2019', '040114144', '张雅蕾', '期末', '12', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('6b45555907e94ae691070e1ea9f4d8f1', '2019', '040111101', '陈鑫', '期末', '5', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('6ba72c7c2d83446db6a19da635afb6e4', '2019', '040114124', '万红利', '期末', '1', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('6c16287fa41a41fd8ddfb4bc7de7069b', '2019', '040114140', '程怡婷', '平时', '平时成绩', '100.00', '72.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('6cade94420904dd3b6a074eaea71dcde', '2019', '030314314', '胡莹月', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('6d65d094365c4c978396af184051176b', '2019', '040114150', '刘净楠', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('6d856372e2204cb78ab7dbaf9260e8d0', '2019', '040114144', '张雅蕾', '期末', '1', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('6e155b40d6c249a28608cb22f35d4209', '2019', '040114120', '陈强', '期末', '13', '9.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('6ead65d90b474a7cae34f383f2d4cf01', '2019', '040114140', '程怡婷', '期末', '10', '8.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('6eef7f4e31a44fc4961963e593dd9c95', '2019', '040114136', '沈云萍', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('700030250851470092516fc8f9d5d0a4', '2019', '040111101', '陈鑫', '期末', '6', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('702b816d6c0043c1bf78c54943cd0b5a', '2019', '040114128', '张玲燕', '期末', '11', '10.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('71671a2fa97445218ae2ec1d9ee508ad', '2019', '040114124', '万红利', '平时', '平时成绩', '100.00', '76.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('720667addc574e65b5040b9dcd80c90e', '2019', '040114150', '刘净楠', '期末', '14', '9.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('721671e29a1742678179f7635378ee98', '2019', '040114126', '肖璐琰', '课程论文', '课程论文1', '100.00', '78.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('721996e8d2524b0e96568f2cff692020', '2019', '040114150', '刘净楠', '期末', '7', '6.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7268d3d3a510490faf96a963765bb430', '2019', '040114112', '曾乾坤', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('72a85946d9534625a2bcb077a2dcdd03', '2019', '040114107', '李志远', '期末', '12', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('72dc0bc3cb6d4529a04b75b3f882503d', '2019', '040114146', '陶欢', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('733e80327be14d898fb0a409f9304034', '2019', '040114108', '姚籽呈', '期末', '14', '9.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7392a92fdb374920bdb49a9200074fff', '2019', '040114136', '沈云萍', '平时', '平时成绩', '100.00', '83.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7397e9a8c046472b8eee15a482a8f816', '2019', '040114111', '易川江', '课程论文', '课程论文2', '100.00', '87.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('740aa0b460bb4540ba1356e535cb6eef', '2019', '030314314', '胡莹月', '期末', '12', '10.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7410c6a636984653b0c4f50122109893', '2019', '030314314', '胡莹月', '期末', '10', '8.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('742c87f972b3481584854ef8cf18fbeb', '2019', '030314314', '胡莹月', '期末', '3', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7444ec6238674884b7363d0888a9d2fa', '2019', '040114134', '赵雨婷', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('746f79a9104f406994f78d02372bb2e2', '2019', '040114147', '徐蓓佳', '平时', '平时成绩', '100.00', '71.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('74ea399496164590a48130ec03b98abc', '2019', '040114149', '曹静怡', '期末', '9', '8.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7508d2f2148b428cb14322505ba09f62', '2019', '050114133', '张琦', '期末', '9', '8.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7530f89d95454727a0afcc4e7d38f58a', '2019', '040114135', '沈佳敏', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7564c23704594cb9a405865809df6cd2', '2019', '040114149', '曹静怡', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7574e703b69743218e0b254627809d50', '2019', '040114115', '凌华', '期末', '5', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('75fa85d692e346e594d011ad5d2bddf6', '2019', '040114134', '赵雨婷', '期末', '13', '9.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('760792281969411f97af9f2771d670aa', '2019', '040114108', '姚籽呈', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7650f9bb1b5b42649604580dec1e2b2f', '2019', '040114126', '肖璐琰', '课程论文', '阅读', '100.00', '95.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7659c42222fc4d9a9e5b8ed46ba440ef', '2019', '040114141', '徐静', '期末', '5', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('766036b778664454a788967441b85e86', '2019', '040114150', '刘净楠', '期末', '8', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('769c788b84c94fafb9f241c4148fbb41', '2019', '040114118', '王宇超', '期末', '12', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('76cb22ed12ab4df6a064e16479b5a552', '2019', '040114132', '沈宽', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7708cccb329745c7940f497d9eaba4a5', '2019', '040114131', '毛佳瑜', '课程论文', '课程论文1', '100.00', '70.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('770db90335764f9e8cf00639affcf79a', '2019', '050114133', '张琦', '平时', '平时成绩', '100.00', '65.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7723304aaab945429e45cec92448b661', '2019', '040114132', '沈宽', '期末', '10', '8.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('775cf606c27849c4b8b12d8f0c35db1e', '2019', '040114111', '易川江', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('778c7ce9a9654e6da7fd8d4a4df85030', '2019', '040114103', '夏汪洋', '期末', '8', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('77e4d996e487490e9186438c2ceeeecb', '2019', '040114150', '刘净楠', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('782513a22d224fcbbd0dd56c4d1d63f4', '2019', '040114103', '夏汪洋', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('78ea449a6a884f19b51655c32999d1f6', '2019', '040114103', '夏汪洋', '课程论文', '阅读', '100.00', '75.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('796a5fd7d3aa49409496cb59f5582925', '2019', '040114119', '杨顺', '期末', '1', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7971b608e5da4a40a7032a6b9d4e7f6a', '2019', '040114144', '张雅蕾', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('79741ca0eeeb49578ea82fa7a1f7cdc8', '2019', '040114127', '姚心怡', '课程论文', '课程论文1', '100.00', '85.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('79b1fa011b754f90aba02c92629d90d0', '2019', '040114111', '易川江', '平时', '平时成绩', '100.00', '61.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('79b55d5bf4ad44ab8822c2206533d7ed', '2019', '040114118', '王宇超', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7a488cbc3b034205b53cecaef9cc576f', '2019', '040114146', '陶欢', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7a5eb480f33347b5a52a712d04a31cf6', '2019', '040114128', '张玲燕', '期末', '15', '10.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7af032f93a7b47038861d4ec4ebb0259', '2019', '040114146', '陶欢', '期末', '11', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7b01e72b87604f1d95bdbd63e3652b72', '2019', '040114142', '孙雨亭', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7b1edaca6196446597279fdc6295a2c2', '2019', '040114127', '姚心怡', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7b2bff17cf384addb9f214a2dd815450', '2019', '040114110', '杜志沅', '期末', '11', '10.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7b41edaaf79145838668f3865f53a584', '2019', '040111101', '陈鑫', '期末', '8', '6.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7bd5872592d2422cbb5ca8059857020b', '2019', '040114119', '杨顺', '期末', '5', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7c9d6e696c2e4c4e92200ee343d1fd4a', '2019', '041414239', '戴心雨', '课程论文', '课程论文2', '100.00', '81.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7cbdf5f46e044efb9030d7790836a877', '2019', '040114126', '肖璐琰', '期末', '12', '10.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7d277f43a8df4ae0b597865039c4f61c', '2019', '040114110', '杜志沅', '期末', '13', '9.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7d2f1b43025f4408bc450e651540a801', '2019', '040114122', '魏薇', '课程论文', '课程论文1', '100.00', '86.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7d425a31aede4c039396784cb4b6a57a', '2019', '040114149', '曹静怡', '期末', '15', '10.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7d5348f3381d425fbb82c0e124f5cd4e', '2019', '040114143', '王晓蕾', '期末', '8', '6.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7db40766cf454768954ea09ee0b1a4a2', '2019', '040114130', '徐艺璇', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7e0b65375a0f4e258605bdb3ab36d808', '2019', '040114139', '徐思佳', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7e391b3b9441462aae579b7225afbc67', '2019', '041414239', '戴心雨', '期末', '13', '9.00', '3.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7e3f81cc800e482d8a7cb2acde21f932', '2019', '040114138', '陶颖红', '期末', '3', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7e644db5f79942fa9bea7e310f844a95', '2019', '040114112', '曾乾坤', '课程论文', '课程论文2', '100.00', '79.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7eb0131c7d484fe89f9fd16cbd5e1c14', '2019', '040114117', '王锦艺', '期末', '10', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7f006e6e8c964615979a1adb3d9f13ff', '2019', '040114122', '魏薇', '课程论文', '阅读', '100.00', '95.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7f34ae514acd4b67bf280c0c9ef1b268', '2019', '040114127', '姚心怡', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7fb2a62168d54826af739fcd37367bae', '2019', '040114117', '王锦艺', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('7ff2a4b945334f0c8d0c40663778e0a9', '2019', '040114134', '赵雨婷', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('80d44a27e7b842e68845b07e51d4eeac', '2019', '040114119', '杨顺', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('810a48c0374947dab27dd9a2900112ab', '2019', '040114131', '毛佳瑜', '期末', '12', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('814129155a7a40269370606841ef9032', '2019', '040114111', '易川江', '课程论文', '阅读', '100.00', '75.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('816f713e50a345288f49eb3b9730ec4b', '2019', '030314314', '胡莹月', '期末', '8', '6.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('81c60b76ffb74c099b53e6de9c98a1c3', '2019', '040114115', '凌华', '期末', '1', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('81e357c7d5854faea5fe6d14353b21f4', '2019', '040114115', '凌华', '期末', '13', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('81f959af6ed94e4295513c9076b3d4dc', '2019', '040111101', '陈鑫', '期末', '11', '10.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('821693eeb85149e7bb67c99971830f3b', '2019', '040114114', '顾康能', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8248303bfb874284b0031e1b3ee848cb', '2019', '041414239', '戴心雨', '期末', '8', '6.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('825d77d5331a4d92a82ccf6085131a8d', '2019', '040614138', '吴顺婷', '平时', '平时成绩', '100.00', '92.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8269db685d3d42e5b0491f622e3b60c5', '2019', '040114105', '宋金钱', '期末', '15', '10.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8281167531b84b47aa03c7f2fdc8ec29', '2019', '030314314', '胡莹月', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('82af2c87cfb2459486d5bb47fc010205', '2019', '040114130', '徐艺璇', '期末', '5', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('832b3ca3c1b34ccfaa3d862af1153dc0', '2019', '040114116', '马嘉禾', '平时', '平时成绩', '100.00', '80.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('832f7ee94a9d4fc4861a5ef7c37506f5', '2019', '040114124', '万红利', '课程论文', '阅读', '100.00', '85.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('835c4fb6514243bc80b0b70967c9ccc4', '2019', '040114139', '徐思佳', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('83a0c45b5817456c97995a97b5a664a8', '2019', '040114124', '万红利', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('83bbf2dd52c042fc8abd67a3d818696e', '2019', '040114140', '程怡婷', '期末', '11', '10.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('843d7318b40d459eb7abe265ff538e67', '2019', '040114116', '马嘉禾', '期末', '15', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('845043501a0d40f5a2aaa642eb6b2b7c', '2019', '040114129', '景莉洁', '期末', '15', '10.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8493a5bc3033453ea1dac1e013f2b6ef', '2019', '040114137', '何铭', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8498d4a2ab024a27ba067d205c583356', '2019', '040114142', '孙雨亭', '平时', '平时成绩', '100.00', '86.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('850d9ce20d6a442aa6ff0918e7a6ce1a', '2019', '040114117', '王锦艺', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('85227b94f3a64f2aa17ce090ac45ac7a', '2019', '040114120', '陈强', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('85673cd5ac48418c8b278c4e92224d49', '2019', '040114108', '姚籽呈', '课程论文', '课程论文2', '100.00', '77.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('858b115392a949bd8ce619c7054a7bf6', '2019', '040114138', '陶颖红', '期末', '13', '9.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8594941b71ac4eeeb1f3fe47c63c3935', '2019', '040114118', '王宇超', '期末', '11', '10.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('85e1cbd5317840d88ec027c96ce866f3', '2019', '040114137', '何铭', '课程论文', '阅读', '100.00', '75.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('86095d55e9f84822b4c29675216672b2', '2019', '040114147', '徐蓓佳', '期末', '14', '9.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('866dbedf1efa49a0a8c907e40c13235d', '2019', '040114129', '景莉洁', '期末', '8', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('86a107743ec54969b7cb1dc7bc0850eb', '2019', '040114140', '程怡婷', '期末', '13', '9.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('86a8f07b46fc406486e6e85e46c6647e', '2019', '040114119', '杨顺', '期末', '12', '10.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('870151822c8640feb14da4f35c66a825', '2019', '040114148', '赵予晴', '课程论文', '课程论文1', '100.00', '85.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('870b6e61c9e341be8ff1225975beb7f6', '2019', '040114112', '曾乾坤', '期末', '13', '9.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8720918814e64900b31eeb96bab9a644', '2019', '040114132', '沈宽', '课程论文', '课程论文1', '100.00', '80.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8746d9a3294149b9879504c63766e55d', '2019', '040114134', '赵雨婷', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8749e3a95df047dcbb5d1803dc50176f', '2019', '040114135', '沈佳敏', '期末', '7', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('87570797ef894720b37c4d7f3db3cab8', '2019', '040114128', '张玲燕', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8778c8ef7ef14eb2ab0fbbbf6617c88f', '2019', '040114133', '谈潇玥', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('87dbf7cfddd64e2c8c19d38715b833ce', '2019', '040114146', '陶欢', '平时', '平时成绩', '100.00', '78.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('87ef870bdd3945ba95b0c084a28dde37', '2019', '050114133', '张琦', '期末', '12', '10.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('88c7133bc97d457e97f48672cb8926b3', '2019', '040114137', '何铭', '期末', '13', '9.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('89433547f8584a37854312c3d501f424', '2019', '040114140', '程怡婷', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8a4de1592f9448d5903914fc63ee9a11', '2019', '040114147', '徐蓓佳', '期末', '9', '8.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8a4e2d0fd9094d4089bfde9fce409040', '2019', '040114105', '宋金钱', '期末', '1', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8a4f7c51a90c4ac695d0b2831352622d', '2019', '', '', '平时', '平时成绩', '100.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8a8041862d36470fb7305728b2de8eb6', '2019', '040114132', '沈宽', '课程论文', '阅读', '100.00', '95.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8aaba422518b4523b528317af5309ae7', '2019', '040114103', '夏汪洋', '期末', '13', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8b41f4f30d2341a4bc8a1035ac5a601f', '2019', '040111101', '陈鑫', '期末', '9', '8.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8b51d4d4b9b34717932e8d061a4ce420', '2019', '040114144', '张雅蕾', '期末', '15', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8b5c0d010b014dbf864a1707fa4b8ed0', '2019', '040114127', '姚心怡', '期末', '10', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8b81607795894bb38e05b85b5408673f', '2019', '040114112', '曾乾坤', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8c6eaa5c726c4c98ae51aac4dc86924e', '2019', '040114105', '宋金钱', '期末', '4', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8ccfb026f4da4b55a72cfaa5bf02689d', '2019', '040114139', '徐思佳', '课程论文', '课程论文2', '100.00', '86.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8cf56d6512a449fd8512ff0406d9532a', '2019', '040114138', '陶颖红', '期末', '10', '8.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8d8db01f1b27402e83b2bd7c8a9f0bbd', '2019', '040114141', '徐静', '期末', '11', '10.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8d9a68a63c4444f89abf733415830f6c', '2019', '040114135', '沈佳敏', '平时', '平时成绩', '100.00', '83.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8e40b213c9b9455e944efc7bec88a014', '2019', '040114129', '景莉洁', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8e81feebc1ef42bca1d32002f5d1d021', '2019', '040114108', '姚籽呈', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8eb472c63e214a9e9a54de8b3a13c697', '2019', '040214211', '马也骋', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8ec22c7221dd443ba6931e67b62e4ae2', '2019', '040114135', '沈佳敏', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8f4ce49be8564734844a8151b51db09d', '2019', '040114143', '王晓蕾', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8f944848d8314bdba4b8dea834079601', '2019', '040114115', '凌华', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8fca4132e6b4444b86e8fa5d342760b6', '2019', '040114114', '顾康能', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('8fd0ebca9731414b95f73f4ceecdde46', '2019', '040114107', '李志远', '期末', '10', '8.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('901203960431498da193d7344b3fc30f', '2019', '040114122', '魏薇', '期末', '8', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('90130deb355f4729af7111d76542dc54', '2019', '040114143', '王晓蕾', '期末', '15', '10.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9081ac6be7f844bb8ca699187be5f44d', '2019', '040114111', '易川江', '期末', '12', '10.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('90982449dab443308fb416c3b4784cd3', '2019', '040114115', '凌华', '课程论文', '课程论文2', '100.00', '75.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('90ac56dc5fac4df7a53b5b8b5f332dd8', '2019', '040614138', '吴顺婷', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('90c1f043b005458a925aeb1e402d27cc', '2019', '040114108', '姚籽呈', '期末', '1', '4.00', '3.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('910e3c6a9cb442ae9e60caa9a93b14af', '2019', '040114127', '姚心怡', '期末', '1', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('91f6fb40c7a14d5cb5e7c98d5528604f', '2019', '040114131', '毛佳瑜', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9236a80234374bb5950d1e2ed209333b', '2019', '040114141', '徐静', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('925af2d1924d49b292f882cd9896611f', '2019', '040114132', '沈宽', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('92b1e5a487be4acfba8f9239295ecddd', '2019', '040114137', '何铭', '平时', '平时成绩', '100.00', '96.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('92cfc91196524d909c10511d41fc8c14', '2019', '040114148', '赵予晴', '期末', '11', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('92fde88ddf1a49869ebf80cd8f03eec7', '2019', '040114105', '宋金钱', '期末', '13', '9.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('938bb84aa99e409a81f9f39ef728f508', '2019', '040114141', '徐静', '期末', '1', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('93f51a53e8484c189502cd4c93296334', '2019', '040114127', '姚心怡', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('940ecad3127149879ac565d4086bde95', '2019', '040114145', '林琦', '期末', '8', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('953a7c7edb1c41248133b90bb0db8092', '2019', '040114108', '姚籽呈', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('957dd1e717ee475db1ca97dcd1644947', '2019', '040114116', '马嘉禾', '课程论文', '课程论文2', '100.00', '79.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('95b9d1d3a57d4e2788bcb887351d1ad8', '2019', '040114146', '陶欢', '期末', '1', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9635e8f4e0264b82af438292dfba7d52', '2019', '040114127', '姚心怡', '期末', '11', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('963f56d5645b418ba3bd384307cfd686', '2019', '040214211', '马也骋', '期末', '10', '8.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('96535fdffabe4cad8998131cbc488e02', '2019', '040114141', '徐静', '期末', '15', '10.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('96ab7fc749804cc1b4be5fee3ce0b49e', '2019', '040114114', '顾康能', '平时', '平时成绩', '100.00', '65.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('96f92b7b184b44ba8aba1fd62159139c', '2019', '040114144', '张雅蕾', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('97803776ce734d0a98e3377143ca3412', '2019', '040114142', '孙雨亭', '期末', '10', '8.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('97a463fdee2f4297b39158377a97a613', '2019', '040114128', '张玲燕', '课程论文', '课程论文2', '100.00', '94.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('97c9d504fdf145b59e595e7e90dae334', '2019', '040114126', '肖璐琰', '期末', '10', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('97e797636e2344aab38c7a81a8b0f3b2', '2019', '040114134', '赵雨婷', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9803b3f200004c1795e58f32b41341ad', '2019', '040114118', '王宇超', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9883712648494a4f80d2e9ed6f38451f', '2019', '040114131', '毛佳瑜', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9897eb7472c04364886ae5fcaec84ca7', '2019', '040114122', '魏薇', '期末', '11', '10.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('989a96e50e944f47ba90105e9dd074f5', '2019', '030314314', '胡莹月', '期末', '11', '10.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('99010f9e81404257b148c51aa7b9f8d0', '2019', '040114135', '沈佳敏', '期末', '5', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('99051244a1e44718990816d107bcc77b', '2019', '040114120', '陈强', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('995229ca33ec41918ad956a2d47ff3cf', '2019', '040114148', '赵予晴', '课程论文', '阅读', '100.00', '75.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9960b0e4270c461880bb827ef91ac654', '2019', '040114123', '古丹', '期末', '13', '9.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('997919ed11cd4058837a5f4b81751aaf', '2019', '040114103', '夏汪洋', '期末', '7', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9995c9c3413d4e2a95d2dbf4a388abca', '2019', '040114118', '王宇超', '期末', '10', '8.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9a1c54c40fa844458fc4dc331e41c65b', '2019', '040114140', '程怡婷', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9a2e487934394957ab71a861c38e130d', '2019', '040114143', '王晓蕾', '期末', '13', '9.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9b141ee26e214fa2b9739f1750f635fe', '2019', '040114108', '姚籽呈', '课程论文', '阅读', '100.00', '75.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9b16cbebfeb148cab0000f53e418ce05', '2019', '040114130', '徐艺璇', '课程论文', '课程论文2', '100.00', '76.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9bc62f183d5b4a3ea16cc2c322aa6f07', '2019', '040114132', '沈宽', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9c36584d80c0436f8188ca9422ccf704', '2019', '040114139', '徐思佳', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9c827161faa2481b87a07e7765c44cc9', '2019', '040114105', '宋金钱', '课程论文', '课程论文1', '100.00', '80.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9c95b4ae82764c1eb4c8763eb9893f9a', '2019', '040114115', '凌华', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9cc3122a84b34d2ca73b9218e3dfc0b7', '2019', '040114108', '姚籽呈', '期末', '12', '10.00', '3.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9cc5f5542aee454f80ad86e2c71c4ceb', '2019', '040114133', '谈潇玥', '平时', '平时成绩', '100.00', '63.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9ce7ebbe5ebb4e01b282977aa429c288', '2019', '040114129', '景莉洁', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9d12bcae355d408f8b6994a6aab73b81', '2019', '041414239', '戴心雨', '课程论文', '阅读', '100.00', '95.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9dbf5dcc2ac04c189ec257aaebbb8d29', '2019', '040214211', '马也骋', '期末', '7', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9e08cbc8eb4d47b892a147cfc82cba90', '2019', '040114137', '何铭', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9e5466a41c6942bc80058d85acbae888', '2019', '040114142', '孙雨亭', '课程论文', '课程论文2', '100.00', '94.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9e95d72d1edc4e5cadd112d419066b28', '2019', '040114132', '沈宽', '期末', '8', '6.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9e9e7ba6e8794e04a8c76f0aebc0d304', '2019', '040214211', '马也骋', '课程论文', '阅读', '100.00', '95.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9f4c982ead054b24bcff77c08137020b', '2019', '040614138', '吴顺婷', '期末', '15', '10.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9f9c1d51df73420591078c32c67e62e8', '2019', '040114135', '沈佳敏', '课程论文', '阅读', '100.00', '85.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9fb63de6c57d42f7b8d638e309d63b89', '2019', '040114131', '毛佳瑜', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('9fe2ba8068c247b5b2fcd5b61b4ab3f0', '2019', '040114143', '王晓蕾', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a0269ceea4f840c3b016148d60103da9', '2019', '040114107', '李志远', '期末', '8', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a077c4b9a33e42d4a43a78409928d677', '2019', '040114122', '魏薇', '期末', '10', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a07ab391e5da44b996006d43e8650977', '2019', '040114116', '马嘉禾', '课程论文', '课程论文1', '100.00', '70.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a08aa39cf40b4e92b541a397c2822ee8', '2019', '040114133', '谈潇玥', '期末', '11', '10.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a112f227af5f4b26ba234832de295eb1', '2019', '040114138', '陶颖红', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a1254cfbe1504b3ea215cdbecda2f395', '2019', '040114107', '李志远', '课程论文', '阅读', '100.00', '95.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a164d052faa94815989581ba51427ff9', '2019', '040114143', '王晓蕾', '平时', '平时成绩', '100.00', '85.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a17c082a55bb4615b5289e41175273c6', '2019', '040114119', '杨顺', '期末', '15', '10.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a187441c3d844d6986d69fce61b226a7', '2019', '040114103', '夏汪洋', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a18d552f6ad44875b816b620cad9cc8d', '2019', '040114138', '陶颖红', '期末', '11', '10.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a193ae6a6df041e8809325a17e1a633c', '2019', '040214211', '马也骋', '期末', '12', '10.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a1c296c3f7394b2d9db3f486420cbe2d', '2019', '040114103', '夏汪洋', '期末', '4', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a1e3546c47014ba09915570954da4463', '2019', '040114130', '徐艺璇', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a1ed5429cd094cda83339dd376f05630', '2019', '040114129', '景莉洁', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a1ff1db3d66648dab5e3f03d6aa0a9b0', '2019', '040114145', '林琦', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a21cc5623812410bb09e1e8467240240', '2019', '040114116', '马嘉禾', '期末', '11', '10.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a2331b199a3042b8ac4487d1d1bf576c', '2019', '040114128', '张玲燕', '课程论文', '课程论文1', '100.00', '80.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a2495fd9ad3b4815b21e994647a11af4', '2019', '040114128', '张玲燕', '平时', '平时成绩', '100.00', '92.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a25f0cdf55674c929ca30ac1d6101cda', '2019', '050114133', '张琦', '课程论文', '阅读', '100.00', '95.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a27712a78d8d4619a7688af48b743821', '2019', '040614138', '吴顺婷', '期末', '10', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a31c68c11338457480d147634a3fd74c', '2019', '040114128', '张玲燕', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a32955e4bfa14052892417c7dfb8b584', '2019', '040114120', '陈强', '期末', '10', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a34ef0ab8b304ff780e00a4b4260b4dc', '2019', '040114149', '曹静怡', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a376dbc2f81e42678ced52ba0c5bbebb', '2019', '040114123', '古丹', '期末', '11', '10.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a39f49ce311b4028b17556326b8801ba', '2019', '040114124', '万红利', '期末', '10', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a442df1e4e7e476db699a51ea0653490', '2019', '040114129', '景莉洁', '平时', '平时成绩', '100.00', '84.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a4ca4cdf147b48f0b9dcffd752754f28', '2019', '040614138', '吴顺婷', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a4d91289595a455abbe33ccbd9673763', '2019', '040114129', '景莉洁', '课程论文', '阅读', '100.00', '70.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a57a5f4be29640968676778e581292c7', '2019', '040114145', '林琦', '期末', '7', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a5cd4e14412c4075848b8d1d8e43300d', '2019', '040114116', '马嘉禾', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a5f6e879738d4c98858938953f727050', '2019', '040114126', '肖璐琰', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a705efe40db4465f82ce538035774346', '2019', '040114127', '姚心怡', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a759453df30c4e17aa36bd8cadbc0a40', '2019', '040114117', '王锦艺', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a7704bac2503475ebd7df75734613549', '2019', '040114124', '万红利', '期末', '13', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a77951e29d8f450d8be142b82e78162f', '2019', '040114150', '刘净楠', '期末', '15', '10.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a7cc5988b1b64932a4807ecad385c786', '2019', '040614138', '吴顺婷', '期末', '13', '9.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a7f4f11dcb5a4b88a54bd7eb1da5891a', '2019', '040114141', '徐静', '期末', '10', '8.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a8505cab45fb4175b31891e76d4ccc20', '2019', '040114130', '徐艺璇', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a8e32e9ea9b14eb7a474c2522c26f087', '2019', '040114126', '肖璐琰', '期末', '8', '6.00', '1.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a907ed0046ff4352ad5c5b4d7895a910', '2019', '040114133', '谈潇玥', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a912c373ad51483aa9ebeb2c77fe5b3a', '2019', '040114133', '谈潇玥', '期末', '13', '9.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('a9158d9bfe2d4a94a468e11e35d98b42', '2019', '040114135', '沈佳敏', '课程论文', '课程论文1', '100.00', '85.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('aa51f108e7d54adc8b033b811fbc7954', '2019', '040114131', '毛佳瑜', '期末', '1', '4.00', '3.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ab34a5ab5dea45db92e8b0f6661eea67', '2019', '040111101', '陈鑫', '期末', '7', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ab587445540c470eba4b0e13c0cdd457', '2019', '040114112', '曾乾坤', '期末', '10', '8.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ab81d2c9e30e4a70a30d6dc926b2a96d', '2019', '040114136', '沈云萍', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('abb4fc274f334fc5825d4974d89e3311', '2019', '040114139', '徐思佳', '期末', '15', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('abcee43853564048af73cfcd1edb81a9', '2019', '040114123', '古丹', '平时', '平时成绩', '100.00', '83.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ad1fb5bb9b874980ba384a7152b8a6e2', '2019', '040114116', '马嘉禾', '期末', '12', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ad78623aa27b4547bd2f01a5eab50c61', '2019', '040114126', '肖璐琰', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('add1ea164f3145cda89abfb2d9678127', '2019', '040114143', '王晓蕾', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ae1a35e6671b4f98b4843af986373912', '2019', '041414239', '戴心雨', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ae48014cb324433489f29d6e9beba48c', '2019', '040614138', '吴顺婷', '期末', '7', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ae7ceb996583421fa15443bda5c40e90', '2019', '040114139', '徐思佳', '平时', '平时成绩', '100.00', '94.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('af2dd546fc7f47e692dc5dd16b8353aa', '2019', '040114118', '王宇超', '期末', '2', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('af2e124345824b34b61a9d528fab72b3', '2019', '040114103', '夏汪洋', '期末', '10', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('af701e1635e4491e9a1df2a7b04d2363', '2019', '040114116', '马嘉禾', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('af851fbca537488b90d32c4803c8dae8', '2019', '041414239', '戴心雨', '平时', '平时成绩', '100.00', '64.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('afb1093f5b394056920ea380a3712730', '2019', '040114123', '古丹', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('afb8dec773254ac3a9b51722f103bc9d', '2019', '040114143', '王晓蕾', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b04195ae70e84cf687503ffb0b928f83', '2019', '040114149', '曹静怡', '课程论文', '课程论文1', '100.00', '75.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b04cb64aae77419daa07bafbe5ac7bfd', '2019', '040114130', '徐艺璇', '期末', '11', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b094b365432249349df30088595d68d9', '2019', '040114107', '李志远', '期末', '1', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b09f68df3afe47a4bbebb5eb5c449aa5', '2019', '040114116', '马嘉禾', '期末', '10', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b0a31d85c4c74532acd6713bcf7d6014', '2019', '040114135', '沈佳敏', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b0ca1ee0398c42269ca686ee9f6913e6', '2019', '040114146', '陶欢', '期末', '12', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b158ce53281744ab8da5e807bd12fd0a', '2019', '040114137', '何铭', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b177a07fb87441d4b24e886497c90c4b', '2019', '040114149', '曹静怡', '课程论文', '阅读', '100.00', '95.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b1a4959b45ce423cad1fff1537cc8e9a', '2019', '040114108', '姚籽呈', '期末', '15', '10.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b1a73d4ed7484cc381ad0fcc0dcade66', '2019', '040114150', '刘净楠', '期末', '13', '9.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b1b6f0fcbac24175977ac14d3ba82c5b', '2019', '040114133', '谈潇玥', '期末', '5', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b1cb9f4cc39547b596f943e7e8b94bcb', '2019', '040114130', '徐艺璇', '期末', '15', '10.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b1ce7f8eff79443785b6054a8222abf4', '2019', '040114140', '程怡婷', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b2affc69648141cfb2fae3f5b459c401', '2019', '040114118', '王宇超', '期末', '1', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b2bb1638c2f14322b86ec734e6ab9717', '2019', '040114114', '顾康能', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b2ccc9ae51d544b5baf946784f41763a', '2019', '040114143', '王晓蕾', '期末', '9', '8.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b2f89ca73d5549c9bc169f395b582761', '2019', '040114120', '陈强', '期末', '11', '10.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b3216a54d013469db7ac049e1793aa0f', '2019', '040114129', '景莉洁', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b33359b7ddad4e609343459b6ebf2f22', '2019', '040114136', '沈云萍', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b37bdd3042e14307b28a9698e0fabbac', '2019', '040114145', '林琦', '课程论文', '课程论文1', '100.00', '85.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b3967e74c46e4602a07247d6b14d5fd3', '2019', '040114118', '王宇超', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b3e740b72e2f43439eaf598ae0d58f5e', '2019', '040114128', '张玲燕', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b42d053859394d30a277ba240846f380', '2019', '040114108', '姚籽呈', '课程论文', '课程论文1', '100.00', '78.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b43bbda9937e490e97bcd5893fcc2ed2', '2019', '040114144', '张雅蕾', '平时', '平时成绩', '100.00', '73.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b49d49fee2bc4c868b89b0e485860226', '2019', '040114115', '凌华', '课程论文', '课程论文1', '100.00', '80.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b49db443269d466fbe9f0703ced69178', '2019', '040114136', '沈云萍', '期末', '11', '10.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b55d00f609384e58a333c564be09dbc4', '2019', '040114137', '何铭', '期末', '8', '6.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b641af5a2b014aae9bccaf35cb74d8af', '2019', '040114136', '沈云萍', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b6518895fed34ec5b362af80e47f40fd', '2019', '040114138', '陶颖红', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b66c7eacc37244088fde9294e810205a', '2019', '040114116', '马嘉禾', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b66efcb61f0542879fdb3d12fad91fdb', '2019', '040114124', '万红利', '课程论文', '课程论文2', '100.00', '94.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b6a70c84de9a4430810ce1b297d7733b', '2019', '040114144', '张雅蕾', '期末', '10', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b74c0363d9e6480aa1f8e7f4e6fb5bdb', '2019', '040114144', '张雅蕾', '课程论文', '课程论文2', '100.00', '81.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b7877726db35420f8f58d5d9f177b6ba', '2019', '040114108', '姚籽呈', '期末', '13', '9.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b7a6893547ad48dd9137a5a67d50dd20', '2019', '040114134', '赵雨婷', '期末', '12', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b8ca86da31ab4bb2951ec915020e24ef', '2019', '040114127', '姚心怡', '期末', '12', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b8f922d3d29b4fa1a81f0b001ad466cc', '2019', '040114110', '杜志沅', '课程论文', '课程论文2', '100.00', '73.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b9458c5c958e472cb9a1166b17f3f947', '2019', '040114115', '凌华', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b95947b159f74f5f8ebd2aceed83678b', '2019', '040114140', '程怡婷', '课程论文', '课程论文1', '100.00', '70.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b96d9a03d13c41ac91f5be720339465d', '2019', '040111101', '陈鑫', '课程论文', '阅读', '100.00', '85.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b98dd347d1cc46c7a674ac3bd74f7a41', '2019', '040114124', '万红利', '期末', '8', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b9b48a97919f437393de9fab9399537f', '2019', '040214211', '马也骋', '平时', '平时成绩', '100.00', '74.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b9c5d04fdd254cc8b44704478b2612a2', '2019', '040114103', '夏汪洋', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('b9f670d1d20a4c49822457ce3c597f18', '2019', '040114108', '姚籽呈', '平时', '平时成绩', '100.00', '67.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ba2e3c05be8a41af8c73e2fb16e30983', '2019', '040114116', '马嘉禾', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ba429bb0b19f4c509dbf23f2e7c073ac', '2019', '040114133', '谈潇玥', '课程论文', '课程论文2', '100.00', '74.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('babb21de731544e88359ab0f2e43ac85', '2019', '040114145', '林琦', '平时', '平时成绩', '100.00', '94.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('bb4d2409b2cd46739e73a4dc4e23b43a', '2019', '040114146', '陶欢', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('bd02f0d221b14377825521e7d0b35b10', '2019', '040114140', '程怡婷', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('bd07656ea1cb413ab0feda2954dd1bea', '2019', '040114111', '易川江', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('bd0a7ee31213483599e149e7f67be700', '2019', '040114108', '姚籽呈', '期末', '8', '6.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('bd678dad5e4d497fad6481a6f56db55f', '2019', '040114105', '宋金钱', '课程论文', '阅读', '100.00', '70.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('be0af465d6c1465c9bb9272debca3633', '2019', '040114105', '宋金钱', '期末', '9', '8.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('be1356ad578d41d99e74b30e5545da73', '2019', '040114131', '毛佳瑜', '课程论文', '课程论文2', '100.00', '85.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('bedcae2aadd64a8bbe8b631cc706d787', '2019', '040614138', '吴顺婷', '期末', '12', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('bf0d1195f8d44a53adb575609510aeaa', '2019', '040111101', '陈鑫', '期末', '4', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('bf1eed97c90847829024b0e21cd44b68', '2019', '040114124', '万红利', '期末', '12', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('bfe0c1b37c424528b513fafb48c4d544', '2019', '040114139', '徐思佳', '期末', '8', '6.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c02c6404853746f793ce955b6840f4d1', '2019', '040111101', '陈鑫', '平时', '平时成绩', '100.00', '55.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c0a14cc6478443058128aa812600a7bd', '2019', '040114126', '肖璐琰', '期末', '5', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c0ca95517de84402a0cc63638939c7e2', '2019', '040111101', '陈鑫', '课程论文', '课程论文1', '100.00', '85.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c1891bdd684d4571bb4f9a93ed06cbc3', '2019', '040114150', '刘净楠', '期末', '5', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c221d37cbaf64534b27115116e4dd734', '2019', '040114122', '魏薇', '期末', '13', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c22a023aef644547a4b6d4fb6ca52828', '2019', '040114116', '马嘉禾', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c250331742494ad38c83331e5f5ffc70', '2019', '040114137', '何铭', '期末', '10', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c270fc033c2240fe9a9be9e47e3139d4', '2019', '040114131', '毛佳瑜', '期末', '11', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c289fa37244246d1933732826aea2ca2', '2019', '040114118', '王宇超', '课程论文', '课程论文1', '100.00', '85.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c2b21b860f824d3c9434ba965a961685', '2019', '040114131', '毛佳瑜', '期末', '13', '9.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c32075e7b5454b269f7a2e5dbdfd2ece', '2019', '040114115', '凌华', '期末', '10', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c3364bf0aec3463eaaa3f011a0ac3d27', '2019', '040114130', '徐艺璇', '课程论文', '阅读', '100.00', '75.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c3d26b04db7e4ad3851351471dd3d11e', '2019', '040114120', '陈强', '期末', '15', '10.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c3f9f47fe4504ca08c366782cf6e2190', '2019', '050114133', '张琦', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c420c2ff807c43319bca8b4a111f987a', '2019', '041414239', '戴心雨', '期末', '9', '8.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c42bd234648941889169aeab3c253e05', '2019', '040114136', '沈云萍', '期末', '13', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c4825b2a60c64e5f872309153b5adedd', '2019', '040114132', '沈宽', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c4d3839e88504804acf52fba7adacf50', '2019', '040114150', '刘净楠', '期末', '12', '10.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c4ebfe68755248dbb5e015540049357e', '2019', '040114112', '曾乾坤', '期末', '1', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c56c96e566c94b0385fb514bd4d9dc58', '2019', '040114146', '陶欢', '课程论文', '课程论文1', '100.00', '80.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c578784d5b914dcebf301019df2d5259', '2019', '040114119', '杨顺', '课程论文', '阅读', '100.00', '85.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c5847fa5c6334da1a6e3f4f15d8fb54b', '2019', '040114114', '顾康能', '期末', '15', '10.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c5fd2c2a15ab4969a771d65962dd6bb8', '2019', '040114147', '徐蓓佳', '课程论文', '阅读', '100.00', '95.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c60b135058e0413f91624f4572321f75', '2019', '040114114', '顾康能', '期末', '11', '10.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c60bf694704f47a7b3ede884dccf1e32', '2019', '040114142', '孙雨亭', '期末', '15', '10.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c68dea2c5000449e87a20496af477e02', '2019', '040114112', '曾乾坤', '课程论文', '阅读', '100.00', '95.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c6cb5b6710974682ad57ec297a254291', '2019', '040114141', '徐静', '课程论文', '课程论文1', '100.00', '83.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c724aeb547594ee6b3f2f5134983c594', '2019', '040114135', '沈佳敏', '期末', '15', '10.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c748b77da4454ef8979b2b6904cb8b14', '2019', '040114122', '魏薇', '课程论文', '课程论文2', '100.00', '76.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c84ab8cbea3b4f0ab84f904dff6a2911', '2019', '040114144', '张雅蕾', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c856c4b38318417e816b6e047b3fa563', '2019', '040114144', '张雅蕾', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c86c5c24c63242e1996e4b49cc8f539a', '2019', '040114140', '程怡婷', '期末', '8', '6.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c915c3f50d27464cb345dae657b3e12a', '2019', '040114115', '凌华', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c94ab4bd04e84abb80a23120a202bc75', '2019', '040114147', '徐蓓佳', '期末', '13', '9.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c9520445eb534c19a4ecd51e69bc9e03', '2019', '040114112', '曾乾坤', '课程论文', '课程论文1', '100.00', '90.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c98886e6f28d4d5e9d6631734a747543', '2019', '041414239', '戴心雨', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c994776c95244a07bcde3f402b14a6f4', '2019', '040114133', '谈潇玥', '期末', '15', '10.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c9dced0113b34bb9bdfb8f3657529c41', '2019', '040214211', '马也骋', '期末', '11', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('c9e6ed73a068438a9ae94f9a3ab8b89a', '2019', '030314314', '胡莹月', '期末', '4', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ca2400397e4341dfaee4b1df6d885763', '2019', '040114137', '何铭', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('cb38d8d0b8f24a9faad9b63c543be722', '2019', '040114141', '徐静', '期末', '7', '6.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('cb4a0217ddbb4b398fc7240f4017ee5b', '2019', '040114143', '王晓蕾', '期末', '1', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('cb8ad4aae9834bd2a0b49836ebb4752a', '2019', '040114123', '古丹', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('cc100541aa7b4bacbed93b806f2e1ce6', '2019', '040114133', '谈潇玥', '期末', '8', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('cc1f45a1b47e47beb57dc6aad2370f7d', '2019', '040114112', '曾乾坤', '期末', '14', '9.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('cce253d718cf424995250868ec79c038', '2019', '040114111', '易川江', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('cd249cb835ef4907b8943d71fd12acf8', '2019', '040114124', '万红利', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('cd373b99214a404e8bac62924d15fb3f', '2019', '040114122', '魏薇', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('cd617b0c77334d51a8417e971085fec4', '2019', '040114112', '曾乾坤', '期末', '5', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('cd935a8d76c3476fbdf5ccd2fb3e88e3', '2019', '040114149', '曹静怡', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('cdf653e51719468ba2313e1d8a8f8044', '2019', '040114112', '曾乾坤', '平时', '平时成绩', '100.00', '55.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ce452246d7a4489999bffd271f525d4e', '2019', '040114111', '易川江', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('cef12bda8f544ff1bcd937f20b0e3d6f', '2019', '040114137', '何铭', '课程论文', '课程论文1', '100.00', '85.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('cfda3fdf4e9a46ef8305683893f35dc9', '2019', '040114111', '易川江', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d0f9827286fe41b5b40f69f10ee3b2c8', '2019', '040114130', '徐艺璇', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d10e335501b745e2aba5d80f78ed7880', '2019', '040114108', '姚籽呈', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d15575154b7b4656afd9605d1fdd4a4d', '2019', '040114136', '沈云萍', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d1773d2e389747959444667607954232', '2019', '040114141', '徐静', '期末', '8', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d1ce877b25ab49a194f8ec1377158c5a', '2019', '040114126', '肖璐琰', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d20200fa83b445d3aab1da63b0a35f01', '2019', '040114123', '古丹', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d236f5f58dc0424ea992bb94958ee4a5', '2019', '040114117', '王锦艺', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d251718f55674d488ea3c439fa1545aa', '2019', '050114133', '张琦', '课程论文', '课程论文2', '100.00', '87.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d2544f70232846e794aeb1956b66c2f1', '2019', '040114130', '徐艺璇', '期末', '13', '9.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d2545c65297e42239ae200ac5c4545ce', '2019', '040114126', '肖璐琰', '期末', '11', '10.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d27b3759275348539b75339afb466d60', '2019', '040114128', '张玲燕', '期末', '12', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d28577a4b0174777a7d35837f4e6231a', '2019', '040114110', '杜志沅', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d2c2e3399ec04a6894d11cfb60426edc', '2019', '040111101', '陈鑫', '期末', '13', '9.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d2f5ae3fef5f42209f7e62cc554199df', '2019', '040114127', '姚心怡', '课程论文', '课程论文2', '100.00', '85.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d33038d91e4b4f7b8df9272139298e3a', '2019', '040114114', '顾康能', '课程论文', '阅读', '100.00', '80.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d3b759cea5da4cbe8eff7351015f8167', '2019', '040114103', '夏汪洋', '课程论文', '课程论文1', '100.00', '70.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d3e19bcdf72c4cefb7dce6b15e9af998', '2019', '040114115', '凌华', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d478c0057d2649a8b27abd163ea4e440', '2019', '040114139', '徐思佳', '期末', '12', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d495e988df244befb6e32e36365659e9', '2019', '040114138', '陶颖红', '期末', '15', '10.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d49e4f065a344ff2baa8a951e452f007', '2019', '040614138', '吴顺婷', '期末', '11', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d4d02cc72c904a74a463fa938c7cc63c', '2019', '041414239', '戴心雨', '课程论文', '课程论文1', '100.00', '80.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d53cfdc9192a4577874dd8d923956d7f', '2019', '040114140', '程怡婷', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d5bbb631a79e4e6ebf154d13f2f88d11', '2019', '040114110', '杜志沅', '期末', '14', '9.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d6036144bb364fbe8adfd127f82c3042', '2019', '040114116', '马嘉禾', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d676aaaa423947d5b181bad2b11f2d9e', '2019', '040114142', '孙雨亭', '期末', '5', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d693e044bbed4cb3b23911f6f005fee3', '2019', '040114136', '沈云萍', '课程论文', '课程论文2', '100.00', '94.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d6d3cb30a190493e9758423b66da9e9c', '2019', '040114131', '毛佳瑜', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d7016e1918e342039907034559fef0cd', '2019', '040114149', '曹静怡', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d73304eefe3a41b2b461266a0767c77b', '2019', '040114133', '谈潇玥', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d7547940985748af94b7bb7993471171', '2019', '040114110', '杜志沅', '平时', '平时成绩', '100.00', '57.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d79e48df48894014a9aaf995de335e98', '2019', '040114123', '古丹', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d7ef0f250eca4d6ba8dab78bb5d36c4d', '2019', '040114117', '王锦艺', '课程论文', '阅读', '100.00', '95.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d817782859ea497dbd6c0932854ba9fd', '2019', '040114131', '毛佳瑜', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d8c2028d7bdd451c9022c28fda3909b1', '2019', '041414239', '戴心雨', '期末', '7', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d8c32425be6d40c5b24ef2ea94af7ba6', '2019', '040114141', '徐静', '平时', '平时成绩', '100.00', '86.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d99b484c5c1f4a78ac2ed6f4aeae000f', '2019', '040114127', '姚心怡', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d9a138cea4f94896bde631e525f7754d', '2019', '040114126', '肖璐琰', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d9d3aa94da20490f93f3ddcd194f359d', '2019', '050114133', '张琦', '期末', '3', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('d9f99a3aa9e64f1bb2bbb0782fa2a027', '2019', '040114145', '林琦', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('da0d25eb53e04e6ca475958771a7d288', '2019', '040114116', '马嘉禾', '期末', '14', '9.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('da66281ce70341c4a893198cc3c9032a', '2019', '040114131', '毛佳瑜', '课程论文', '阅读', '100.00', '75.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('daa76fff43bc447aa5b06f78d60168b9', '2019', '040214211', '马也骋', '期末', '1', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('daab66238e604cc4af5c048df92242c0', '2019', '040114129', '景莉洁', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('dac4b81546ee4bffb52a5aa3ea678e1f', '2019', '040114141', '徐静', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('dac5c2a66a6d40dabf11716d1f290846', '2019', '040114107', '李志远', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('db16e5a102b84130aa227df6f76ae50a', '2019', '040114127', '姚心怡', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('db1de4fd4b2e49cb9f2ce07dcaee50a0', '2019', '040114148', '赵予晴', '平时', '平时成绩', '100.00', '77.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('db88494ccf9646d286a1e0743311a565', '2019', '040114122', '魏薇', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('db8d161057b44ba8833fa13c732a8d1d', '2019', '040114105', '宋金钱', '期末', '5', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('db9d0f3033c443eb9a4eb464c22a6ebd', '2019', '040114123', '古丹', '期末', '15', '10.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('dba2109339904edb98193b9895478902', '2019', '040114148', '赵予晴', '期末', '8', '6.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('dbc2345952bb4d4ebf9fba06d191b72b', '2019', '040114119', '杨顺', '课程论文', '课程论文2', '100.00', '87.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('dbd0fc3eae5d40b7aa956d2930191b84', '2019', '040114131', '毛佳瑜', '期末', '8', '6.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('dbd4a5c4f1ae46e39753a09848151485', '2019', '040114117', '王锦艺', '期末', '12', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('dbd79d0fd9724bc582d1791cf824719c', '2019', '040114140', '程怡婷', '期末', '14', '9.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('dbecfa69cd324ca7ac6d566706f74df7', '2019', '040114127', '姚心怡', '期末', '15', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('dc548c4324a14a10ae576ad8a3ad1266', '2019', '040114141', '徐静', '期末', '13', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('dc7a1551c0ea4be99f3afc030b271a5a', '2019', '040114146', '陶欢', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('dcbff1c341f14c5586f011e50b7cda96', '2019', '040114111', '易川江', '期末', '8', '6.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('dd9ae8500ff941f28364e47a1e3ac2f3', '2019', '040114143', '王晓蕾', '期末', '10', '8.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ddcf87678d4640579af015b45f06d92d', '2019', '040114145', '林琦', '课程论文', '阅读', '100.00', '95.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ddfb3e3049e64d11b2df6f74ae4c9bb5', '2019', '040111101', '陈鑫', '课程论文', '课程论文2', '100.00', '72.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('de45e2fd5e6b43e784915946b66f0468', '2019', '040114140', '程怡婷', '课程论文', '阅读', '100.00', '75.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('de7cba7d791646fb9febdc4fd785a26e', '2019', '040214211', '马也骋', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('deecaee0aa3e429ab955e62e3efec431', '2019', '040114129', '景莉洁', '期末', '14', '9.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('df4d2c977b514fa2a5efc8860721d844', '2019', '040114143', '王晓蕾', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e0a5159266ec49299471cfae6e5fbd48', '2019', '041414239', '戴心雨', '期末', '15', '10.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e16e4a91a4c545748a0ef4f21b3c9bb0', '2019', '040114120', '陈强', '课程论文', '课程论文2', '100.00', '87.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e17f93dc2c124e55b7fff80bc4288db8', '2019', '040114134', '赵雨婷', '课程论文', '课程论文2', '100.00', '76.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e1a85d8ae86241909eff61463ad87a63', '2019', '040114150', '刘净楠', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e28f358338604c6bb8f845de44dc035d', '2019', '040114138', '陶颖红', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e29a06d9b0a54d29afc8dc04c4a1fe62', '2019', '040114148', '赵予晴', '期末', '4', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e2b266eb85f54ab085a1b29ca16d5add', '2019', '040114130', '徐艺璇', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e2b3b0363c974d9e97e1226720439f39', '2019', '040114138', '陶颖红', '期末', '12', '10.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e2e6de8db8cd41088f146301a1d55877', '2019', '040114110', '杜志沅', '期末', '10', '8.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e3c32ddc30d445a193425caf3e16a0fe', '2019', '040114146', '陶欢', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e44c2f99b8af4929b02698f19388858e', '2019', '040114115', '凌华', '期末', '14', '9.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e4947b66bfef4d19963e1ffb6ec1550f', '2019', '040114132', '沈宽', '期末', '5', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e4d0e4f0c169407e8f4a99bf4ba0788b', '2019', '040114148', '赵予晴', '期末', '10', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e518f9c2eae74eb389571d614977cdb8', '2019', '040114110', '杜志沅', '期末', '1', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e580b6361eb649519a8578bd859542bb', '2019', '050114133', '张琦', '期末', '11', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e5b2b0154f2b405998f8257504278218', '2019', '040114145', '林琦', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e6a704e2eda647aa8e1ddd27bf2525d0', '2019', '040114103', '夏汪洋', '课程论文', '课程论文2', '100.00', '75.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e71674419f47420ab86c842503a9422e', '2019', '040114127', '姚心怡', '期末', '13', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e7b74a32ede84c1a943c15a52104b4b9', '2019', '040114140', '程怡婷', '期末', '15', '10.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e7ce9d6b54eb460a95f6c17524441118', '2019', '040111101', '陈鑫', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e7f5e37ff053491f9f5f99372570785c', '2019', '040114119', '杨顺', '期末', '8', '6.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e8551324dec14aa6901976c69f6ee96e', '2019', '040114149', '曹静怡', '期末', '10', '8.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e8627c4b1458490b878459839ac845af', '2019', '040114110', '杜志沅', '课程论文', '阅读', '100.00', '80.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e874ffd6d94444dd8cb15815aee88b0f', '2019', '040114112', '曾乾坤', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e8a05771b28647fd9649136b69e1d989', '2019', '040114116', '马嘉禾', '期末', '1', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e8aba5f01a404b1ba7879d705087d8b1', '2019', '050114133', '张琦', '期末', '13', '9.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e8af66bf0fb8439aafc745045ff25d28', '2019', '040114127', '姚心怡', '课程论文', '阅读', '100.00', '75.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e8c4c030bf9742d384589289a408631c', '2019', '040114144', '张雅蕾', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e8df2a603faf4563ae19b4df64e16c40', '2019', '040114123', '古丹', '课程论文', '课程论文1', '100.00', '83.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e93f650902a54269adb16c8146b16452', '2019', '040114107', '李志远', '期末', '5', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e9a08d22bfe54bcabd0de0183b16afaf', '2019', '040114141', '徐静', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e9a76f9b54d243ffbd0cb05aefa2ade7', '2019', '040614138', '吴顺婷', '课程论文', '阅读', '100.00', '75.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('e9eba3f1252c4fea972dc52f0ad2b454', '2019', '040114129', '景莉洁', '期末', '10', '8.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ea1d73c6a2a148c79905b1c81efefbf5', '2019', '040114122', '魏薇', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('eb436066547f4fdd8d23a1ee02c8e6a1', '2019', '040114120', '陈强', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('eba66aa08a2c44e88217ecd4e4ef2d35', '2019', '040114130', '徐艺璇', '期末', '12', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ebe2eb3fb3d645d48d2d401922e0abfc', '2019', '040114123', '古丹', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ebefea5987944ac8a8aaf340ee581a1b', '2019', '040114122', '魏薇', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ec460ba4f9ad42aaa1acc8dbe4a9f8c3', '2019', '040114147', '徐蓓佳', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ec5825abd5194c8e9357c8a64b7be48a', '2019', '040114110', '杜志沅', '期末', '12', '10.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ec81e6583158428fb7fbf370a4e74ed8', '2019', '040114148', '赵予晴', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ecc9bbe8fba1471cb5da4f8ad0fa7b33', '2019', '040111101', '陈鑫', '期末', '10', '8.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ecd5ff6bf4b24d4cb78d394410cb3f25', '2019', '030314314', '胡莹月', '期末', '1', '4.00', '3.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ecd76bd629324cc5ac116a52362b1a3c', '2019', '040114107', '李志远', '课程论文', '课程论文2', '100.00', '75.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ed5880def11e411bb8b7c85bf6f6e8a0', '2019', '040114126', '肖璐琰', '课程论文', '课程论文2', '100.00', '85.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ed90337cdf094e84884ac420eb53f306', '2019', '040114115', '凌华', '期末', '8', '6.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('eda796bd9bc94e0f990d64273affaa06', '2019', '040114128', '张玲燕', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('edb7cf75b0f54ba9a4974ecc264f33e3', '2019', '040114118', '王宇超', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('eddfce3f9bc9479288c170b965afcfc0', '2019', '040114149', '曹静怡', '期末', '8', '6.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('edee26d1d9bf46868e7cf602014e28f3', '2019', '040114117', '王锦艺', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ee8dc25f15554f4ea26aeb5ff7f9ef4d', '2019', '040114137', '何铭', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('eed6f7c354f5472aba332674bcf32851', '2019', '040114145', '林琦', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('eefe9de9827d4848aebb2eb03caaf66c', '2019', '040114118', '王宇超', '课程论文', '阅读', '100.00', '85.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ef85a716b3fc4da3b428c58f0dd95566', '2019', '040114132', '沈宽', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f0a3404f168a400c9e3ccb2eec339460', '2019', '040114149', '曹静怡', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f0c30d0fd32b433d9665af4269b67acd', '2019', '040114146', '陶欢', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f13bc0bd82b448c58ad3d3f2356f9fc5', '2019', '040114149', '曹静怡', '期末', '12', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f184c7c9d2b946b68c3c20fb94d4b625', '2019', '041414239', '戴心雨', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f18e3635b15547efaff868443f6e07b0', '2019', '040114142', '孙雨亭', '期末', '13', '9.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f25748bf90aa400cb0046b27881d239f', '2019', '040114143', '王晓蕾', '期末', '7', '6.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f34ddcd7798a4d2499a5e99b9d3e63bf', '2019', '040114147', '徐蓓佳', '课程论文', '课程论文1', '100.00', '85.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f381053aa82c4eed835606dbbac1e3cd', '2019', '040114138', '陶颖红', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f39449862457445c9ea628119e529649', '2019', '040114122', '魏薇', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f3db93333bcc4d0ea34210814993aab3', '2019', '040114145', '林琦', '期末', '12', '10.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f3eb86ab532749e8b2e803c439d2e028', '2019', '040114105', '宋金钱', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f464b4b38e63493a9e1b4ce08fb5a59e', '2019', '050114133', '张琦', '期末', '5', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f508926903354c3eaad9284e109c000d', '2019', '040114119', '杨顺', '期末', '11', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f55d1263c05648d0931ec80f2ec85372', '2019', '050114133', '张琦', '课程论文', '课程论文1', '100.00', '90.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f5f696b386934ab795fdd9bb9de43f7c', '2019', '040114123', '古丹', '期末', '8', '6.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f609736b0dab4aef9f58d5f84bc38d6c', '2019', '040114138', '陶颖红', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f638d15cb5974979b12090ed80e4ea9b', '2019', '040114143', '王晓蕾', '课程论文', '课程论文1', '100.00', '75.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f6a360ceeba54da193e11a7a08584f42', '2019', '040114114', '顾康能', '期末', '5', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f6a89afa137d4efb900af77b1a0455df', '2019', '040114137', '何铭', '期末', '11', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f6a9ecc7f4c749dc9ce359352e02cbd6', '2019', '040114136', '沈云萍', '期末', '14', '9.00', '9.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f6b3af4ffa14411fa8a93fdd6eb86d28', '2019', '040114145', '林琦', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f7053ada01d14a48ae94de0f0fd1e0ad', '2019', '040114114', '顾康能', '期末', '12', '10.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f7342b5ffd1d4f06b5f9ecc59f07bb3a', '2019', '040114148', '赵予晴', '期末', '3', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f75fc4b6142b4e45a7d685b627c74a62', '2019', '040114150', '刘净楠', '期末', '10', '8.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f7a25699d5944dff936cecb495ecc879', '2019', '040114146', '陶欢', '期末', '9', '8.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f7badb59e8114207a7bd13e6f60f0535', '2019', '040214211', '马也骋', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f7c9419158eb4898b152a2af6e26be99', '2019', '040114114', '顾康能', '课程论文', '课程论文2', '100.00', '79.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f7ce77e1a27b47a6a93ee108ad4aa5dc', '2019', '041414239', '戴心雨', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f7d19b175e094ec9a64a81bba0db12de', '2019', '040114136', '沈云萍', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f83365558e1747b2a8c815fdb6c417a5', '2019', '040114144', '张雅蕾', '期末', '9', '8.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f8494a954cae41a5aa22fb01b7d12f93', '2019', '040114117', '王锦艺', '课程论文', '课程论文2', '100.00', '82.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f8496c49a09746e985ebae1a6f81b325', '2019', '040114136', '沈云萍', '课程论文', '阅读', '100.00', '70.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f87e7842ee29482688454a5b4483e8a2', '2019', '040114110', '杜志沅', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f92f4c6b20354d068ff8117baa036971', '2019', '040114131', '毛佳瑜', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f9a8b6196a0c4a9493c19a86be25c8c9', '2019', '040114120', '陈强', '期末', '9', '8.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('f9f147f7424249f1b4eb00641ba794f5', '2019', '040114105', '宋金钱', '期末', '2', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('fa853e8d89aa4e8e964d4926c11eaf06', '2019', '040114142', '孙雨亭', '期末', '9', '8.00', '6.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('fa8fec81853049358360382cd4b074cb', '2019', '040114123', '古丹', '期末', '14', '9.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('faa0530f00f94cb39b4d73fdaea00c30', '2019', '040114114', '顾康能', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('fac00fe31ac64126b6f77f1c333fe7db', '2019', '040114115', '凌华', '期末', '11', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('facacd6446a646bfb8b4ab73e13b2625', '2019', '040114146', '陶欢', '课程论文', '阅读', '100.00', '70.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('fb21c78c3f854e2ebf322ea6203c6871', '2019', '040114118', '王宇超', '期末', '9', '8.00', '8.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('fb35739a33de4799a499ff66a0b2e7ba', '2019', '040114137', '何铭', '课程论文', '课程论文2', '100.00', '82.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('fba918405bbe441783383399b58aa609', '2019', '040114147', '徐蓓佳', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('fbbebed861f14cf28960433249f3ac5b', '2019', '040114119', '杨顺', '期末', '14', '9.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('fc3d15834e6f4fed9ed63bf39712ed8b', '2019', '040114114', '顾康能', '课程论文', '课程论文1', '100.00', '80.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('fc6f58f470334e1f9088aee8f6940f24', '2019', '040114142', '孙雨亭', '课程论文', '课程论文1', '100.00', '90.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('fcaffffe7eba408faca4fe39e12e4b4d', '2019', '040114135', '沈佳敏', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('fcc42e6c6de74c668579683d8d45406c', '2019', '040114132', '沈宽', '期末', '15', '10.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('fced2c58c99d4de0a3a5b27e180a6fa5', '2019', '040114112', '曾乾坤', '期末', '15', '10.00', '7.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('fd458b4cbba7416a8a1caec91b7583b0', '2019', '040114134', '赵雨婷', '期末', '1', '4.00', '2.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('fd5e3c0cd3534a25a57ce033ab20dde8', '2019', '040114120', '陈强', '课程论文', '课程论文1', '100.00', '80.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('fd9f8eb98d8141858c434251dfd61e0a', '2019', '040114120', '陈强', '期末', '4', '4.00', '0.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('fdd607ccd2c140d1a3b5029fe6069725', '2019', '040114105', '宋金钱', '期末', '6', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('fe25c8c6fa8741e28bfb9a16286d1557', '2019', '040114107', '李志远', '期末', '11', '10.00', '10.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('fe5ed30a47264159aed3e373169d43d7', '2019', '040114103', '夏汪洋', '期末', '12', '10.00', '5.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ff9d22ce837e40ecaf49f60e7192e33b', '2019', '040114147', '徐蓓佳', '期末', '5', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('ffaf14403de6434f8e044149384a13bf', '2019', '040214211', '马也骋', '期末', '4', '4.00', '4.00', '数学师范', null, null);
INSERT INTO `score` VALUES ('fff397bb09c0443baa9fd03075567f80', '2019', '040114148', '赵予晴', '期末', '1', '4.00', '2.00', '数学师范', null, null);

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` varchar(36) NOT NULL,
  `sno` varchar(255) DEFAULT NULL COMMENT '学号',
  `sname` varchar(255) DEFAULT NULL COMMENT '姓名',
  `year` varchar(255) DEFAULT NULL COMMENT '毕业年份',
  `major` varchar(255) DEFAULT NULL COMMENT '专业',
  `token` varchar(255) DEFAULT NULL COMMENT '令牌',
  `role` varchar(255) DEFAULT '学生',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('0653d973604347268a8dc26a9e769f7a', '040114130', '徐艺璇', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('0bf04271c4ab4b18b7c0237bc0c71c0d', '040214211', '马也骋', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('0e044f2d342446dea989bc8b232cde82', '040114143', '王晓蕾', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('0e80cd816a6944d2b7257d3bf3ef7482', '040114103', '夏汪洋', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('1a58d45c3a124d0fa0742a4c8e8a5bcc', '040614138', '吴顺婷', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('1a9bec80c53948c9bfca98edeaee5fe2', '040114120', '陈强', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('1cd0e1edd68e48cdbe8485a4ebe5e4df', '040114131', '毛佳瑜', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('205120521ee648d896a4aee53d3b153e', '040114148', '赵予晴', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('24811a188adf43c8a557b067376e3f7b', '040114116', '马嘉禾', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('256d0280f53745b6a86e355d0788c545', '040114112', '曾乾坤', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('28379129c1254b96a0e69bda23925bbb', '040114135', '沈佳敏', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('294a89756c7c43c59a47433bb210f132', '040114145', '林琦', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('2a40df359c3c434cb2fe25f375582840', '040114138', '陶颖红', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('2ac6de6a666e465aaf2991d3d0b951de', '040114107', '李志远', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('2d586651665746129623b69327492761', '040114134', '赵雨婷', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('37ac153bcca74338857e1bd31c5caa36', '040114110', '杜志沅', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('3958cdb5c8594295b18f3a78c31e0947', '041414239', '戴心雨', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('39c47a8470904792a16db43dc244a39b', '040114128', '张玲燕', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('3e45c8d2393e4c34adae4b4e4b3c3456', '030314314', '胡莹月', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('3f4db288a68c4271976e2d08319a3529', '040114132', '沈宽', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('4e646bed663843f1b1da97c1e10a5f6f', '040114126', '肖璐琰', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('4ea37b53da364fc4bf017c9ab12156b6', '040114111', '易川江', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('5046b0418c7e48ae9a13943a1dce48c4', '040114146', '陶欢', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('568a18522ea646afbcef21d456fa258f', '040114150', '刘净楠', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('64146c98e02545b4afb288486a083ede', '040114117', '王锦艺', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('6496008658f64f249026e410d8052b2c', '050114133', '张琦', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('7def7d50522048df99704cd6e35dcb27', '040114144', '张雅蕾', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('8c1c2f73d10f4479a064679447bf3575', '040114133', '谈潇玥', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('8eefa438604c410ab61989254e08e354', '040114147', '徐蓓佳', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('90d0a55ddec04c02829e87efd9129c03', '040114124', '万红利', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('924d2b9110ef4dd6aabc3eb4dfd8b4cb', '040114108', '姚籽呈', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('934f2141c9314930bee3ed2df99ead13', '040114119', '杨顺', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('94fc0c0e8c124b81b8be103be0fdd7a6', '040114140', '程怡婷', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('95dbc3f19d1d489fa7d44109e1263b20', '', '', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('a806b97611484db18f0f44c63c4b56b9', '040114115', '凌华', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('aa4c1d020a5541c2b9e8f0ca472e55fb', '040114141', '徐静', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('baaec4246a3c4cdfac4429208a81c1e0', '040114149', '曹静怡', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('bcfc5fe1366a44e59b6db234c50fbe0b', '040114105', '宋金钱', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('cddfa1fd89df4929a787e3f7ddf65397', '040114136', '沈云萍', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('d30286f1d0c54bfbbc02de880f7a6067', '040114122', '魏薇', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('d66b2deac7e14b8f8cbc600626c14ec3', '040114123', '古丹', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('d6ffe7cfc86a441b9bf1233fcda57398', '040114139', '徐思佳', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('dc79997f922b4e2dbcf26cc91cab084e', '040114137', '何铭', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('e29be4b37ea34cd0ad6b7be4f6ac808f', '040114142', '孙雨亭', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('ecb3b9acedec4a099180e89facc3e462', '040114118', '王宇超', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('eedd139765984c8f927ef88fbe979885', '040114129', '景莉洁', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('f62cd2130eb14e94a6a7674b0e251f05', '040114127', '姚心怡', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('f68cdb3d0e3b4c9196c8ccf975dd0ea5', '040114114', '顾康能', '2019', '数学师范', null, '学生');
INSERT INTO `student` VALUES ('f69a8c67aa4b4dca81c45cf7c33af007', '040111101', '陈鑫', '2019', '数学师范', 'eyJDU19aWUtKIjoiSldUIiwiYWxnIjoiSFMyNTYifQ.eyJhY2NvdW50IjoiMDQwMTExMTAxIiwicm9sZSI6IuWtpueUnyIsImV4cCI6MTU1MDQyNjczOSwibmJmIjoxNTUwNDE5NTM5fQ.kzfd96z3B2AbFeK6b9tgEcnD9hduMp8KsNXHHw3Qf2s', '学生');

-- ----------------------------
-- Table structure for `teaching_program`
-- ----------------------------
DROP TABLE IF EXISTS `teaching_program`;
CREATE TABLE `teaching_program` (
  `id` varchar(36) NOT NULL,
  `school` varchar(255) DEFAULT NULL COMMENT '（无用）',
  `year` varchar(255) DEFAULT NULL COMMENT '年份',
  `major` varchar(255) DEFAULT NULL COMMENT '专业',
  `courseName` varchar(255) DEFAULT NULL COMMENT '课程名',
  `courseType` varchar(255) DEFAULT NULL COMMENT '课程类型',
  `className` varchar(255) DEFAULT NULL COMMENT '班级名',
  `account` varchar(255) DEFAULT NULL COMMENT '教师编号',
  `teacherName` varchar(255) DEFAULT NULL COMMENT '教师名',
  `methods` varchar(255) DEFAULT NULL COMMENT '考核类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of teaching_program
-- ----------------------------
INSERT INTO `teaching_program` VALUES ('00815c45afd64ee08e220ac69cc0d835', null, '2019', '数学师范', '数学史选讲', '专业选修课', '0401141', '199000111', '冯进', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('00a97314fa794296af586b97da1f45d3', null, '2019', '数学师范', '思想道德修养与法律基础', '通用选修课', '0401141', '200700027', '温杰', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('029334a72ade44999efc87b9d46fd1b0', null, '2019', '数学师范', '概率统计', '专业选修课', '0401141', '199000115', '王志伟', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('084d792684554bb8a979e517829ca153', null, '2019', '数学师范', '毕业设计（论文）', '专业必修课', '0401141', '199900026', '姜伟', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('20dceb90b2c54d669a3125d295750b6c', null, '2019', '数学师范', '教育统计与测评', '专业选修课', '0401141', '199000119', '龚玲梅', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('25c2809482944fc7bbd1f69b8f33a9ba', null, '2019', '数学师范', '数学教学论', '专业必修课', '0401141', '199000119', '龚玲梅', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('27be6ce01e65441da29ba46e5cb38118', null, '2019', '数学师范', '大学物理C2', '通用选修课', '0401141', '200100034', '陶永梅', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('2874c0ec59a94f4a89ac3bc24ade5984', null, '2019', '数学师范', '小学数学教与学', '专业必修课', '0401141', '201500011', '田仕芹', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('2cf2d9b0bae04330a2e0d607734cf388', null, '2019', '数学师范', '初等数学研究2', '专业必修课', '0401141', '199300020', '杨惊雷', '平时,期末,课程论文');
INSERT INTO `teaching_program` VALUES ('370cb44604414c76a69ee8e8c93fd514', null, '2019', '数学师范', '高等代数与解析几何1', '通用选修课', '0401141', '199000111', '冯进', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('3b6d531d80294579a8e6d1df47d3aeb0', null, '2019', '数学师范', '体育', '专业选修课', '0401141', '200800028', '季吉祥', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('3e726f9d080a4ababf18677f3192b383', null, '2019', '数学师范', '入学教育', '通用选修课', '0401141', '200500050', '吴涛', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('43d51054637c44389484f8aefcbf43f4', null, '2019', '数学师范', '初等数论', '专业选修课', '0401141', '200700043', '李上钊', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('472654a17e01442ca0aec1cbfecc247c', null, '2019', '数学师范', '教师书写技能', '通用选修课', '0401141', '199800011', '邵勇', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('49168db2389c40698ba8fe57fc9043ec', null, '2019', '数学师范', '中学数学教学设计', '专业选修课', '0401141', '199000119', '龚玲梅', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('49d8933a648b405cba537a91dd72b2bf', null, '2019', '数学师范', '近世代数', '通用选修课', '0401141', '199700018', '唐锋', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('4cf0add2ec344ac28603bb9bb59cfcd8', null, '2019', '数学师范', '大学英语3', '通用选修课', '0401141', '199000149', '顾祖良', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('50541e13194143919a78689fa8d55d50', null, '2019', '数学师范', '大学英语1', '通用选修课', '0401141', '200600034', '陶易', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('5d56a69f34004bbaaff2e3da3cc6c61d', null, '2019', '数学师范', '大学物理C1', '通用选修课', '0401141', '200100034', '陶永梅', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('5db16f42b575472f9d5c0bfa40bd8566', null, '2019', '数学师范', '大学生职业发展与创业教育', '专业必修课', '0401141', '201100029', '肖虹', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('62804e2d88dc4724986ae176db324f73', null, '2019', '数学师范', '毛泽东思想和中国特色社会主义理论体系概论', '专业选修课', '0401141', '200700002', '李智军', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('641eda7726d34dd1979d0ef3d61218b1', null, '2019', '数学师范', '教育学基础', '通用选修课', '0401141', '199700015', '王斌', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('652d782e208b4ac594509cdcccc0711a', null, '2019', '数学师范', '大学生心理健康教育', '通用选修课', '0401141', '200500050', '吴涛', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('65ed4074d72c414784f5725f531b9a2b', null, '2019', '数学师范', '数学教育心理', '专业选修课', '0401141', '201500011', '田仕芹', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('6b03133440bf481d9eb6826f9267ad4e', null, '2019', '数学师范', '中学数学现代基础', '专业选修课', '0401141', '199000119', '龚玲梅', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('6d7d20345fd642809332440b80e1649c', null, '2019', '数学师范', '程序设计基础', '通用选修课', '0401141', '200600013', '何春霞', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('6e847b2eca5747d2af51f35c6a4b653f', null, '2019', '数学师范', '教师语言技能', '通用选修课', '0401141', '200000009', '朱敏卓', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('72c7e07d92174cab8cc205d05542217a', null, '2019', '数学师范', '大学信息技术', '通用选修课', '0401141', '200700021', '盘丽娜', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('7f1507c00640475abbbfa82f1ca46ea3', null, '2019', '数学师范', '初等数学研究1', '专业选修课', '0401141', '199200013', '汤炳兴', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('84aef47c62ed4b83a4ae481f0cc6897d', null, '2019', '数学师范', '教育实习', '专业必修课', '0401141', '199900026', '姜伟', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('89aacced74e246a3b49608e3c38c9910', null, '2019', '数学师范', '心理学基础', '通用选修课', '0401141', '199700015', '王斌', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('8dbe06e1df5346a89b61ea908ef96539', null, '2019', '数学师范', '数学微格教学', '专业必修课', '0401141', '199000119', '龚玲梅', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('9798da45c7eb473687b1f0a79653bd93', null, '2019', '数学师范', '数学建模', '专业选修课', '0401141', '199400009', '金健', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('99d1e4e877014eb38d0be0c5ab51884f', null, '2019', '数学师范', '数学分析1', '通用选修课', '0401141', '199000116', '常建明', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('a26b6da0db8746499e99cdd2eb985b95', null, '2019', '数学师范', '高等代数与解析几何2', '通用选修课', '0401141', '199000111', '冯进', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('a3474c164c6c488fb7b653fb21fc8398', null, '2019', '数学师范', '数学思想方法', '专业选修课', '0401141', '199200013', '汤炳兴', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('a3ea99be27914114a2766f269ec1cec3', null, '2019', '数学师范', '马克思主义基本原理概论', '专业选修课', '0401141', '200300026', '徐震', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('a5cc8b41bb1a49018c24b5aee63ba2af', null, '2019', '数学师范', '中国近现代史纲要', '通用选修课', '0401141', '199000098', '沈潜', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('a902269cb2ef40a6ab59608fec399e0e', null, '2019', '数学师范', '测试未填写课程类型', '未选择课程类型', '0401141', '201100029', '肖虹', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('aa1edb5f5caa40489f99c71acae760f8', null, '2019', '数学师范', '常微分方程', '专业选修课', '0401141', '199900029', '王见勇', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('ac7ac2c8a9ba49f7b623f919cf3d5ca3', null, '2019', '数学师范', '军事理论与军事训练', '通用选修课', '0401141', '200900014', '耿发展', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('b71a7fa5644f476e88ac1220da62000e', null, '2019', '数学师范', '数学分析3', '通用选修课', '0401141', '199900029', '王见勇', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('bbefef262af9406492a71ab56c98fd7c', null, '2019', '数学师范', '大学英语2', '通用选修课', '0401141', '199700024', '章于红', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('c4aa1b8a42f94b75a51c02cc9d1188d4', null, '2019', '数学师范', '形势与政策', '专业必修课', '0401141', '200900014', '耿发展', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('cf1412d04945483f8e97d49a202904c0', null, '2019', '数学师范', '数学教学研究', '专业必修课', '0401141', '199200013', '汤炳兴', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('d5a178098dfc4cfd9132f46e12ea0362', null, '2019', '数学师范', '数学分析2', '通用选修课', '0401141', '199000116', '常建明', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('d6492e4aefc04b4b91bce411dfb033d3', null, '2019', '数学师范', '复变函数', '专业选修课', '0401141', '199000113', '徐能', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('dda9f47e7b2048a4bcd96479066c68a5', null, '2019', '数学师范', '教育见习', '专业选修课', '0401141', '199000119', '龚玲梅', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('df492919dab5490e822ededda53a68fc', null, '2019', '数学师范', '现代教育技术', '专业选修课', '0401141', '199600013', '胡晓源', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('f1d6b8741ee44e50a5079215c33f1f11', null, '2019', '数学师范', '计算机辅助教学', '专业选修课', '0401141', '199000121', '陆建明', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('f597e9bfe8e34adeb1ffe79ababec40a', null, '2019', '数学师范', '数学教学软件应用', '专业选修课', '0401141', '199300020', '杨惊雷', '平时成绩,期中考试,期末考试');
INSERT INTO `teaching_program` VALUES ('fe6ce66ec9194610ac91a130946e7c83', null, '2019', '数学师范', '中高考试题研究', '专业必修课', '0401141', '199200013', '汤炳兴', '平时成绩,期中考试,期末考试');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` varchar(36) NOT NULL,
  `school` varchar(255) DEFAULT NULL COMMENT '（无用）',
  `account` varchar(255) DEFAULT NULL COMMENT '教师编号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码（默认教师编号）',
  `phone` varchar(255) DEFAULT NULL COMMENT '教师联系电话',
  `role` varchar(255) DEFAULT NULL COMMENT '角色',
  `teacherName` varchar(255) DEFAULT NULL COMMENT '教师名',
  `token` varchar(255) DEFAULT NULL COMMENT '令牌',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('00d8525ada0d44a29bea332f3e6ec9db', '常熟理工学院', '199000113', 'E2EDABDD4558912C2AB5CCDCB78DC040', '未填写', '数学师范', '徐能', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhY2NvdW50IjoiMTk5MDAwMTEzIiwicm9sZSI6IuaVsOWtpuW4iOiMgyIsIm5iZiI6MTU0ODUwMjE0OCwiZXhwIjoxNTQ4NTA5MzQ4fQ.U8Y0FWjSvALeIh3VFSbp6wy5O07yxVyp31cogttwxVE');
INSERT INTO `users` VALUES ('1110ec9601294002959fad91b2ee82eb', '常熟理工学院', '199000121', '0EEA2782C57F1E6C22BA3BE9E3EEB8B0', '未填写', '普通教师', '陆建明', 'eyJDU19aWUtKIjoiSldUIiwiYWxnIjoiSFMyNTYifQ.eyJhY2NvdW50IjoiMTk5MDAwMTIxIiwicm9sZSI6IuaZrumAmuaVmeW4iCIsImV4cCI6MTU0Njc2MDQzOSwibmJmIjoxNTQ2NzUzMjM5fQ.q84JkkeUAgbUUBuT8nkkPEyW8L0EN3zeAJzTTXiV1Pw');
INSERT INTO `users` VALUES ('1337a8ddb58f452db9e3368adaa1d4c4', '常熟理工学院', '200700027', '26DDE9C495D4FF2F67C68058B0F9AD5E', '未填写', '问卷管理员', '温杰', 'eyJDU19aWUtKIjoiSldUIiwiYWxnIjoiSFMyNTYifQ.eyJhY2NvdW50IjoiMjAwNzAwMDI3Iiwicm9sZSI6IumXruWNt-euoeeQhuWRmCIsImV4cCI6MTU1MDQyNjk0OCwibmJmIjoxNTUwNDE5NzQ4fQ.Th3mj1U0og78YFP97r3xtG6PYSyGnlkj6f8h5o3uis4');
INSERT INTO `users` VALUES ('14b72aeb18d644c68a02c0bd89f5bc6e', '常熟理工学院', '200100034', 'E2533A99C9FAB6F1AC70D0C0D377946C', '未填写', '普通教师', '陶永梅', null);
INSERT INTO `users` VALUES ('2277b2c137e54d7c8707c27605c6cdab', '常熟理工学院', '199000111', 'C822C90CEB6D22E16A47C9219E1D833A', '未填写', '普通教师', '冯进', null);
INSERT INTO `users` VALUES ('2745f6a09de3419693e6956375c88ada', '常熟理工学院', '199000098', 'AB01F7E5FB95540B95A4EA9B48F122DF', '未填写', '普通教师', '沈潜', null);
INSERT INTO `users` VALUES ('35350b619ee34ba9875798188350a660', '常熟理工学院', '200300026', 'A7286E61B59231B0804964717950F5BB', '未填写', '普通教师', '徐震', 'eyJDU19aWUtKIjoiSldUIiwiYWxnIjoiSFMyNTYifQ.eyJhY2NvdW50IjoiMjAwMzAwMDI2Iiwicm9sZSI6IuaZrumAmuaVmeW4iCIsImV4cCI6MTU0ODE0NTIyMywibmJmIjoxNTQ4MTM4MDIzfQ.wY3Pr32DKaD0TPs-GqFcjcHT1s1AEAryKkFJOiRB1qM');
INSERT INTO `users` VALUES ('3fcdf46db0834cbfb3b11f7d4138a28e', '常熟理工学院', '199600013', 'BCCC05F8E869ABC4B05BC91940EF6AC5', '未填写', '普通教师', '胡晓源', null);
INSERT INTO `users` VALUES ('4b79fb3c5b8b41f1bff94ad9f54f3760', '常熟理工学院', '200600013', '613CEBCE34B44DC3B0CFC55EEE911520', '未填写', '普通教师', '何春霞', null);
INSERT INTO `users` VALUES ('6b7a28591c7140749318ef1d5284ee27', '常熟理工学院', '199700018', '8CA939302C77F2695CFF1E8FF69A8857', '未填写', '普通教师', '唐锋', null);
INSERT INTO `users` VALUES ('6d60f790c4194e97ae03653f5f2d7595', '常熟理工学院', '199800011', '0405A66D24CFFFE652A22679BAC52B51', '未填写', '普通教师', '邵勇', null);
INSERT INTO `users` VALUES ('7625100cf99542f095accbf4f42aa512', '常熟理工学院', '200000009', '96B9D6BAB9A5F4AA3D52F838CA117945', '未填写', '普通教师', '朱敏卓', null);
INSERT INTO `users` VALUES ('77c315a4f8b5477eb3f6d26835cb1410', '常熟理工学院', '199300020', 'EB13E773C1FCB103452D61BE9D7C56DE', '未填写', '普通教师', '杨惊雷', 'eyJDU19aWUtKIjoiSldUIiwiYWxnIjoiSFMyNTYifQ.eyJhY2NvdW50IjoiMTk5MzAwMDIwIiwicm9sZSI6IuaZrumAmuaVmeW4iCIsImV4cCI6MTU0ODQwNjE2OSwibmJmIjoxNTQ4Mzk4OTY5fQ.ERe2JbGQ8Hxinn7soabpk7QcLjfYI_EjMUjrNY7KNr4');
INSERT INTO `users` VALUES ('7d3ad31dd96a423cbe6a467eafb5cebd', '常熟理工学院', '199000149', '02437DB125A125ADD82D77FC3C6C21AB', '未填写', '普通教师', '顾祖良', null);
INSERT INTO `users` VALUES ('83f7ffd0370a453e9bf69ffd70c92b0a', '常熟理工学院', '199000119', 'CA93D82205E1613721052A4C838F4F0B', '未填写', '普通教师', '龚玲梅', null);
INSERT INTO `users` VALUES ('87a615f0e470431983a31bcfd4e68124', '常熟理工学院', '199700024', '220EED6F9D3B13DE6C68C87E55AACEC4', '未填写', '普通教师', '章于红', null);
INSERT INTO `users` VALUES ('96fbc2076b9c4f12a66b65297ddfb409', '常熟理工学院', '200700043', '80721CE0F0BD80715B8C8FFAD0C147E5', '未填写', '普通教师', '李上钊', null);
INSERT INTO `users` VALUES ('98da012d5a344b29a4ec2a24621c2498', '常熟理工学院', '200600034', '5DA5C5824BCAE34CCE0D47CF330CB495', '未填写', '普通教师', '陶易', null);
INSERT INTO `users` VALUES ('9a542362769a4506941e0dec0b1a2bf4', '常熟理工学院', '199900026', '1FDFDA0E606C496414D41B9B6DE806A5', '未填写', '普通教师', '姜伟', null);
INSERT INTO `users` VALUES ('a4ea153edcef4f629cf1e091896a35c5', '常熟理工学院', '200700021', 'A6A5E7D93877D1EAADD7B5BBC323B69F', '未填写', '普通教师', '盘丽娜', null);
INSERT INTO `users` VALUES ('ab5d545a25404c289eddceb92f523368', '常熟理工学院', '200900014', '90F45C968CC83D4C5D0ACF772B21542A', '未填写', '普通教师', '耿发展', null);
INSERT INTO `users` VALUES ('ae07beb37c4f42169bb4818ab6f68765', '常熟理工学院', '199200013', '783A8762A37680BF356B89F314D7F6D1', '未填写', '普通教师', '汤炳兴', null);
INSERT INTO `users` VALUES ('b2978ab8a1334a6c96e271b0eb51382b', '常熟理工学院', '199700015', '9A81E4D4DF9243A18A87FFA0823A2CE9', '未填写', '普通教师', '王斌', null);
INSERT INTO `users` VALUES ('b667f15d251f44338bd2dc6ec498bafc', '常熟理工学院', '200700002', '3A539D3EA09F12D313008C46D724BD6D', '未填写', '普通教师', '李智军', null);
INSERT INTO `users` VALUES ('c4a582190ff0458aadfd331cd70a1b6f', '常熟理工学院', '199400009', '67ABDC9B82AEC3155CFEFCF6248E9CD1', '未填写', '普通教师', '金健', null);
INSERT INTO `users` VALUES ('cb0fb53c5f59401987061483b7f28bf1', '常熟理工学院', '200800028', 'EE4B1A464FEA4CFA80E410EC437AC749', '未填写', '普通教师', '季吉祥', null);
INSERT INTO `users` VALUES ('cc967171c44d4a9fa88fce7f235f5493', '常熟理工学院', '199000116', 'EB6E57968F9D4B879646101159A8C3ED', '未填写', '普通教师', '常建明', null);
INSERT INTO `users` VALUES ('cf4474d9ac874fb8bc2f8e1b49b3ba98', '常熟理工学院', '201500011', 'F141EF144DA0BCC40551908FD892FF2C', '未填写', '普通教师', '田仕芹', null);
INSERT INTO `users` VALUES ('d91c8430860c4d6aa226447ebc3299a5', '常熟理工学院', '201100029', '11A2C61E6891A22DC03F552A45FA7BF6', '未填写', '普通教师', '肖虹', null);
INSERT INTO `users` VALUES ('da3fdaf271934c798381fb2405f7f650', '常熟理工学院', '199900029', 'EBBBECBBE96143D359FB44C347A83BF4', '未填写', '普通教师', '王见勇', null);
INSERT INTO `users` VALUES ('ef7c72a2cbe841e884e0e35d24ef633a', '常熟理工学院', '200500050', 'B0ED0B917EA9ED430B855838943CB02B', '未填写', '普通教师', '吴涛', null);
INSERT INTO `users` VALUES ('fb129e1431d94d2cb0c6d341264839f1', '常熟理工学院', '199000115', '1A3075AD276F497DC49CA9FA9B3DBE8A', '未填写', '普通教师', '王志伟', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhY2NvdW50IjoiMTk5MDAwMTE1Iiwicm9sZSI6IuaZrumAmuaVmeW4iCIsIm5iZiI6MTU0ODUxNzMzMywiZXhwIjoxNTQ4NTI0NTMzfQ.e7gFGcCRBJ3fABL-6aCeFSTK4Qa7OxEZgxBn9zYdIAU');

-- ----------------------------
-- Table structure for `word`
-- ----------------------------
DROP TABLE IF EXISTS `word`;
CREATE TABLE `word` (
  `id` varchar(36) NOT NULL,
  `classID` varchar(255) DEFAULT NULL COMMENT '班级ID',
  `p1` text,
  `p2` text,
  `p3` text,
  `p4` text,
  `p5` text,
  `p6` text,
  `author` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `p7` text,
  `p8` text,
  `p9` text,
  `p10` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of word
-- ----------------------------
INSERT INTO `word` VALUES ('43790120d6eb475781bad2e704bcdb92', 'f597e9bfe8e34adeb1ffe79ababec40a', ',', '', '', '', '', '撒打算', '杨惊雷', '2019-1-23', '爱上大声点啊都', '隧道阿斯顿 ', '', '');
INSERT INTO `word` VALUES ('fb1f194c88644c8ca5c856d7f80ce60d', '2cf2d9b0bae04330a2e0d607734cf388', '掌握微生物发酵生产的一般培养方法和过程过程控制原理，理解培养条件（温度、通气量、搅拌等）对发酵过程的影响；掌握发酵动力学及其应用，能够根据微生物生长速率、底物消耗速率以及产物形成速率建立微生物发酵动力学模型并求解，从而指导发酵过程控制。|掌握微生物发酵过程中的代谢途径与原理，理解发酵培养基对微生物代谢影响，根据培养基成分调整发酵代谢途径，能根据生物化学综合反应知识能够将代谢产物分离纯化。|掌握发酵工艺优化过程中溶解氧的监测与控制、发酵过程中细胞浓度、产物浓度和底物浓度的检测与控制，在多参数工艺优化的基础上理解发酵过程控制有多种方案可选择，能够通过文献研究制定与选择发酵工艺方案。|掌握生物发酵工艺设计、生物反应器设计与放大原理，掌握基因工程菌发酵优化放大基本策略与高密度发酵优化的应用，能够针对发酵工艺流程和发酵放大进行优化设计，培养一定的创新意识和创新能力。|能够针对不同发酵产品（比如抗生素、氨基酸、有机酸、酶制剂等）的发酵工艺选用满足该类产品的特定需求的现代工具模拟或预测产品特征，分析其局限性。|能够针对不同发酵产品（比如抗生素、氨基酸、有机酸、酶制剂等）的发酵工艺选用满足该类产品的特定需求的现代工具模拟或预测产品特征，分析其局限性。|能够针对不同发酵产品（比如抗生素、氨基酸、有机酸、酶制剂等）的发酵工艺选用满足该类产品的特定需求的现代工具模拟或预测产品特征，分析其局限性。', '根据面向产出理念，设计了本课程的课程目标，共有5个课程目标，具体见教学大纲，其中，本课程重点强支撑毕业要求1.4和毕业要求5.3。本课程的课程目标与指标点的对应关系如下表1：\n', '本课程教学内容丰富，根据课程目标设计教学内容，体现OBE理念，授课方式多样，有传统的课堂教学，也有现代化的移动APP教学和课堂讨论等方式。根据学生学习效果和学生座谈，教学内容和授课方式能够支撑课程目标的达成。主要理由：教学大纲的授课内容根据课程目标设计，又不仅仅局限于课程目标内容，有承上启下的链接课堂内容，也有对整个课程教学计划的安排，让学生做到心中有数。在第一堂课告知学生的课程脉络及重点内容，学生知晓教师的授课方式、课程目标和考核方式，因此，本课程的教学内容和授课方式等能支撑课程目标的达成。\n', '本课程对学生的考核既有平时测验与讨论，也有实验报告成绩，与课程目标的要求相匹配，在计算过程中为了易于操作，将实验成绩和平时成绩合并为总平时成绩进行计算，权重比例为考试40%，总平时成绩为60%（含实验和平时作业）。比如课程目标1：掌握微生物发酵生产的一般培养方法和过程过程控制原理，理解培养条件（温度、通气量、搅拌等）对发酵过程的影响；掌握发酵动力学及其应用，能够根据微生物生长速率、底物消耗速率以及产物形成速率建立微生物发酵动力学模型并求解，从而指导发酵过程控制。教学过程中，通过考题计算微生物的生长速率和产物形成速率，从而考核学生是否掌握课程目标1，在平时测试过程中，也有计算发酵动力学测试题，证明考核方式与课程目标的要求是匹配的。在教学大纲里对定性评价给出了课程目标的评分标准，在平时测试的考题和试卷中，也有具体的评分标准，评分标准根据学生对毕业要求指标点的掌握情况合理确定。\n', '每学期考核结束后， OBE课程考核小组定期对课程进行结果分析。本课程的目标的期望值为0.70，通过对生物工程131班（0605131）全体样本的5个课程目标做图比较可知，课程目标4（0.73）是本课程相对短板。对照课程目标4掌握生物发酵工艺设计、生物反应器设计与放大原理，掌握基因工程菌发酵优化放大基本策略与高密度发酵优化的应用，能够针对发酵工艺流程和发酵放大进行优化设计，培养一定的创新意识和创新能力。课程目标4考核题型涉及工艺优化设计和发酵放大原理，要求学生掌握高密度优化的应用，在设计培养过程中需要有一定的创新意识和能力，全面检查学生的理解分析设计能力。从考试的结果来看，虽然达到课程目标值0.7以上，但还存在相对短板问题。反映学生总体掌握工艺设计与优化中需要进一步加强，这也是在毕业设计中的相对薄弱，尤其是在有一定创新意识条件下的基础掌握还有较大的提升空间。本课程通过基于OBE的课程考核分析，重点在今后的教学过程中培养学生对课程目标4的设计和优化能力，在今后的教学过程中，需要通过有力措施，改进教学方法，提高课程目标的达成度。\n首先对课程进行OBE考核的结果分析可知，发现该课程的5个课程目标均达到0.7以上，最高的为课程目标5，达成度为0.79，最低的课程目标达成度为课程目标4，达成度为0.73，说明本课程班级整体情况良好。\n', '但是，班级整体课程目标达成度的计算是基于全班平均分进行计算的，每个课程目标之间学生个体对知识点的掌握可能存在不同的情况，因此下面进一步对课程目标1—课程目标5进行个人达成情况分析，从个人课程目标达成情况中从而精准找出帮扶对象的同学（见图2-6），以帮助同学达到毕业要求。\n', '杨惊雷', '2019-1-25', '从图2可知，课程目标1 学生个人达成度分布较均匀，集中区间为0.70-0.85之间，需要帮扶学生为四名，均为20号以后的学生。\n||从图3可知，课程目标2学生个人达成度分布较均匀，1-20号学生集中区间为0.70-0.80之间，20-38号学生达成度集中区间为0.75-0.85之间，但需帮扶的两名学生为33号和34号，老师可以单独找这两名学生了解情况。\n|||从图4可知，课程目标3学生个人达成度分布是5个课程目标中最为均匀分布的，学生集中区间为0.70-0.85之间，但需帮扶的三名学生仍然20号以后的学生，其中为34号学生多次出现，老师进一步了解情况，或者向班主任反映。\n|从图5可知，课程目标4学生个人达成度分布相对均匀分布，学生集中区间为0.70-0.80之间，但需帮扶的学生人数最多，达6名，而且也集中在20号以后几位同学，其中为21号和34号学生多次出现，老师需找学生谈话，并向班主任反映。\n', '通过以上实例分析，从整个班级中找出课程目标相对短板为课程目标4（见图1），再分别对课程目标学生的个体达成情况进行散点图分析可知，课程目标4需帮扶同学达到6名，进一步证实课程目标4是今后在教学过程中需进一步加强的目标。\n总之，通过对每个课程目标进行学生个人达成情况分析，可以精准找出帮扶学生，有力保证了以学生为中心的理念，以评学为手段，保障了学生的课程目标达成，从而有利于保证学生的毕业要求达成。\n', '1）加强课程目标4的内容理解，更加注重平时作业质量，对帮扶学生的课堂内外的作业可适当增加，课后由课程组或任课老师对帮扶学生进行辅导。\n2）多方面充分了解学生的课程知识体系和学生知识面，帮助学生梳理课程目标知识点，做到有的放矢。\n3）关注帮扶学生的其他相关课程目标达成情况，了解是否有其他课程强化该课程目标达成。\n', '通过评价结果可以看出，本课程目标均已达成（0.7以上），反映学生对本课程的各目标掌握较好。课程目标4处于最低为0.73，反映学生在掌握生物发酵工艺设计、生物反应器设计与放大原理、基因工程菌发酵优化放大基本策略等方面的知识与能力提升上还有较大的空间。通过本课程质量分析报告，分析优势和短板，在今后的教学过程中，强化课程目标的教学方法和知识体系梳理，让老师在教学过程中有的放矢，学生能在学习过程中对课程目标理解更加深入。这样能够将评价指标贯穿于课程教学全过程，既能评价学生，也能评价教师，充分体现“以学为中心”、“以学评教”的教学理念。通过课程质量分析结果更能较为客观、准确地反映课程的教学质量，如能结合混合教学课程平台、教改示范课平台在线同步搭建课程的教学质量评价体系，那么将更有利于今后的评价及统计分析，从而更快捷有效地体现课程改革的教学效果，正在体现以评促学，有利于课程教学质量评价从“评教”真正向“评学”转变。\n');
