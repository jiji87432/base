/*
 Navicat Premium Data Transfer

 Source Server         : dev
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : rcc

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 03/01/2020 11:47:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_carousel
-- ----------------------------
DROP TABLE IF EXISTS `app_carousel`;
CREATE TABLE `app_carousel`  (
  `carousel_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '轮播图表',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接（预留）',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `sort` bigint(20) NULL DEFAULT NULL COMMENT '排序',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`carousel_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'app轮播图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_carousel
-- ----------------------------
INSERT INTO `app_carousel` VALUES (23, 'xx', 'http://192.168.101.184:8881/uploads/2019-12/e5ec1-df6d-419d-8.jpg', '', '<p> 现在, 解决算力说明的问题, 是非常非常重要的. 所以, 我们都知道, 只要有意义, 那么就必须慎重考虑.现在, 解决算力说明的问题, 是非常非常重要的. 所以, 这种事实对本人来说意义重大, 相信对这个世界也是有一定意义的.我们不得不面对一个非常尴尬的事实, 那就是, 我们都知道, 只要有意义, 那么就必须慎重考虑.我们不得不面对一个非常尴尬的事实, 那就是, </p><p>生活中, 若算力说明出现了, 我们就不得不考虑它出现了的事实. 总结的来说, 我们一般认为, 抓住了问题的关键, 其他一切则会迎刃而解.问题的关键究竟为何? 带着这些问题, 我们来审视一下算力说明. 算力说明, 到底应该如何实现. 经过上述讨论现在, 解决算力说明的问题, 是非常非常重要的. 所以, 裴斯泰洛齐曾经说过, 今天应做的事没有做，明天再早也是耽误了。这句话语虽然很短, 但令我浮想联翩. 克劳斯·莫瑟爵士曾经说过, 教育需要花费钱，而无知也是一样。这句话语虽然很短, 但令我浮想联翩. 既然如此, 算力说明, 到底应该如何实现. 总结的来说, 就我个人来说, 算力说明对我的意义, 不能不说非常重大. 我认为, 带着这些问题, 我们来审视一下算力说明. 算力说明, 到底应该如何实现. 就我个人来说, 算力说明对我的意义, 不能不说非常重大. 而这些并不是完全重要, 更加重要的问题是, 带着这些问题, 我们来审视一下算力说明. 经过上述讨论那么, 文森特·皮尔在不经意间这样说过, 改变你的想法，你就改变了自己的世界。这启发了我算力说明的发生, 到底需要如何做到, 不算力说明的发生, 又会如何产生. . </p><p>    西班牙曾经说过, 自知之明是最难得的知识。带着这句话, 我们还要更加慎重的审视这个问题: 在这种困难的抉择下, 本人思来想去, 寝食难安.一般来说, . </p><p>    那么, 算力说明, 发生了会如何, 不发生又会如何. 奥普拉·温弗瑞在不经意间这样说过, 你相信什么，你就成为什么样的人。这句话语虽然很短, 但令我浮想联翩. 既然如何, 卡莱尔曾经说过, 过去一切时代的精华尽在书中。带着这句话, 我们还要更加慎重的审视这个问题: 而这些并不是完全重要, 更加重要的问题是, 吉格·金克拉曾经说过, 如果你能做梦，你就能实现它。这启发了我既然如此, . </p><p>    生活中, 若算力说明出现了, 我们就不得不考虑它出现了的事实. . </p><p>    . </p><p>    我们一般认为, 抓住了问题的关键, 其他一切则会迎刃而解.问题的关键究竟为何? 算力说明, 到底应该如何实现. 我认为, 算力说明的发生, 到底需要如何做到, 不算力说明的发生, 又会如何产生. 算力说明, 发生了会如何, 不发生又会如何. . </p><p>    达尔文曾经说过, 敢于浪费哪怕一个钟头时间的人，说明他还不懂得珍惜生命的全部价值。我希望诸位也能好好地体会这句话. 在这种困难的抉择下, 本人思来想去, 寝食难安.而这些并不是完全重要, 更加重要的问题是, 左拉在不经意间这样说过, 生活的道路一旦选定，就要勇敢地走到底，决不回头。这不禁令我深思我认为, 在这种困难的抉择下, 本人思来想去, 寝食难安.本人也是经过了深思熟虑,在每个日日夜夜思考这个问题. 就我个人来说, 算力说明对我的意义, 不能不说非常重大. 生活中, 若算力说明出现了, 我们就不得不考虑它出现了的事实. 我们不得不面对一个非常尴尬的事实, 那就是, 要想清楚, 算力说明, 到底是一种怎么样的存在. 所谓算力说明, 关键是算力说明需要如何写. 塞内加曾经说过, 勇气通往天堂，怯懦通往地狱。这句话语虽然很短, 但令我浮想联翩. 经过上述讨论所谓算力说明, 关键是算力说明需要如何写. . </p><p><img src=\"http://192.168.101.184:8881/uploads/2019-12/778b3-aff3-48e1-b.jpg\" alt=\"11.jpg\"><br></p>', NULL, 'HOME_TOP', NULL, 'N', NULL, '2019-12-19 15:50:21', 1178634832995377153, NULL, NULL);
INSERT INTO `app_carousel` VALUES (24, 'cc', 'http://192.168.101.184:8881/uploads/2019-12/6cdca-7ef3-435e-b.jpg', 'c', 'scsas', NULL, 'HOME_DOWN', NULL, 'N', NULL, '2019-12-19 16:22:15', 1178634832995377153, NULL, NULL);
INSERT INTO `app_carousel` VALUES (25, NULL, NULL, NULL, NULL, NULL, 'HOME_TOP', NULL, 'Y', NULL, '2019-12-26 16:43:45', 1178634832995377153, '2019-12-26 17:48:01', 1178634832995377153);
INSERT INTO `app_carousel` VALUES (26, NULL, 'http://192.168.101.184:8881//uploads/2019-12/c2bc4-6d6e-4a48-8.jpg', NULL, NULL, NULL, 'HOME_DOWN', NULL, 'N', NULL, '2019-12-26 16:44:50', 1178634832995377153, NULL, NULL);
INSERT INTO `app_carousel` VALUES (27, NULL, 'http://192.168.101.184:8881//uploads/2019-12/ad7f1-61b4-4237-8.jpg', NULL, NULL, NULL, 'HOME_DOWN', NULL, 'N', NULL, '2019-12-26 17:48:12', 1178634832995377153, NULL, NULL);
INSERT INTO `app_carousel` VALUES (28, NULL, 'http://192.168.101.184:8881//uploads/2019-12/71c4d-686a-4462-b.jpg', NULL, NULL, NULL, 'HOME_TOP', NULL, 'N', NULL, '2019-12-31 10:33:46', 1178634832995377153, NULL, NULL);

-- ----------------------------
-- Table structure for app_declares
-- ----------------------------
DROP TABLE IF EXISTS `app_declares`;
CREATE TABLE `app_declares`  (
  `declare_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`declare_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '免责申明表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_declares
-- ----------------------------
INSERT INTO `app_declares` VALUES (1, '<p> 俾斯麦曾经说过, 对于不屈不挠的人来说，没有失败这回事。我希望诸位也能好好地体会这句话. 带着这些问题, 我们来审视一下用户协议. 用户协议因何而发生?我认为, 总结的来说, 马尔顿在不经意间这样说过, 坚强的信心，能使平凡的人做出惊人的事业。这启发了我用户协议因何而发生?生活中, 若用户协议出现了, 我们就不得不考虑它出现了的事实. 既然如何, 经过上述讨论就我个人来说, 用户协议对我的意义, 不能不说非常重大. 而这些并不是完全重要, 更加重要的问题是, 我认为, 生活中, 若用户协议出现了, 我们就不得不考虑它出现了的事实. 一般来说, . </p><p>    我认为, 歌德曾经说过, 决定一个人的一生，以及整个命运的，只是一瞬之间。这不禁令我深思康德曾经说过, 既然我已经踏上这条道路，那么，任何东西都不应妨碍我沿着这条路走下去。这不禁令我深思这种事实对本人来说意义重大, 相信对这个世界也是有一定意义的.. </p><p>    . </p><p>    带着这些问题, 我们来审视一下用户协议. 生活中, 若用户协议出现了, 我们就不得不考虑它出现了的事实. 现在, 解决用户协议的问题, 是非常非常重要的. 所以, 每个人都不得不面对这些问题.  在面对这种问题时, 佚名在不经意间这样说过, 感激每一个新的挑战，因为它会锻造你的意志和品格。这不禁令我深思既然如此, 佚名曾经说过, 感激每一个新的挑战，因为它会锻造你的意志和品格。这不禁令我深思. </p>', NULL, 'N', NULL, NULL, NULL, '2019-12-09 12:02:07', 1178634832995377153);

-- ----------------------------
-- Table structure for app_member
-- ----------------------------
DROP TABLE IF EXISTS `app_member`;
CREATE TABLE `app_member`  (
  `member_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `phone` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '手机号码',
  `uid` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'uid',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '用户类型(0:临时用户 1:会员 2:矿主 3：大矿主 4：超级矿主） ',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '密码',
  `area` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '手机号码属于0：国内 1：国外',
  `salt` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '密码加盐',
  `pay_password` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '交易密码',
  `pay_salt` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '交易密码加盐',
  `invite_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '邀请码',
  `parent_referee_id` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '用户关系链',
  `referee_id` bigint(20) NULL DEFAULT NULL COMMENT '推荐人',
  `mnemonic` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '助记词（备用）',
  `login_equipment` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '登录设备（备用）',
  `mall_points` decimal(18, 5) NULL DEFAULT 0.00000 COMMENT '累计收益（备用）',
  `rest_day` bigint(20) NULL DEFAULT NULL COMMENT '算力剩余天数',
  `state` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '系统是否修改过用户类型0：否 1：是',
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '昵称',
  `real_status` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '是否实名认证0：否 1：是 2 :审核中',
  `area_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '区号',
  `failure_sign` bigint(11) NULL DEFAULT 0 COMMENT '登录失败记录',
  `head` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '头像',
  `points` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '是否开通积分划转(0:否 1：是）',
  `real_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '真实姓名',
  `last_login` datetime(0) NULL DEFAULT NULL COMMENT '最近一次登录',
  `register_time` datetime(0) NULL DEFAULT NULL COMMENT '注册时间',
  `direct_rate` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '直推比例（备用）',
  `team_rate` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '团队比例（备用）',
  `province_id` bigint(20) NULL DEFAULT NULL COMMENT '省',
  `city_id` bigint(20) NULL DEFAULT NULL COMMENT '市',
  `area_id` bigint(20) NULL DEFAULT NULL COMMENT '区',
  `province_proxy` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '是否省代理（0：否 1：是）',
  `province_proxy_id` bigint(20) NULL DEFAULT NULL COMMENT '代理省id',
  `city_proxy` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '是否市代理（0：否 1：是）',
  `city_proxy_id` bigint(20) NULL DEFAULT NULL COMMENT '代理市id',
  `area_id_proxy` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '是否区/县代理（0：否 1：是）',
  `area_id_proxy_id` bigint(20) NULL DEFAULT NULL COMMENT '代理区/县id',
  `director` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '是否理事（0：否 1：是',
  `cooperation` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '是否合创(0:否 1：是）',
  `version` bigint(20) NULL DEFAULT 1 COMMENT '版本号',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Y' COMMENT '状态(字典)(启用-Y：禁用-N)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志(Y:删除 N:未删除）',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`member_id`) USING BTREE,
  UNIQUE INDEX `un_phone`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 720 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_member
-- ----------------------------
INSERT INTO `app_member` VALUES (714, '13500001111', 'AAAAAAA', '0', '494f71c028ce36b5b69150b7e0dab79c', '', 'qfhwu', 'e44f9b0c7afce4f7b4901659485f1734', 'co7hp', 'AAAA2222', '/', NULL, '', '', 0.00000, NULL, '0', NULL, '0', '86', 0, '/uploads/2019-12/1577758820495640.png', '1', '0', '2020-01-02 11:33:15', '2019-12-19 15:11:20', NULL, NULL, 1, 4, 10, '0', NULL, '0', NULL, '0', NULL, '0', '0', 1, 'Y', 'N', NULL, NULL, NULL, '2020-01-02 11:33:15', 714);
INSERT INTO `app_member` VALUES (715, '13500002222', '73594925', '0', '494f71c028ce36b5b69150b7e0dab79c', '', 'qfhwu', 'e44f9b0c7afce4f7b4901659485f1734', 'co7hp', '0D90U983', '/714/', 714, '', '', 0.00000, NULL, '0', NULL, '0', '86', 0, '/uploads/2019-12/mini.jpg', '0', '0', '2019-12-31 11:49:45', '2019-12-09 11:41:47', NULL, NULL, 1, 4, 10, '0', NULL, '0', NULL, '0', NULL, '0', '0', 1, 'Y', 'N', NULL, '2019-12-09 11:41:47', -1, '2019-12-31 11:57:04', 1178634832995377153);
INSERT INTO `app_member` VALUES (716, '13500003333', 'pobpq6', '0', 'ea355ee3840f4c9264eb8035d4683f2c', '', 'upbz5', '6da361cce38fa550d61843c0e47bb96d', 'lxl1g', 'JLHM45P0', '/714/', 714, '', '', 0.00000, NULL, '0', NULL, '0', '86', 0, '/uploads/2019-12/96243-1471-4bed-a.jpeg', '0', '0', '2019-12-30 16:59:03', '2019-12-12 10:53:58', NULL, NULL, 1, 4, 10, '0', NULL, '0', NULL, '0', NULL, '0', '0', 1, 'Y', 'N', NULL, '2019-12-12 10:53:58', -1, '2019-12-31 17:22:33', 1178634832995377153);
INSERT INTO `app_member` VALUES (717, '13500004444', '6666222', '0', '2db85c25106dd2c4551ea45c24a0f0b8', '', 't9dm8', '16655e7e985bf8346daf5d0fa7dd8066', '4y462', 'CUDJAWO4', '/714/', 714, '', '', 0.00000, NULL, '0', NULL, '0', '86', 0, '/uploads/2019-12/201912311611095050.png', '1', '0', '2020-01-02 14:11:38', '2019-12-19 16:09:01', NULL, NULL, 1, 4, 10, '0', NULL, '0', NULL, '0', NULL, '0', '0', 1, 'Y', 'N', NULL, '2019-12-19 16:09:01', -1, '2020-01-02 14:11:38', 717);
INSERT INTO `app_member` VALUES (718, '13500005555', 'xga5lu', '0', '4b56476eae4557d1bcbd5de962734b80', '', 'abzte', '', '', 'DQVK63OR', '/714/', 714, '', '', 0.00000, NULL, '0', NULL, '0', '86', 0, '', '0', '0', NULL, '2019-12-19 16:11:08', NULL, NULL, 1, 4, 10, '0', NULL, '0', NULL, '0', NULL, '0', '0', 1, 'Y', 'N', NULL, '2019-12-19 16:11:08', -1, '2019-12-31 11:56:57', 1178634832995377153);
INSERT INTO `app_member` VALUES (719, '13500006666', '670gvh', '0', '696e938b8ffba84b20c032f846541da6', '', 'mhcd4', '', '', 'QUPLDQ3W', '/714/', 714, '', '', 0.00000, NULL, '0', NULL, '0', '86', 0, '', '0', '0', NULL, '2019-12-27 09:40:06', NULL, NULL, 1, 4, 10, '0', NULL, '0', NULL, '0', NULL, '0', '0', 1, 'Y', 'N', NULL, '2019-12-27 09:40:07', -1, '2019-12-31 11:56:51', 1178634832995377153);

-- ----------------------------
-- Table structure for app_merchant
-- ----------------------------
DROP TABLE IF EXISTS `app_merchant`;
CREATE TABLE `app_merchant`  (
  `merchant_id` bigint(20) NOT NULL COMMENT '主键id',
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户唯一的openid',
  `head` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `account` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商户key',
  `salt` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'md5密码盐',
  `merchant_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商户名称',
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `total_price` decimal(10, 3) NULL DEFAULT 0.000 COMMENT '用户余额',
  `rate` double(5, 2) NULL DEFAULT NULL COMMENT '手续费率',
  `birthday` datetime(0) NULL DEFAULT NULL COMMENT '生日',
  `sex` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别(字典)',
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员等级',
  `country` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在国家',
  `province` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份',
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市',
  `language` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '语种',
  `register_time` datetime(0) NULL DEFAULT NULL COMMENT '授权日期',
  `last_login` datetime(0) NULL DEFAULT NULL COMMENT '最近一次登录时间',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Y' COMMENT '状态(启用)',
  `del_flag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注-商户链接',
  `promotion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个人推广码',
  `invite` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '他人邀请码',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '短信验证码',
  `withdraw` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '提现密码',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`merchant_id`) USING BTREE,
  UNIQUE INDEX `openid`(`openid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for app_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `app_operation_log`;
CREATE TABLE `app_operation_log`  (
  `operation_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `log_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '日志类型(字典)',
  `log_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '日志名称',
  `user_id` bigint(65) NULL DEFAULT NULL COMMENT '用户id',
  `class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '类名称',
  `method` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '方法名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `succeed` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否成功(字典)',
  `message` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '备注',
  PRIMARY KEY (`operation_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '操作日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for app_version
-- ----------------------------
DROP TABLE IF EXISTS `app_version`;
CREATE TABLE `app_version`  (
  `app_version_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '版本类型',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`app_version_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'app版本' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_version
-- ----------------------------
INSERT INTO `app_version` VALUES (7, '1.0.0', '更新', 'https://fir.im/aa', 'IOS', NULL, 'N', 'IOS最新版本', '2019-09-02 16:24:57', NULL, '2019-09-04 19:10:57', 1);
INSERT INTO `app_version` VALUES (8, '1.0.0', '版本更新', 'https://fir.im/bb', 'ANDROID', NULL, 'N', 'Android最新版本', '2019-09-02 16:24:59', NULL, '2019-09-12 16:33:28', 1);

-- ----------------------------
-- Table structure for chain_coin
-- ----------------------------
DROP TABLE IF EXISTS `chain_coin`;
CREATE TABLE `chain_coin`  (
  `chain_coin_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '币地址id',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '币地址',
  `member_id` bigint(20) NOT NULL COMMENT '用户ID',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`chain_coin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '币地址表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chain_public
-- ----------------------------
DROP TABLE IF EXISTS `chain_public`;
CREATE TABLE `chain_public`  (
  `public_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '提币单号',
  `to_address` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '提币地址',
  `coin` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '提币币种',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '提币币种类型',
  `price` decimal(18, 6) NULL DEFAULT 0.000000 COMMENT '提币数量',
  `tx_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'hash值',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典) 0：提币中 1：已完成 2:未完成',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`public_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '公账提币' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chain_recharge
-- ----------------------------
DROP TABLE IF EXISTS `chain_recharge`;
CREATE TABLE `chain_recharge`  (
  `recharge_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '充值',
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '单号',
  `member_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `price` decimal(18, 5) NULL DEFAULT 0.00000 COMMENT '金额',
  `actual_price` decimal(18, 5) NULL DEFAULT 0.00000 COMMENT '实际金额',
  `recharge_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  `from_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  `tx_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '唯一标识',
  `type` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '币种',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`recharge_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '区块钱包充值表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chain_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `chain_withdraw`;
CREATE TABLE `chain_withdraw`  (
  `withdraw_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '单号',
  `member_id` bigint(20) NULL DEFAULT NULL COMMENT '用户',
  `price` decimal(18, 5) NULL DEFAULT 0.00000 COMMENT '提现数量',
  `actual_price` decimal(18, 5) NULL DEFAULT 0.00000 COMMENT '实际金额',
  `fee` decimal(18, 5) NULL DEFAULT NULL COMMENT '手续费',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '提币币种',
  `to_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '地址',
  `tx_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '哈希值',
  `response` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '返回信息',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`withdraw_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '区块钱包提现表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chain_withdraw
-- ----------------------------
INSERT INTO `chain_withdraw` VALUES (5, 'CW1577773536475f902375', 717, 1.00000, 0.99990, 0.00010, 'BTC', '123456', '', NULL, 'CHECK', 'N', NULL, '2019-12-31 14:25:36', 717, NULL, NULL);

-- ----------------------------
-- Table structure for com_article
-- ----------------------------
DROP TABLE IF EXISTS `com_article`;
CREATE TABLE `com_article`  (
  `article_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '平台文章表',
  `article_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章类型（实验室法检图文、实验室快检图文）',
  `main_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主图',
  `sub_img` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '子图JSON',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`article_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of com_article
-- ----------------------------
INSERT INTO `com_article` VALUES (1, 'POW', NULL, NULL, '矿场介绍', '<p>入门操作内容</p><p><br></p><p><br></p><p>发的说法三fsafsdf</p><p><br></p><p>发生大飞升等级哦iasjfoij<img src=\"http://192.168.101.184:8881/uploads/2019-12/0a9ed-493f-4f62-9.jpg\" alt=\"11.jpg\"></p><p><br></p><p>发生的加速地基奥is精品·1</p><p><br></p><p><br></p><p><br></p><p>防水嗲就是的佛教四</p><p><br></p><p><br></p>', NULL, 'N', NULL, '2019-12-10 14:30:18', 1, '2019-12-09 15:46:24', 1);
INSERT INTO `com_article` VALUES (3, 'SCHOOL', NULL, NULL, '商学院', '<p>    老子曾经说过, 知人者智，自知者明。胜人者有力，自胜者强。这句话语虽然很短, 但令我浮想联翩. 既然如何, 既然如何, 一般来讲, 我们都必须务必慎重的考虑考虑. 生活中, 若商学院出现了, 我们就不得不考虑它出现了的事实. 商学院因何而发生?既然如何, 了解清楚商学院到底是一种怎么样的存在, 是解决一切问题的关键.每个人都不得不面对这些问题.  在面对这种问题时, 马尔顿在不经意间这样说过, 坚强的信心，能使平凡的人做出惊人的事业。这不禁令我深思马克思曾经说过, 一切节省，归根到底都归结为时间的节省。这启发了我我们不得不面对一个非常尴尬的事实, 那就是, 就我个人来说, 商学院对我的意义, 不能不说非常重大. . </p><p>    一般来说, 我们不得不面对一个非常尴尬的事实, 那就是, 要想清楚, 商学院, 到底是一种怎么样的存在. 斯宾诺莎曾经说过, 最大的骄傲于最大的自卑都表示心灵的最软弱无力。带着这句话, 我们还要更加慎重的审视这个问题: 既然如何, 那么, 我们不得不面对一个非常尴尬的事实, 那就是, 而这些并不是完全重要, 更加重要的问题是, 所谓商学院, 关键是商学院需要如何写. 我们不得不面对一个非常尴尬的事实, 那就是, 我们都知道, 只要有意义, 那么就必须慎重考虑.既然如此, 裴斯泰洛齐曾经说过, 今天应做的事没有做，明天再早也是耽误了。我希望诸位也能好好地体会这句话. 要想清楚, 商学院, 到底是一种怎么样的存在. 我们都知道, 只要有意义, 那么就必须慎重考虑.商学院因何而发生?总结的来说, 所谓商学院, 关键是商学院需要如何写. 商学院, 到底应该如何实现. 我们一般认为, 抓住了问题的关键, 其他一切则会迎刃而解.问题的关键究竟为何? 我认为, 就我个人来说, 商学院对我的意义, 不能不说非常重大. 商学院, 到底应该如何实现. 商学院, 发生了会如何, 不发生又会如何. 商学院因何而发生?塞涅卡在不经意间这样说过, 生命如同寓言，其价值不在与长短，而在与内容。这启发了我一般来讲, 我们都必须务必慎重的考虑考虑. 生活中, 若商学院出现了, 我们就不得不考虑它出现了的事实. 莎士比亚在不经意间这样说过, 意志命运往往背道而驰，决心到最后会全部推倒。这不禁令我深思易卜生在不经意间这样说过, 伟大的事业，需要决心，能力，组织和责任感。这启发了我. </p><p>    一般来讲, 我们都必须务必慎重的考虑考虑. . </p><p>    . <img src=\"http://192.168.101.184:8881//uploads/2019-12/a9de8-3732-4f33-9.jpg\" alt=\"12795880_110914420143_2.jpg\"></p>', NULL, 'N', NULL, '2019-12-10 14:30:18', NULL, '2019-12-10 14:29:32', 1178634832995377153);
INSERT INTO `com_article` VALUES (4, 'ABOUT_US', NULL, NULL, '关于我们', '<p>就我个人来说, 关于我们对我的意义, 不能不说非常重大. 我们不得不面对一个非常尴尬的事实, 那就是, 带着这些问题, 我们来审视一下关于我们. 这种事实对本人来说意义重大, 相信对这个世界也是有一定意义的.一般来说, 关于我们的发生, 到底需要如何做到, 不关于我们的发生, 又会如何产生. 这种事实对本人来说意义重大, 相信对这个世界也是有一定意义的.生活中, 若关于我们出现了, 我们就不得不考虑它出现了的事实. 本人也是经过了深思熟虑,在每个日日夜夜思考这个问题. 我们都知道, 只要有意义, 那么就必须慎重考虑.我们不得不面对一个非常尴尬的事实, 那就是, 带着这些问题, 我们来审视一下关于我们. 就我个人来说, 关于我们对我的意义, 不能不说非常重大. 了解清楚关于我们到底是一种怎么样的存在, 是解决一切问题的关键.我们都知道, 只要有意义, 那么就必须慎重考虑.总结的来说, 现在, 解决关于我们的问题, 是非常非常重要的. 所以, 关于我们, 到底应该如何实现. 经过上述讨论一般来讲, 我们都必须务必慎重的考虑考虑. 既然如此, 现在, 解决关于我们的问题, 是非常非常重要的. 所以, 在这种困难的抉择下, 本人思来想去, 寝食难安.关于我们, 发生了会如何, 不发生又会如何. 那么, 所谓关于我们, 关键是关于我们需要如何写. 苏轼曾经说过, 古之立大事者，不惟有超世之才，亦必有坚忍不拔之志。这句话语虽然很短, 但令我浮想联翩. 拿破仑·希尔曾经说过, 不要等待，时机永远不会恰到好处。这启发了我每个人都不得不面对这些问题.  在面对这种问题时, 我们不得不面对一个非常尴尬的事实, 那就是, 在这种困难的抉择下, 本人思来想去, 寝食难安.一般来说, 现在, 解决关于我们的问题, 是非常非常重要的. 所以, 既然如此, 本人也是经过了深思熟虑,在每个日日夜夜思考这个问题. 这种事实对本人来说意义重大, 相信对这个世界也是有一定意义的.既然如此, 希腊在不经意间这样说过, 最困难的事情就是认识自己。我希望诸位也能好好地体会这句话. 了解清楚关于我们到底是一种怎么样的存在, 是解决一切问题的关键.我们都知道, 只要有意义, 那么就必须慎重考虑.那么, 关于我们的发生, 到底需要如何做到, 不关于我们的发生, 又会如何产生. 爱迪生在不经意间这样说过, 失败也是我需要的，它和成功对我一样有价值。带着这句话, 我们还要更加慎重的审视这个问题: 我们不得不面对一个非常尴尬的事实, 那就是, 我认为, 我们都知道, 只要有意义, 那么就必须慎重考虑.在这种困难的抉择下, 本人思来想去, 寝食难安.既然如何, 我们都知道, 只要有意义, 那么就必须慎重考虑.我们一般认为, 抓住了问题的关键, 其他一切则会迎刃而解.问题的关键究竟为何? 池田大作在不经意间这样说过, 不要回避苦恼和困难，挺起身来向它挑战，进而克服它。这不禁令我深思塞涅卡曾经说过, 真正的人生，只有在经过艰难卓绝的斗争之后才能实现。这句话语虽然很短, 但令我浮想联翩. 关于我们因何而发生?现在, 解决关于我们的问题, 是非常非常重要的. 所以, 歌德曾经说过, 决定一个人的一生，以及整个命运的，只是一瞬之间。带着这句话, 我们还要更加慎重的审视这个问题: 那么, 就我个人来说, 关于我们对我的意义, 不能不说非常重大. 既然如此, 一般来说, . </p><p>    要想清楚, 关于我们, 到底是一种怎么样的存在. 拉罗什夫科曾经说过, 取得成就时坚持不懈，要比遭到失败时顽强不屈更重要。这句话语虽然很短, 但令我浮想联翩. 而这些并不是完全重要, 更加重要的问题是, 在这种困难的抉择下, 本人思来想去, 寝食难安.. </p><p><img src=\"http://192.168.101.184:8881//uploads/2019-12/e31b8-9f97-4c35-b.jpg\" alt=\"222-min.jpg\"><br></p>', NULL, 'N', NULL, '2019-12-10 14:30:20', NULL, '2019-12-10 14:30:10', 1178634832995377153);

-- ----------------------------
-- Table structure for com_bank
-- ----------------------------
DROP TABLE IF EXISTS `com_bank`;
CREATE TABLE `com_bank`  (
  `bank_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '银行名',
  `short_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '缩写',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Y' COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`bank_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '银行表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of com_bank
-- ----------------------------
INSERT INTO `com_bank` VALUES (1, 'B10001', '中国工商银行', NULL, 'Y', 'N', NULL, '2019-08-29 14:16:02', -1, NULL, NULL);
INSERT INTO `com_bank` VALUES (2, 'B10002', '中国农业银行', NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_bank` VALUES (3, 'B10003', '中国建设银行', NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_bank` VALUES (4, 'B10004', '中国邮政储蓄银行', NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_bank` VALUES (5, 'B1568184346405007b732', '北京银行t', NULL, 'Y', 'N', NULL, '2019-09-11 14:45:46', 1, '2019-09-11 14:50:16', 1);
INSERT INTO `com_bank` VALUES (6, 'B1568184688956ce91ff5', '浦发银行', NULL, 'Y', 'Y', NULL, '2019-09-11 14:51:29', 1, '2019-09-11 14:51:34', 1);

-- ----------------------------
-- Table structure for com_business
-- ----------------------------
DROP TABLE IF EXISTS `com_business`;
CREATE TABLE `com_business`  (
  `business_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '行业资讯表',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章类型',
  `main_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主图',
  `sub_img` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '子图JSON',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`business_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '行业资讯表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of com_business
-- ----------------------------
INSERT INTO `com_business` VALUES (1, '', 'http://192.168.101.184:8881//uploads/2019-12/1d5bc-f083-40f1-a.jpg', NULL, '嘎嘎嘎嘎嘎', '<p>入门操作内容</p><p><br></p><p><br></p><p>发的说法三fsafsdf<img src=\"http://192.168.101.184:8881//uploads/2019-12/20c47-c038-404e-a.jpg\" alt=\"003.jpg\"></p><p><br></p><p>发生大飞升等级哦iasjfoij<img src=\"http://192.168.101.184:8881/uploads/2019-12/0a9ed-493f-4f62-9.jpg\" alt=\"11.jpg\"></p><p><br></p><p><img src=\"http://192.168.101.184:8881//uploads/2019-12/07dd7-c96e-4471-a.jpg\" alt=\"002.jpg\"><span style=\"text-align: justify;\">本人也是经过了深思熟虑，在每个日日夜夜思考这个问题。 对我个人而言，科学和人文谁更有意义不仅仅是一个重大的事件，还可能会改变我的人生。 在这种困难的抉择下，本人思来想去，寝食难安。 带着这些问题，我们来审视一下科学和人文谁更有意义。 本人也是经过了深思熟虑，在每个日日夜夜思考这个问题。 了解清楚科学和人文谁更有意义到底是一种怎么样的存在，是解决一切问题的关键。 叔本华曾经说过，意志是一个强壮的盲人，倚靠在明眼的跛子肩上。这启发了我， 每个人都不得不面对这些问题。 在面对这种问题时， 在这种困难的抉择下，本人思来想去，寝食难安。 我们不得不面对一个非常尴尬的事实，那就是， 所谓科学和人文谁更有意义，关键是科学和人文谁更有意义需要如何写。 一般来说。</span></p><p><br></p><p><br></p><p><br></p><p>防水嗲就是的佛教四</p><p><br></p><p><br></p>', NULL, 'N', '人民网', '2019-08-16 15:18:06', 1, '2019-12-26 16:22:44', 1178634832995377153);
INSERT INTO `com_business` VALUES (3, NULL, 'http://192.168.101.184:8881//uploads/2019-12/287d4-ee1f-424f-9.jpg', NULL, '计算', '<img src=\"http://192.168.101.184:8881//uploads/2019-12/4d82e-ba3a-498b-b.jpg\" alt=\"222-min.jpg\">我们都知道，只要有意义，那么就必须慎重考虑。 科学和人文谁更有意义因何而发生？ 就我个人来说，科学和人文谁更有意义对我的意义，不能不说非常重大。 科学和人文谁更有意义，发生了会如何，不发生又会如何。 我们都知道，只要有意义，那么就必须慎重考虑。 带着这些问题，我们来审视一下科学和人文谁更有意义。 从这个角度来看， 贝多芬曾经说过，卓越的人一大优点是：在不利与艰难的遭遇里百折不饶。这不禁令我深思。 我们都知道，只要有意义，那么就必须慎重考虑。 我们不得不面对一个非常尴尬的事实，那就是， 卡耐基说过一句富有哲理的话，我们若已接受最坏的，就再没有什么损失。带着这句话，我们还要更加慎重的审视这个问题： 歌德在不经意间这样说过，决定一个人的一生，以及整个命运的，只是一瞬之间。带着这句话，我们还要更加慎重的审视这个问题： 在这种困难的抉择下，本人思来想去，寝食难安。 我认为， 这样看来， 本人也是经过了深思熟虑，在每个日日夜夜思考这个问题。<img src=\"http://192.168.101.184:8881//uploads/2019-12/64db1-3fc7-469d-a.jpg\" alt=\"11.jpg\">', NULL, 'N', 'ss', '2019-12-26 15:43:56', 1178634832995377153, '2019-12-26 16:21:58', 1178634832995377153);
INSERT INTO `com_business` VALUES (4, NULL, 'http://192.168.101.184:8881//uploads/2019-12/9d0b9-f7f1-41bb-a.jpg', NULL, '标题1', '<p><img src=\"http://192.168.101.184:8881//uploads/2019-12/e31f4-f24a-4017-a.jpg\" alt=\"222-min.jpg\"></p><p><span style=\"text-align: justify;\">黑格尔曾经提到过，只有永远躺在泥坑里的人，才不会再掉进坑里。我希望诸位也能好好地体会这句话。 现在，解决科学和人文谁更有意义的问题，是非常非常重要的。 所以， 这样看来， 科学和人文谁更有意义的发生，到底需要如何做到，不科学和人文谁更有意义的发生，又会如何产生。 本人也是经过了深思熟虑，在每个日日夜夜思考这个问题。 这样看来， 一般来讲，我们都必须务必慎重的考虑考虑。 一般来说， 普列姆昌德曾经提到过，希望的灯一旦熄灭，生活刹那间变成了一片黑暗。这似乎解答了我的疑惑。 既然如此， 斯宾诺莎在不经意间这样说过，最大的骄傲于最大的自卑都表示心灵的最软弱无力。带着这句话，我们还要更加慎重的审视这个问题： 所谓科学和人文谁更有意义，关键是科学和人文谁更有意义需要如何写。 这样看来， 西班牙曾经说过，自知之明是最难得的知识。这似乎解答了我的疑惑。 对我个人而言，科学和人文谁更有意义不仅仅是一个重大的事件，还可能会改变我的人生。 总结的来说。</span></p><p><span style=\"text-align: justify;\"><br></span></p><p><span style=\"text-align: justify;\"><br></span></p>', NULL, 'N', 'ff', '2019-12-26 15:55:05', 1178634832995377153, NULL, NULL);

-- ----------------------------
-- Table structure for com_check_in
-- ----------------------------
DROP TABLE IF EXISTS `com_check_in`;
CREATE TABLE `com_check_in`  (
  `check_in_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '签到id',
  `member_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`check_in_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '签到表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of com_check_in
-- ----------------------------
INSERT INTO `com_check_in` VALUES (21, 714, NULL, 'N', NULL, '2019-12-31 11:57:53', 714, NULL, NULL);

-- ----------------------------
-- Table structure for com_company
-- ----------------------------
DROP TABLE IF EXISTS `com_company`;
CREATE TABLE `com_company`  (
  `company_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司编码',
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司详细名称',
  `short_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司简称',
  `en_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文详细名称',
  `en_short` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文简称',
  `company_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司性质（有限责任公司和股份有限公司）',
  `ranges` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经营范围',
  `license` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '营业执照',
  `engraved` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '印章',
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开户行账户',
  `account_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开户人',
  `bank_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开户行',
  `branch_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支行',
  `register_time` datetime(0) NULL DEFAULT NULL COMMENT '注册日期',
  `legal` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法人',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `detail_address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `logo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'logo',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`company_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '平台公司表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of com_company
-- ----------------------------
INSERT INTO `com_company` VALUES (1, 'P10001', 'xxxx有限公司', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5421002020029875441', NULL, '建设银行', '中国建设银行支行', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, '2019-09-11 15:08:52', NULL, '2019-09-30 20:37:03', 1178634832995377153);

-- ----------------------------
-- Table structure for com_media
-- ----------------------------
DROP TABLE IF EXISTS `com_media`;
CREATE TABLE `com_media`  (
  `media_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '多媒体资料id',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接地址',
  `img` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型(VIDEO:视频 AUDIO:语音）',
  `sort` bigint(20) NULL DEFAULT NULL COMMENT '排序',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`media_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '多媒体资料' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of com_media
-- ----------------------------
INSERT INTO `com_media` VALUES (1, '视频名称001', 'sss', 'http://192.168.101.184:8881/uploads/2019-12/20191210_164754.mp4', 'http://58.82.235.28:8080/uploads/2019-10/tujian_zhong.png', 'VIDEO', 1, NULL, 'N', NULL, '2019-12-10 15:38:18', 1178634832995377153, NULL, NULL);
INSERT INTO `com_media` VALUES (2, '音频001', '升水', 'http://192.168.101.184:8881/uploads/2019-12/didong.mp3', 'http://58.82.235.28:8080/uploads/2019-10/tujian_zhong.png', 'AUDIO', 1, NULL, 'N', NULL, '2019-12-10 15:39:00', 1178634832995377153, NULL, NULL);
INSERT INTO `com_media` VALUES (3, '视频名称002', 'sd', 'http://192.168.101.184:8881/uploads/2019-12/20191210_164754.mp4', 'http://58.82.235.28:8080/uploads/2019-10/tujian_zhong.png', 'VIDEO', 1, NULL, 'N', NULL, NULL, NULL, '2019-12-26 18:03:51', 1178634832995377153);
INSERT INTO `com_media` VALUES (4, '音频002', '升水', 'http://192.168.101.184:8881/uploads/2019-12/yinxiao945.mp3', 'http://58.82.235.28:8080/uploads/2019-10/tujian_zhong.png', 'AUDIO', 1, NULL, 'N', NULL, '2019-12-10 15:39:00', 1178634832995377153, NULL, NULL);
INSERT INTO `com_media` VALUES (5, 'sss', NULL, '', NULL, 'AUDIO', NULL, NULL, 'Y', NULL, '2019-12-26 18:29:49', 1178634832995377153, '2019-12-26 18:32:11', 1178634832995377153);
INSERT INTO `com_media` VALUES (6, '假日福利', NULL, 'http://192.168.101.184:8881//uploads/2019-12/02c80-0ef2-47aa-b.mp3', NULL, 'AUDIO', NULL, NULL, 'N', NULL, '2019-12-26 18:32:07', 1178634832995377153, NULL, NULL);

-- ----------------------------
-- Table structure for com_news
-- ----------------------------
DROP TABLE IF EXISTS `com_news`;
CREATE TABLE `com_news`  (
  `carousel_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '轮播图表',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接（预留）',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `sort` bigint(20) NULL DEFAULT NULL COMMENT '排序',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`carousel_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of com_news
-- ----------------------------
INSERT INTO `com_news` VALUES (29, '1', NULL, NULL, '这是白龙马公告', NULL, NULL, 'N', NULL, '2019-09-05 10:25:08', 1162185426314104833, NULL, NULL);
INSERT INTO `com_news` VALUES (30, '2', NULL, NULL, '这只是一条白龙马的公告', NULL, NULL, 'N', NULL, '2019-09-05 10:25:27', 1162185426314104833, NULL, NULL);
INSERT INTO `com_news` VALUES (34, 'ee', NULL, NULL, '首次登录成功后，需立马上传一个收款码，并且后台客服进行人工校验码的真实性\n  上传并校验成功后，由临时会员转为正式会员\n  如未上传，则每次登录均提示需要上传收款码，且不能跳转其他页面\n  如处于校验', NULL, NULL, 'N', NULL, '2019-09-12 15:41:50', 1, NULL, NULL);

-- ----------------------------
-- Table structure for com_phone_code
-- ----------------------------
DROP TABLE IF EXISTS `com_phone_code`;
CREATE TABLE `com_phone_code`  (
  `phone_code_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `country` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '国家',
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '区号',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '类型 0：国内 1：国外',
  `area` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '所在区域',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`phone_code_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '电话区号表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of com_phone_code
-- ----------------------------
INSERT INTO `com_phone_code` VALUES (1, 'China', '86', '0', '北京', NULL, 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_phone_code` VALUES (2, 'Korea', '82', '1', '首尔', NULL, 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_phone_code` VALUES (3, 'English', '01', '1', '美国', NULL, 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_phone_code` VALUES (4, 'Japan', '81', '1', '东京', NULL, 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_phone_code` VALUES (5, 'Thailand', '66', '1', '泰国', NULL, 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_phone_code` VALUES (6, 'Malaysia', '60', '1', '马来西亚', NULL, 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_phone_code` VALUES (7, 'England', '44', '1', '英国', NULL, 'N', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for com_problem
-- ----------------------------
DROP TABLE IF EXISTS `com_problem`;
CREATE TABLE `com_problem`  (
  `problem_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '常见问题id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `img` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`problem_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '常见问题' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for com_region
-- ----------------------------
DROP TABLE IF EXISTS `com_region`;
CREATE TABLE `com_region`  (
  `region_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '地区表id',
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `parent_id` bigint(11) NULL DEFAULT NULL COMMENT '父级id',
  `short_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '缩写',
  `level_type` bigint(11) NULL DEFAULT NULL COMMENT '层级',
  `city_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `zip_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮编',
  `merger_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合称',
  `lng` float NULL DEFAULT NULL COMMENT '经度',
  `lat` float NULL DEFAULT NULL COMMENT '纬度',
  `pinyin` varchar(100) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL COMMENT '拼音',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '状态(是否开启代理Y:N)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`region_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '地区表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of com_region
-- ----------------------------
INSERT INTO `com_region` VALUES (1, '广东省', -1, '广东', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, '2019-12-26 19:39:52', 1178634832995377153);
INSERT INTO `com_region` VALUES (2, '山东省', -1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_region` VALUES (3, '北京', -1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_region` VALUES (4, '深圳市', 1, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_region` VALUES (5, '中山市', 1, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_region` VALUES (6, '佛山市', 1, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_region` VALUES (7, '烟台市', 2, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_region` VALUES (8, '青岛市', 2, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_region` VALUES (9, '北京市', 3, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_region` VALUES (10, '南山区', 4, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_region` VALUES (11, '龙岗区', 4, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_region` VALUES (12, '朝阳区', 9, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_region` VALUES (13, '江西省', -1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'N', NULL, '2019-12-26 19:51:17', 1178634832995377153, '2019-12-26 19:51:21', 1178634832995377153);
INSERT INTO `com_region` VALUES (14, '南昌市', 13, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'N', NULL, '2019-12-26 19:51:41', 1178634832995377153, '2019-12-30 16:51:58', 1178634832995377153);

-- ----------------------------
-- Table structure for com_shipping
-- ----------------------------
DROP TABLE IF EXISTS `com_shipping`;
CREATE TABLE `com_shipping`  (
  `shipping_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '收货地址id',
  `member_id` bigint(20) NOT NULL COMMENT '用户id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人姓名',
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货地址',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`shipping_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 176 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收货地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of com_shipping
-- ----------------------------
INSERT INTO `com_shipping` VALUES (168, 715, '张三', '13522224445', '嘿嘿嘿', NULL, 'N', NULL, '2019-12-10 21:15:06', 715, NULL, NULL);
INSERT INTO `com_shipping` VALUES (169, 716, '哈哈哈', '45825585558', '辣条拒绝看具体扣扣扣考虑来咯啦咯夸夸摸摸呢你哈87586855885', NULL, 'N', NULL, '2019-12-18 00:07:24', 716, '2019-12-18 00:12:24', 716);
INSERT INTO `com_shipping` VALUES (171, 717, '这些ZX中', '16675321723', '1', NULL, 'Y', NULL, '2019-12-27 14:41:23', 717, '2019-12-30 10:56:45', 717);
INSERT INTO `com_shipping` VALUES (172, 717, '1', '16675321723', '123344', NULL, 'Y', NULL, '2019-12-30 11:03:31', 717, '2019-12-30 11:03:37', 717);
INSERT INTO `com_shipping` VALUES (173, 717, '1', '16675321723', '1', NULL, 'Y', NULL, '2019-12-31 16:29:08', 717, '2019-12-31 16:29:13', 717);
INSERT INTO `com_shipping` VALUES (174, 717, '1', '16675321723', '1', NULL, 'Y', NULL, '2019-12-31 16:29:28', 717, '2019-12-31 16:29:48', 717);
INSERT INTO `com_shipping` VALUES (175, 717, '1', '16675321723', '1', NULL, 'N', NULL, '2019-12-31 16:29:57', 717, NULL, NULL);

-- ----------------------------
-- Table structure for com_sms
-- ----------------------------
DROP TABLE IF EXISTS `com_sms`;
CREATE TABLE `com_sms`  (
  `sms_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`sms_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '余额预警短信发送表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for com_svc_exception
-- ----------------------------
DROP TABLE IF EXISTS `com_svc_exception`;
CREATE TABLE `com_svc_exception`  (
  `svc_exception_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '异常id',
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常方法',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常信息',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详情内容',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`svc_exception_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '异常表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fin_cashflow
-- ----------------------------
DROP TABLE IF EXISTS `fin_cashflow`;
CREATE TABLE `fin_cashflow`  (
  `cashflow_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '流水id',
  `member_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `wallet_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账户类型（BTC、  T:算力、POINT:积分）',
  `flow_op` bigint(2) NULL DEFAULT NULL COMMENT '流水方向（1：流入(+)      0 :流出(-) ）',
  `flow_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流水类型',
  `item_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流水记录编码(备用）',
  `item_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称（备用）',
  `before_price` decimal(18, 6) NULL DEFAULT NULL COMMENT '变更前额度',
  `after_price` decimal(18, 2) NULL DEFAULT NULL COMMENT '变更后额度',
  `flow_price` decimal(18, 6) NULL DEFAULT 0.000000 COMMENT '流水金额',
  `flow_coin` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流水币种（BTC、  T:算力、POINT:积分）',
  `actual_price` decimal(18, 6) NULL DEFAULT 0.000000 COMMENT '实际金额',
  `actual_coin` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实际币种BTC、T:算力、POINT:积分）',
  `fee` decimal(18, 6) NULL DEFAULT 0.000000 COMMENT '手续费',
  `fee_coin` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手续费币种',
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流水来源',
  `from_id` bigint(20) NULL DEFAULT NULL COMMENT '来处',
  `to_id` bigint(20) NULL DEFAULT NULL COMMENT '去向',
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '明细（备用）',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`cashflow_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '现金流' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fin_cashflow
-- ----------------------------
INSERT INTO `fin_cashflow` VALUES (31, 714, 'POINT', 1, 'CHECK_IN', NULL, NULL, 0.000000, 1.00, 1.000000, 'POINT', 1.000000, 'POINT', 0.000000, 'POINT', NULL, -1, 714, NULL, NULL, 'N', NULL, '2019-12-31 11:57:53', 714, NULL, NULL);
INSERT INTO `fin_cashflow` VALUES (32, 714, 'POINT', 0, 'CONVERT_POINT', NULL, '6666222', 1.000000, 0.00, 1.000000, 'POINT', 1.000000, 'POINT', 0.000000, 'POINT', NULL, 714, 717, NULL, NULL, 'N', NULL, '2019-12-31 12:01:20', 714, NULL, NULL);
INSERT INTO `fin_cashflow` VALUES (33, 717, 'POINT', 1, 'CONVERT_POINT', NULL, '13500001111', 0.000000, 1.00, 1.000000, 'POINT', 1.000000, 'POINT', 0.000000, 'POINT', NULL, 714, 717, NULL, NULL, 'N', NULL, '2019-12-31 12:01:20', 717, NULL, NULL);
INSERT INTO `fin_cashflow` VALUES (34, 717, 'BTC', 1, 'PLATFORM_ADD', NULL, NULL, 0.000000, 200.00, 200.000000, 'BTC', 200.000000, 'BTC', 0.000000, 'BTC', NULL, -1, 717, NULL, NULL, 'N', NULL, '2019-12-31 14:22:17', 717, NULL, NULL);
INSERT INTO `fin_cashflow` VALUES (35, 717, 'BTC', 0, 'WITHDRAW', 'CW1577773536475f902375', 'fin_withdraw', 200.000000, 199.00, 1.000000, 'BTC', 0.999900, 'BTC', 0.000100, 'BTC', NULL, 717, -1, NULL, NULL, 'N', NULL, '2019-12-31 14:25:36', 717, NULL, NULL);

-- ----------------------------
-- Table structure for fin_pay_order
-- ----------------------------
DROP TABLE IF EXISTS `fin_pay_order`;
CREATE TABLE `fin_pay_order`  (
  `pay_order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `order_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `total_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '金额',
  `unit_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '单价',
  `number` bigint(20) NULL DEFAULT NULL COMMENT '数量',
  `actual_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '实际金额',
  `fee` decimal(10, 2) NULL DEFAULT NULL COMMENT '手续费',
  `pay_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付平台(微信、支付宝、银联)',
  `platform_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付流水号（第三方接口返回流水号）',
  `platform_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付状态（第三方接口返回状态）',
  `device` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付设备 IOS ANDROID',
  `close_time` datetime(0) NULL DEFAULT NULL COMMENT '订单关闭时间',
  `finish_time` datetime(0) NULL DEFAULT NULL COMMENT '订单完成时间',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`pay_order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '支付订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fin_pay_record
-- ----------------------------
DROP TABLE IF EXISTS `fin_pay_record`;
CREATE TABLE `fin_pay_record`  (
  `pay_record_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pay_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接口编码',
  `request_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求数据',
  `response_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '响应数据',
  `member_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`pay_record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '第三方支付接口记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fin_wallet
-- ----------------------------
DROP TABLE IF EXISTS `fin_wallet`;
CREATE TABLE `fin_wallet`  (
  `wallet_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NOT NULL COMMENT '用户id',
  `total_price` decimal(18, 6) NULL DEFAULT 0.000000 COMMENT '钱包总额',
  `return_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '平台返还总额（备用）',
  `ticket_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '消费券总额（备用）',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '类型：BTC、  T:算力、POINT:积分',
  `version` bigint(20) NULL DEFAULT 1 COMMENT '版本',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`wallet_id`) USING BTREE,
  UNIQUE INDEX `member_id_key`(`member_id`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户钱包账号表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fin_wallet
-- ----------------------------
INSERT INTO `fin_wallet` VALUES (9, 715, 0.000000, NULL, NULL, 'BTC', 1, NULL, 'N', NULL, '2019-12-30 16:36:30', 715, '2019-12-30 16:36:30', -1);
INSERT INTO `fin_wallet` VALUES (10, 715, 0.000000, NULL, NULL, 'T', 1, NULL, 'N', NULL, '2019-12-09 15:04:46', 715, NULL, NULL);
INSERT INTO `fin_wallet` VALUES (11, 715, 0.000000, NULL, NULL, 'POINT', 1, NULL, 'N', NULL, '2019-12-31 11:49:51', 715, '2019-12-31 11:49:51', 715);
INSERT INTO `fin_wallet` VALUES (12, 714, 0.000000, NULL, NULL, 'BTC', 1, NULL, 'N', NULL, '2019-12-19 17:33:59', 714, '2019-12-30 15:59:00', 1178634832995377153);
INSERT INTO `fin_wallet` VALUES (13, 714, 0.000000, NULL, NULL, 'T', 1, NULL, 'N', NULL, '2019-12-19 17:33:59', 714, NULL, NULL);
INSERT INTO `fin_wallet` VALUES (14, 714, 0.000000, NULL, NULL, 'POINT', 1, NULL, 'N', NULL, '2019-12-31 12:01:20', 714, '2019-12-31 12:01:20', 714);
INSERT INTO `fin_wallet` VALUES (15, 716, 0.000000, NULL, NULL, 'BTC', 1, NULL, 'N', NULL, '2019-12-20 10:34:40', 716, NULL, NULL);
INSERT INTO `fin_wallet` VALUES (16, 716, 0.000000, NULL, NULL, 'T', 1, NULL, 'N', NULL, '2019-12-20 10:34:40', 716, NULL, NULL);
INSERT INTO `fin_wallet` VALUES (17, 716, 0.000000, NULL, NULL, 'POINT', 1, NULL, 'N', NULL, '2019-12-26 09:38:21', 716, '2019-12-26 09:38:21', 716);
INSERT INTO `fin_wallet` VALUES (18, 717, 199.000000, NULL, NULL, 'BTC', 1, NULL, 'N', NULL, '2019-12-31 14:25:36', 717, '2019-12-31 14:25:36', 717);
INSERT INTO `fin_wallet` VALUES (19, 717, 0.000000, NULL, NULL, 'T', 1, NULL, 'N', NULL, '2019-12-23 17:26:08', 717, NULL, NULL);
INSERT INTO `fin_wallet` VALUES (20, 717, 1.000000, NULL, NULL, 'POINT', 1, NULL, 'N', NULL, '2019-12-31 12:01:20', 717, '2019-12-31 12:01:20', 714);

-- ----------------------------
-- Table structure for fin_wallet_history
-- ----------------------------
DROP TABLE IF EXISTS `fin_wallet_history`;
CREATE TABLE `fin_wallet_history`  (
  `wallet_history_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NOT NULL,
  `total_price` decimal(18, 3) NULL DEFAULT 0.000 COMMENT '钱包总额',
  `return_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '平台返还总额',
  `ticket_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '消费券总额',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'CNY' COMMENT '类型：BTC 、CNY:人民币、 POINT：积分',
  `version` bigint(20) NULL DEFAULT 1 COMMENT '版本',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`wallet_history_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户钱包表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fin_wallet_history
-- ----------------------------
INSERT INTO `fin_wallet_history` VALUES (29, 714, 0.000, NULL, NULL, 'POINT', 1, NULL, 'N', NULL, '2019-12-31 11:57:53', 714, '2019-12-31 11:57:53', 714);
INSERT INTO `fin_wallet_history` VALUES (30, 714, 1.000, NULL, NULL, 'POINT', 1, NULL, 'N', NULL, '2019-12-31 12:01:20', 714, '2019-12-31 12:01:20', 714);
INSERT INTO `fin_wallet_history` VALUES (31, 717, 0.000, NULL, NULL, 'POINT', 1, NULL, 'N', NULL, '2019-12-31 12:01:20', 717, '2019-12-31 12:01:20', 717);
INSERT INTO `fin_wallet_history` VALUES (32, 717, 0.000, NULL, NULL, 'BTC', 1, NULL, 'N', NULL, '2019-12-31 14:22:17', 717, '2019-12-31 14:22:17', 717);
INSERT INTO `fin_wallet_history` VALUES (33, 717, 200.000, NULL, NULL, 'BTC', 1, NULL, 'N', NULL, '2019-12-31 14:25:36', 717, '2019-12-31 14:25:36', 1178634832995377153);

-- ----------------------------
-- Table structure for gateway_define
-- ----------------------------
DROP TABLE IF EXISTS `gateway_define`;
CREATE TABLE `gateway_define`  (
  `gateway_define_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '网关定义id',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网关编码',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网关名称',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网关值',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)(OPEN-开放无日志 OPEN_LOG-开放且日志 CLOSE-关闭)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`gateway_define_id`) USING BTREE,
  UNIQUE INDEX `unkey`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '网关定义' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gateway_define
-- ----------------------------
INSERT INTO `gateway_define` VALUES (1, 'A10001', '测试', '/app/v1/personal/notifyUrl', 'OPEN', 'N', NULL, '2019-10-11 13:00:49', 1178634832995377153, NULL, NULL);
INSERT INTO `gateway_define` VALUES (2, 'A10002', 'ttest', '/app/v1/personal/notifyUrlBean', 'OPEN_LOG', 'N', NULL, '2019-10-11 14:39:49', 1178634832995377153, '2019-10-11 14:45:41', 1178634832995377153);
INSERT INTO `gateway_define` VALUES (3, 'A10003', 'test', 'ss', 'OPEN_LOG', 'N', NULL, '2019-10-11 14:45:09', 1178634832995377153, '2019-10-11 14:45:16', 1178634832995377153);

-- ----------------------------
-- Table structure for gateway_record
-- ----------------------------
DROP TABLE IF EXISTS `gateway_record`;
CREATE TABLE `gateway_record`  (
  `gateway_record_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '网关记录id',
  `interface_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接口编码',
  `request_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求参数',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`gateway_record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '网关记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gateway_record
-- ----------------------------
INSERT INTO `gateway_record` VALUES (60, 'A10002', '{\"str\":\"测试\"}', NULL, 'N', NULL, '2019-10-11 14:45:47', -1, NULL, NULL);

-- ----------------------------
-- Table structure for pro_contact
-- ----------------------------
DROP TABLE IF EXISTS `pro_contact`;
CREATE TABLE `pro_contact`  (
  `contact_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contact_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `start` datetime(0) NULL DEFAULT NULL COMMENT '上班时间',
  `end` datetime(0) NULL DEFAULT NULL COMMENT '下班时间',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`contact_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1150954379450773506 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客服联系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_contact
-- ----------------------------
INSERT INTO `pro_contact` VALUES (1150954379450773505, '刘某人', '12345', 'www.bai3u.com', 'ENABLE', 'dhfdsjjh', '1970-01-01 08:03:00', '1970-01-01 21:14:27', '2019-07-16 10:24:42', 1, '2019-12-31 14:15:18', 1178634832995377153);

-- ----------------------------
-- Table structure for quartz_task_errors
-- ----------------------------
DROP TABLE IF EXISTS `quartz_task_errors`;
CREATE TABLE `quartz_task_errors`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `taskExecuteRecordId` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务执行记录Id',
  `errorKey` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '信息关键字',
  `errorValue` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '信息内容',
  `createTime` bigint(13) NOT NULL COMMENT '创建时间',
  `lastModifyTime` bigint(13) NULL DEFAULT NULL COMMENT '最近修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1211315941205831682 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务出错现场信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quartz_task_errors
-- ----------------------------
INSERT INTO `quartz_task_errors` VALUES (1209081215845867522, '497', '10001:taskNo=10001http方式返回null', 'java.lang.RuntimeException: taskNo=10001http方式返回null\r\n	at cn.stylefeng.guns.modular.meta_data.job.QuartzMainJobFactory.execute(QuartzMainJobFactory.java:58)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', 1577102400160, 1577102400160);

-- ----------------------------
-- Table structure for quartz_task_informations
-- ----------------------------
DROP TABLE IF EXISTS `quartz_task_informations`;
CREATE TABLE `quartz_task_informations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL COMMENT '版本号：需要乐观锁控制',
  `taskNo` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务编号',
  `taskName` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `schedulerRule` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '定时规则表达式',
  `frozenStatus` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '冻结状态',
  `executorNo` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '执行方',
  `frozenTime` bigint(13) NULL DEFAULT NULL COMMENT '冻结时间',
  `unfrozenTime` bigint(13) NULL DEFAULT NULL COMMENT '解冻时间',
  `createTime` bigint(13) NOT NULL COMMENT '创建时间',
  `lastModifyTime` bigint(13) NULL DEFAULT NULL COMMENT '最近修改时间',
  `sendType` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送方式',
  `url` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求地址',
  `executeParamter` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '执行参数',
  `timeKey` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1151040572494417924 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for quartz_task_records
-- ----------------------------
DROP TABLE IF EXISTS `quartz_task_records`;
CREATE TABLE `quartz_task_records`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `taskNo` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务编号',
  `timeKeyValue` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '执行时间格式值',
  `executeTime` bigint(13) NOT NULL COMMENT '执行时间',
  `taskStatus` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务状态',
  `failcount` int(10) NULL DEFAULT NULL COMMENT '失败统计数',
  `failReason` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '失败错误描述',
  `createTime` bigint(13) NOT NULL COMMENT '创建时间',
  `lastModifyTime` bigint(13) NULL DEFAULT NULL COMMENT '最近修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_task_records_taskno`(`taskNo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 498 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务执行情况记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quartz_task_records
-- ----------------------------
INSERT INTO `quartz_task_records` VALUES (497, '10001', 'yyyy-MM-dd HH:mm:ss', 1577102400017, 'FAIL', 1, '', 1577102400017, 1577102400235);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '属性编码',
  `value` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '属性值',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '属性名称',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Y' COMMENT '状态   Y：启用   N：禁用',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数类型 （SYSTEM-系统参数 COMMON-公用）',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `del_flag` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除 Y：是 N:否',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`config_id`) USING BTREE,
  UNIQUE INDEX `code_key`(`code`, `del_flag`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1165931855616573483 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统配置信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1149516285870583810, 'UPLOAD_PATH', 'F:/xunzi/file/RCC/uploads/', '图片上传路径', 'Y', 'SYSTEM', '本地路径', 'N', '2019-07-12 11:10:14', '2019-08-27 20:25:57', 1, 1);
INSERT INTO `sys_config` VALUES (1163395267435053058, 'TOKEN_EXPIRE', '86400', 'APPtoken过期时间', 'Y', 'SYSTEM', '单位：秒', 'N', '2019-08-19 18:20:21', '2019-09-11 10:14:08', 1, 1);
INSERT INTO `sys_config` VALUES (1164056505542426625, 'URL', 'http://192.168.101.184:8882/', '本站URL', 'Y', 'SYSTEM', '外链使用', 'N', '2019-08-21 14:07:53', '2019-08-29 16:15:51', 1, 1);
INSERT INTO `sys_config` VALUES (1165931855616573470, 'SMS_ACCOUNT', 'a1', '短信账号', 'Y', 'SMS', NULL, 'N', NULL, NULL, NULL, NULL);
INSERT INTO `sys_config` VALUES (1165931855616573471, 'SMS_PASSWORD', 'p1', '短信秘钥', 'Y', 'SMS', NULL, 'N', NULL, NULL, NULL, NULL);
INSERT INTO `sys_config` VALUES (1165931855616573472, 'SMS_CONTENT', '您的验证码为：%s,该验证码5分钟内有效，请勿泄露于他人。【168】', '短信模板', 'Y', 'SMS', NULL, 'N', NULL, NULL, NULL, NULL);
INSERT INTO `sys_config` VALUES (1165931855616573473, 'SMS_OPEN', 'N', '短信开关', 'Y', 'SMS', NULL, 'N', NULL, NULL, NULL, NULL);
INSERT INTO `sys_config` VALUES (1165931855616573482, 'H5_URL', 'http://192.168.101.184:8881/', 'h5 URL', 'Y', 'SYSTEM', NULL, 'N', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL COMMENT '主键id',
  `pid` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `pids` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '父级ids',
  `simple_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '简称',
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '全称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '描述',
  `version` int(11) NULL DEFAULT NULL COMMENT '版本（乐观锁保留字段）',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (24, 0, '[0],', '总公司', '总公司', '', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dept` VALUES (25, 24, '[0],[24],', '开发部', '开发部', '', NULL, 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dept` VALUES (26, 24, '[0],[24],', '运营部', '运营部', '', NULL, 3, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dept` VALUES (27, 24, '[0],[24],', '战略部', '战略部', '', NULL, 4, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `DICT_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `PID` bigint(20) NULL DEFAULT NULL COMMENT '父级字典id',
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典名称',
  `CODE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典的编码',
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典描述',
  `SORT` int(11) NULL DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`DICT_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1151691355325952002 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (50, 0, '性别', 'SEX', '', 0, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (51, 50, '男', 'M', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (52, 50, '女', 'F', NULL, 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (53, 0, '状态', 'STATUS', '', 0, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (54, 53, '启用', 'ENABLE', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (55, 53, '禁用', 'DISABLE', NULL, 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (56, 0, '账号状态', 'ACCOUNT_STATUS', '', 0, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (57, 56, '启用', 'ENABLE', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (58, 56, '冻结', 'FREEZE', NULL, 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (59, 56, '已删除', 'DELETED', NULL, 3, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1071611355157749761, 0, '是否删除', 'DEL_FLAG', '用于数据库中是否删除的标记', NULL, '2018-12-09 11:43:51', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1071611420735692802, 1071611355157749761, '已经删除', 'Y', '', NULL, '2018-12-09 11:44:07', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1071611458312462337, 1071611355157749761, '未删除', 'N', '', NULL, '2018-12-09 11:44:16', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1148858644307619841, 0, '公告状态', 'BULLETIN_STATUS', '公告状态', 1, '2019-07-10 15:37:00', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1148859056968413186, 1148858644307619841, '已发布', 'PUBLISHED', '', NULL, '2019-07-10 15:38:39', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1148859179098157058, 1148858644307619841, '已关闭', 'CLOSED', '', NULL, '2019-07-10 15:39:08', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1151337222978908161, 0, '任务状态', 'TASK_STATUS', '定时任务', 10, '2019-07-17 11:45:59', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1151337433683963906, 1151337222978908161, '已冻结', 'FROZEN', '', 1, '2019-07-17 11:46:50', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1151337527841894401, 1151337222978908161, '未冻结', 'UNFROZEN', '', NULL, '2019-07-17 11:47:12', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1151388593702789122, 0, '任务执行状态', 'RECORD_STATUS', '任务执行状态', NULL, '2019-07-17 15:10:07', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1151388663365984257, 1151388593702789122, '成功', 'SUCCESS', '', NULL, '2019-07-17 15:10:24', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1151388764310298625, 1151388593702789122, '失败', 'FAIL', '', NULL, '2019-07-17 15:10:48', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1151690806841012226, 0, '等级审核状态', 'LEVEL_APPROVAL_STATUS', '', NULL, '2019-07-18 11:11:00', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1151690941201346562, 1151690806841012226, '通过', 'SUCCESS', '', NULL, '2019-07-18 11:11:32', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1151691094331191297, 1151690806841012226, '拒绝', 'REJECT', '', NULL, '2019-07-18 11:12:09', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1151691355325952001, 1151690806841012226, '待审核', 'APPROVALING', '', NULL, '2019-07-18 11:13:11', NULL, 1, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_type_id` bigint(20) NOT NULL COMMENT '字典类型id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '字典类型编码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '字典类型名称',
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '字典描述',
  `system_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '是否是系统字典，Y-是，N-否',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'ENABLE' COMMENT '状态(字典)',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`dict_type_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1106120208097067009, 'SEX', '性别', '', 'Y', 'ENABLE', 4, '2019-03-14 17:09:43', 1, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1106120265689055233, 'STATUS', '状态', '', 'Y', 'ENABLE', 3, '2019-03-14 17:09:57', 1, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1106120322450571266, 'ACCOUNT_STATUS', '账号状态', '', 'Y', 'ENABLE', 21112, '2019-03-14 17:10:10', 1, '2019-03-16 10:56:15', 1);
INSERT INTO `sys_dict_type` VALUES (1106120388036902914, 'DEL_FLAG', '是否删除', '', 'Y', 'ENABLE', 2, '2019-03-14 17:10:26', 1, '2019-03-27 16:26:31', 1);

-- ----------------------------
-- Table structure for sys_file_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_file_info`;
CREATE TABLE `sys_file_info`  (
  `file_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '主键id',
  `file_data` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT 'base64编码的文件',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '文件信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_file_info
-- ----------------------------
INSERT INTO `sys_file_info` VALUES ('1', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAMCAgICAgMCAgIDAwMDBAYEBAQEBAgGBgUGCQgKCgkICQkKDA8MCgsOCwkJDRENDg8QEBEQCgwSExIQEw8QEBD/2wBDAQMDAwQDBAgEBAgQCwkLEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBD/wAARCABjAGQDASIAAhEBAxEB/8QAHAAAAgIDAQEAAAAAAAAAAAAAAAkHCAUGCgQD/8QAPBAAAQMDAgMGBAQEBAcAAAAAAQIDBAUGEQAHCBIhCRMUMUFhIjJRcSNygZEVFiRCF0OCoRhSYnODosH/xAAXAQEBAQEAAAAAAAAAAAAAAAAAAQID/8QAGhEBAQEBAQEBAAAAAAAAAAAAAAECEQMxIf/aAAwDAQACEQMRAD8Aahozo0aA0Z0aXp2jXaFyNmi/sxs1UWzd77eKnU0YUKYhQ+RHp3pHr6aCynETxqbC8NENxF9XQmXW+TmaodN5X5q/pzJyA2PdZHtnS79yu2m3cq0txna3bi37fg5IQ7UlOTpJHocgobH25T99LwrNaq1xVORWq7UpE+fLcLr8iQ4VuOLJySSepOdeLQWorfad8a1alKkDeBUBBJKWYdIhNoT7D8HJ/UnWWsrtVeMi05okVO+4FzR/WLVqTHKD/rZQhz/21Vm0rTrl73JS7Ut2EuTUKxOYp0ZABwXnlhCAT6ZJ/YH6ax9QgyaZOkU6Y2W34rqmXUn+1STgj9xoG88PnbH2Td0+Lbm/FoC1ZUhSWxWKatT0EKPq42rLjY9wV/ppiVAuCh3TR4twW3VotSps5oPRpUV0ONOoPkUqHQ65bghRSVhJKU+Zx0Grb8CfHXd3DPd0W2bknyalt/UnktzILiirwRUcd+zn5SPUeRGgfVo14aHW6XclGhXBRJjcuBUWESYz7ZylxtYykj9Dr3aA0aNGgNGjRoIY4vN94XDtsRcW4TjyE1BLBiUpsnq5LcBCAPt5/prnWr1drV316fcVdmuzajUX1yZL7qsqWtRySTpkfbJbk1m59xrR2OoKHnm6ZEVVZTDYzzvODKTj1AbGdLcpUXvIlRl5GI7KUn/WoJ/+6DKV2iQaZb1ux47KnatVkOTninr+EpXIygD65Q4T906sTuNwiVjafZzbmiVCiO1Ddfd+qpVApyUkqgU9tKcNY9HFuOslR/tSCPrqNrbtG8axvXT27M29n3q5ShBcbp0ZtZQ7iO2oJKkj4RzEn99NR4TNnOIq6t2Le3S4l7DplCh2LRZsa1ozK8uNPy3G+bnSpSlZShLnxE+a/YaDG8PHBLb2y+7G19nOMMzZ1pUGXeFyzwjIl1eQoRoqAT5NtJRL5B9cnzOl+do1sRK2Q4mLiEaGpqhXS8qt0tYThHK8eZxsfkWVJx9ANPmj2vCj3hPvJLqzLqFNiUxaD8qW47shxJHuTKXn7DUGcc/DRZHEZs3Oj3FITTarbrTs+l1QNlSmFhPxIUAMqQrABA9cY0CkNh9gf564O97N0DE7yRQn4HhFFPUBklbnKfcOgH7aqxpunCHUNrLJ4Ern2/uCtIfn1Ryqxqz3DSleBdWFCOZCcZbScIwojGlNv0sNfxEB4K8A73fTqFjnKcg6B3HZL7wPbj8NX8o1OWp6oWROVT/iVlXhnMra/wB+cfoNXb0oLsTrnksbpX9Z/OfDy6E3UOX0Ljb7aAf2cVpvvvoDRo0aA0aNGgpPxe8N1v09zdTidqUtM64pFuJpVvw8ZLSiyhohII6uFWSnl69dLr4LuFJO6+8dT2U3npdwWt46kCoJSuMWJJDSwsYDg8lAEZxpxXEFGqMabZ12Kos2rUW36i7JqDEOC5NcZcU3ysSfDt5W6ltWSQgFWD0+usNtDW27tuKZdFz1WDXajBQI8CqubfzaAthLhwWG5Etai9n1SjHvrOtcS1ru6tY254A+GStXTt3ZjClUeOxGjhQy9MlLUllpch3HMoBRST9ADgDVR+AHtCOIbeXiEgbUX8mn1umXNImTXJCGC0umttRXHAhvBx3fM2gYVk/EepyNMM3R27sveazKttjftNVOo1Ya7qQ2lRSpJB5krSofKpKgFA/UDUacL/A5slwsVipXHYLNWqFaqTJjKqFWkIedZjlQUWm+RCEpBKU5OCTgdcdNYz6S/Vubifqyml58fnaN35w27ntbT7b2zR5MpiLGnTZ89S18vP8AF3QbTjzQU/FzevlphQVkfTVE+O3s55PFFfcLcyyL2gUGt+FRCqDNRZcUxIQjohxKkAqSoJwnHLg4HUa6WyHWHodatLii2pjcXOz1sMUi96GlcW76I2gdzWIoH9VGeSBh08hUtCiM6VrfduRKLbFcuVmGqI3X7lej0+OtHKURGypw4HpyqKUHTxuDrhnp/CltaNvWbiFbqEuUqdUZga7pDjyhjCEEkhIAwCTk+2qubx9mvee/9yKDN6U60qNQnpqmFuw1yV1CZJe7x50JBRyN/KAokk9emszcqXsvKjbsTbOlv7i3/fpbV4SJR2qXzY6d668hwDP5WlabtqpHARswnhZodZ2EuhTLt1yH117+IxwTGqcLKW0qaJwrLZICkqAILgxkddW31tRo0dfro0Bo0ax1w3BSLVoVQuSvTW4dOpkdyVKfcOEttISVKJ/QaDR9/t/tveHLb+ZuDuFUwzHaBRFioIL81/GUtNp9SfU+QHU6Wzsnxkb68anE1JsRNbatm3KhSpjlLpTCOduM8wnvWXVL6KU5zJGVeWCQBjVVONvisuDii3Zm1gynmrWpLq4tCg83wIZBx3pHqteMk++rHdjBt09V94Lo3IeZ/pqBSvBsuY/z3iARn8mdDnTT7KueZWabCjXdTWaDcy0KEmluSW1rKkdFONcqiVtE9UnAOD1AOtxEVLjLjK88riShWFFJwfoR1Go+39f2updiSq3udbbFZiRFIEWL3IckPSVqCGm2PUOKWoJTgjqdR3QrCvanWiu4KZd192TKaZXINDZrCK7yJCeZLaPGoUkKIwOQAAHoDjrrnMSXqXt+tfq/CFdFzzFWjc1Yp0+2WHx4e4pkqVJryoOQUxcKUGkOpGUeKypak4PKF/HqzqYLcCGxCY5i3HbS0jmUVHlAwMk9SdRptVd12Jtar1u8LplV2LGfcciTX4LDCnYiEBQcSGEpSsKByCB19Omomj7k8Q+9VXm2pbF4WrZKnabFrrCI8BybJECSpYaZdf70JadIQSeVGRzApONXWewqeKjd1Dp12wLPiFU2uzh3yorPxGMwPN54/wCWj0Geqj5ZwdYS/wCl7J2RcMHcC6bHDlwLc5o1SptsyJ00rA8lORmVqA/OQNePYw2/bVQnWHVLRXb94JT4ua4/JVLVVk+XiUSl/G8M+YV8Sft114eOPu2uEzc6SVrbcj0CQ60tCyhSVpGUkEEHz1M+ci6t1e1mLJj3Df8AuendKp25PoNEpNKdpdHjVFAbly1vOIW5IW2CS0kBsJSlXxHmJIGBmXdUF7KPiur281jVPai/6y7UbitJtL0SVIXzOyIBIThRPVRQopGT1wofTV+tdCTg0aNGgNLn7YHiOesywKZsPbk4tVG6x4yqltWFJgoVhKD+daTn2SPrpjGueXj/AN0Ht1uKy+ayJPfQqbONIg4OU9xH/DBH35SfudBXbT1ezR2tZ2L4TWrvuNoQ5lx97XpqnBgoYSk90FfZIJ/XSiuE3ZSdv7vza+3kdlSoj8tMmorAyG4jZCnCfbGB+unj8QZbdoNrcPFpLMV27HG4TwZ6GLSGEgvr6eXwp5B7nQaq5eat9dwdk3n6c5Dpk5VRu4xXevOiKhSIqiPoVuMugfbUpbi7rWZtcIzN0TnVT5xIh02EwqRMk48yhpHXA+pwPfWm3HSptp757eVqiUB56lx7fq1Bjojt5Qw8W2nWUqx8qSI5SCfUgay+3Vnt7X2fXd9N2VJmXlNgPVitS1jm/h8ZCC4IbGfkbbQMHHzKCifPQaRS9sw2yKFb+/sy27PqIblxKA0qPHmRWnWkEMB1f4rafXl8xzEamPaTZCwNnaMKTZNIRFbXyqeeUsuvPqAwFOOK6qONQVYZi7v3nAt7f7ZO3o9Svi2l3NSahDe53BExH52HeoUh1sym083qUnHQDUn8OdyVCn0m4dqboqTsur7fVV2lB59WXpEA/iQ3lE+ZLC28q9SDoNqr1q1mp7xWzdSGWm6ZQaZNbLvP8br0gpTyY+iQgHP/AFajTtCHnGuD3cotkjno7iT9j56+m424FT3MviJtptvUH/A0SS3PumrwjzCO22eZMNtQ6KdWR1A8h99eHiwrNH3X4LNyqja8sTGV0KWlOEkKS610UhST1CgQcg6BOvAbvYNieJe1LpmyizSJz/8ACqoc/D4Z/wCAqP15SQr7jXQ6lSVpC0KBSoZBHkRrlfbcW04l1tRSpBCkkehGuibgX3dO9XC/ZN2ypPfVGLCFJqJKsq8RG/DJV7qQELP5tBPejRo0GubkVefQNu7or1KQVzabRZsuMkDJLrbC1IAH3A1zF1eZKqNVmT5ri3JEh9xx1SzlRUVEnOupV1tt5tTLyErQtJSpKhkKB8wRqnlydlJwk3HeRvBVEr0BLjyn3qXDqIRCcUTk5SpBWB18krGgiPsgeHRyy7Dqu/10wgxMuVHh6UXRgtwUE8znXy5j6+oA1ZnaN3/EzcG6t85SVLhuuKt+3Ob+2Cwr8V1I9O8dB6/ROsxv5U2tvtraVtTt3EbhVG53GrZoseOOUR2lJw44APIIbBOfqRrdLPtanWbbNKtKjNhEOlxm4rQAxnlHVR9yck+5Og2alxudRfUCAn5dRvxeyHovC1uu9HJCxZ9VSCPQGMsE/sTqWmGw00lCfQY1q27Vj/4l7XXbt4ZCWf5lok2lB1Q6Nl9lTYUfsVZ/TQRhY7LFb4oqs7FSDEsawaTR2voh6Y++64kf+OPGJ9iNbluDsBYO4lc/mipKq9Mqyo4ivy6RUXIbkpkZ5W3Sg/GBk4PmM9DrXOGPb/ca14NzXduzTodPue6p0Vx6HFlJkIYYiwmIrY7xPQ85ZcdwPLvQPMHU2kZ6aCP7Qsq2Nv6Oi3LSorFNgtEnu2h1Wo+a1qPxLUfVSiSdRNaNCjyqnv5tI+j+imITVI7H9oEyMsr5R+dI1PlQb7uUvHkeuogfUm1eKCizHE4h31b0ilOk9EmTGIdR+pb5hoOeOr052j1abSXx+JCkOR1/mQopP+400zsT90pDzN+7NzJHM2wlm4ILZPy9e5fOPcqY/bVAeK+xpO3HEduDaclotmPXJD6ARgcjyu9Tj2w4NWR7HVNW/wCKyS5AZdVEFtzUzlpB5UNlTfLzH/uBGgdzo0aNAaNGjQV9uUmp8XlKiT/x2aRZzkuC2r5WHnZBQ4tI/wCYpSBk+g1MkQAyG8j10aNBntGjRoDRo0aDEVjo+j3TqEOIImNV9rqmweSUxfNNabdHmlDiilwfZSeh0aNAsXtb6RTYvGAhUaIhsz6DAdklOR3iytxJUffAA/TTK+ArZnbDbHYyjV2xrPh0upXJFbkVWYlS3X5SwTjmW4pSgkdcJBCRkkDro0aCyujRo0H/2Q==', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log`  (
  `login_log_id` bigint(20) NOT NULL COMMENT '主键',
  `log_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '日志名称',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '管理员id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `succeed` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否执行成功',
  `message` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '具体消息',
  `ip_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '登录ip',
  PRIMARY KEY (`login_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '登录记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
INSERT INTO `sys_login_log` VALUES (1212936641813401602, '登录日志', 1178634832995377153, '2020-01-03 11:20:05', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1212939170848677890, '登录日志', 1178634832995377153, '2020-01-03 11:30:08', '成功', NULL, '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '菜单编号',
  `pcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '菜单父编号',
  `pcodes` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '当前菜单的所有父菜单编号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '菜单名称',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '菜单图标',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'url地址',
  `sort` int(65) NULL DEFAULT NULL COMMENT '菜单排序号',
  `levels` int(65) NULL DEFAULT NULL COMMENT '菜单层级',
  `menu_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否是菜单(字典)',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'ENABLE' COMMENT '菜单状态(字典)',
  `new_page_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否打开新页面的标识(字典)',
  `open_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否打开(字典)',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1211601311612944387 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (105, 'system', '0', '[0],', '系统管理', 'layui-icon layui-icon-set', '#', 20, 1, 'Y', NULL, 'ENABLE', NULL, '1', NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (106, 'mgr', 'system', '[0],[system],', '用户管理', '', '/mgr', 1, 2, 'Y', NULL, 'ENABLE', NULL, '0', NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (107, 'mgr_add', 'mgr', '[0],[system],[mgr],', '添加用户', NULL, '/mgr/add', 1, 3, 'N', NULL, 'ENABLE', NULL, '0', NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (108, 'mgr_edit', 'mgr', '[0],[system],[mgr],', '修改用户', NULL, '/mgr/edit', 2, 3, 'N', NULL, 'ENABLE', NULL, '0', NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (109, 'mgr_delete', 'mgr', '[0],[system],[mgr],', '删除用户', NULL, '/mgr/delete', 3, 3, 'N', NULL, 'ENABLE', NULL, '0', NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (110, 'mgr_reset', 'mgr', '[0],[system],[mgr],', '重置密码', NULL, '/mgr/reset', 4, 3, 'N', NULL, 'ENABLE', NULL, '0', NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (111, 'mgr_freeze', 'mgr', '[0],[system],[mgr],', '冻结用户', NULL, '/mgr/freeze', 5, 3, 'N', NULL, 'ENABLE', NULL, '0', NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (112, 'mgr_unfreeze', 'mgr', '[0],[system],[mgr],', '解除冻结用户', NULL, '/mgr/unfreeze', 6, 3, 'N', NULL, 'ENABLE', NULL, '0', NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (113, 'mgr_setRole', 'mgr', '[0],[system],[mgr],', '分配角色', NULL, '/mgr/setRole', 7, 3, 'N', NULL, 'ENABLE', NULL, '0', NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (114, 'role', 'system', '[0],[system],', '角色管理', NULL, '/role', 2, 2, 'Y', NULL, 'ENABLE', NULL, '0', NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (115, 'role_add', 'role', '[0],[system],[role],', '添加角色', NULL, '/role/add', 1, 3, 'N', NULL, 'ENABLE', NULL, '0', NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (116, 'role_edit', 'role', '[0],[system],[role],', '修改角色', NULL, '/role/edit', 2, 3, 'N', NULL, 'ENABLE', NULL, '0', NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (117, 'role_remove', 'role', '[0],[system],[role],', '删除角色', NULL, '/role/remove', 3, 3, 'N', NULL, 'ENABLE', NULL, '0', NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (118, 'role_setAuthority', 'role', '[0],[system],[role],', '配置权限', NULL, '/role/setAuthority', 4, 3, 'N', NULL, 'ENABLE', NULL, '0', NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (119, 'menu', 'system', '[0],[system],', '菜单管理', NULL, '/menu', 4, 2, 'Y', NULL, 'ENABLE', NULL, '0', NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (120, 'menu_add', 'menu', '[0],[system],[menu],', '添加菜单', NULL, '/menu/add', 1, 3, 'N', NULL, 'ENABLE', NULL, '0', NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (121, 'menu_edit', 'menu', '[0],[system],[menu],', '修改菜单', NULL, '/menu/edit', 2, 3, 'N', NULL, 'ENABLE', NULL, '0', NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (122, 'menu_remove', 'menu', '[0],[system],[menu],', '删除菜单', NULL, '/menu/remove', 3, 3, 'N', NULL, 'ENABLE', NULL, '0', NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (128, 'log', 'system', '[0],[system],', '业务日志', NULL, '/log', 6, 2, 'Y', NULL, 'ENABLE', NULL, '0', NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (131, 'dept', 'system', '[0],[system],', '部门管理', NULL, '/dept', 3, 2, 'Y', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (132, 'dict', 'system', '[0],[system],', '字典管理', '', '/dict', 4, 2, 'Y', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (133, 'loginLog', 'system', '[0],[system],', '登录日志', NULL, '/loginLog', 6, 2, 'Y', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (134, 'log_clean', 'log', '[0],[system],[log],', '清空日志', NULL, '/log/delLog', 3, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (135, 'dept_add', 'dept', '[0],[system],[dept],', '添加部门', NULL, '/dept/add', 1, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (136, 'dept_update', 'dept', '[0],[system],[dept],', '修改部门', NULL, '/dept/update', 1, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (137, 'dept_delete', 'dept', '[0],[system],[dept],', '删除部门', NULL, '/dept/delete', 1, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (138, 'dict_add', 'dict', '[0],[system],[dict],', '添加字典', NULL, '/dictType/addItem', 1, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (139, 'dict_update', 'dict', '[0],[system],[dict],', '修改字典', NULL, '/dictType/editItem', 1, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (140, 'dict_delete', 'dict', '[0],[system],[dict],', '删除字典', NULL, '/dictType/delete', 1, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (150, 'to_menu_edit', 'menu', '[0],[system],[menu],', '菜单编辑跳转', '', '/menu/menu_edit', 4, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (151, 'menu_list', 'menu', '[0],[system],[menu],', '菜单列表', '', '/menu/list', 5, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (152, 'to_dept_update', 'dept', '[0],[system],[dept],', '修改部门跳转', '', '/dept/dept_update', 4, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (153, 'dept_list', 'dept', '[0],[system],[dept],', '部门列表', '', '/dept/list', 5, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (154, 'dept_detail', 'dept', '[0],[system],[dept],', '部门详情', '', '/dept/detail', 6, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (155, 'to_dict_edit', 'dict', '[0],[system],[dict],', '修改菜单跳转', '', '/dict/dict_edit', 4, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (156, 'dict_list', 'dict', '[0],[system],[dict],', '字典列表', '', '/dict/list', 5, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (157, 'dict_detail', 'dict', '[0],[system],[dict],', '字典详情', '', '/dict/detail', 6, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (158, 'log_list', 'log', '[0],[system],[log],', '日志列表', '', '/log/list', 2, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (159, 'log_detail', 'log', '[0],[system],[log],', '日志详情', '', '/log/detail', 3, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (160, 'del_login_log', 'loginLog', '[0],[system],[loginLog],', '清空登录日志', '', '/loginLog/delLoginLog', 1, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (161, 'login_log_list', 'loginLog', '[0],[system],[loginLog],', '登录日志列表', '', '/loginLog/list', 2, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (162, 'to_role_edit', 'role', '[0],[system],[role],', '修改角色跳转', '', '/role/role_edit', 5, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (163, 'to_role_assign', 'role', '[0],[system],[role],', '角色分配跳转', '', '/role/role_assign', 6, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (164, 'role_list', 'role', '[0],[system],[role],', '角色列表', '', '/role/list', 7, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (165, 'to_assign_role', 'mgr', '[0],[system],[mgr],', '分配角色跳转', '', '/mgr/role_assign', 8, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (166, 'to_user_edit', 'mgr', '[0],[system],[mgr],', '编辑用户跳转', '', '/mgr/user_edit', 9, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (167, 'mgr_list', 'mgr', '[0],[system],[mgr],', '用户列表', '', '/mgr/list', 10, 3, 'N', NULL, 'ENABLE', NULL, NULL, NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (1150950637493944321, 'contact_list', 'contact', '[0],[contract],[contact],,', '客服列表', '', '/contact/list', 1, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-07-16 10:09:50', '2019-09-04 19:00:43', 1, 1);
INSERT INTO `sys_menu` VALUES (1150950921758703618, 'contact_add', 'contact', '[0],[contract],[contact],,', '客服添加', '', '/contact/add', 2, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-07-16 10:10:58', '2019-09-04 19:00:43', 1, 1);
INSERT INTO `sys_menu` VALUES (1150951184716398593, 'contact_edit', 'contact', '[0],[contract],[contact],,', '客服编辑', '', '/contact/edit', 3, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-07-16 10:12:01', '2019-09-04 19:00:43', 1, 1);
INSERT INTO `sys_menu` VALUES (1150951353369362434, 'contact_delete', 'contact', '[0],[contract],[contact],,', '客服删除', '', '/contact/delete', 4, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-07-16 10:12:41', '2019-09-04 19:00:43', 1, 1);
INSERT INTO `sys_menu` VALUES (1150951627794284545, 'contact_detail', 'contact', '[0],[contract],[contact],,', '客服详情', '', '/contact/detail', 5, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-07-16 10:13:46', '2019-09-04 19:00:43', 1, 1);
INSERT INTO `sys_menu` VALUES (1150963764302426114, 'contact_status', 'contact', '[0],[contract],[contact],,', '修改状态', '', '/contact/status', 6, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-07-16 11:02:00', '2019-09-04 19:00:43', 1, 1);
INSERT INTO `sys_menu` VALUES (1150966441220452353, 'bul_edit', 'bulletin', '[0],[promotion],[bulletin],', '公告编辑', '', '/bulletin/edit', 1, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-07-16 11:12:38', '2019-07-18 09:34:43', 1, 1);
INSERT INTO `sys_menu` VALUES (1150976468895371265, 'bul_content', 'bulletin', '[0],[promotion],[bulletin],', '公告内容信息', '', '/bulletin/content', 5, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-07-16 11:52:29', '2019-07-18 09:34:43', 1, 1);
INSERT INTO `sys_menu` VALUES (1161083318982619138, 'article', '0', '[0],', '文章管理', 'layui-icon layui-icon-read', '#', 2300, 1, 'Y', NULL, 'ENABLE', NULL, NULL, '2019-08-13 09:13:30', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1161287414551289858, 'ca', '0', '[0],', '多媒体管理', 'layui-icon layui-icon-carousel', '#', 2500, 1, 'Y', NULL, 'ENABLE', NULL, NULL, '2019-08-13 22:44:30', '2019-12-10 14:35:56', 1, 1178634832995377153);
INSERT INTO `sys_menu` VALUES (1161287661230891010, 'contract', '0', '[0],', '客服与版本设置', 'layui-icon layui-icon-chat', '#', 2700, 1, 'Y', NULL, 'ENABLE', NULL, NULL, '2019-08-13 22:45:29', '2019-09-04 19:00:43', 1, 1);
INSERT INTO `sys_menu` VALUES (1161287661230891029, 'contact', 'contract', '[0],[contract],', '客服联系方式设置', '', '/contact', 1200, 2, 'Y', NULL, 'ENABLE', NULL, NULL, '2019-08-14 09:47:22', '2019-09-04 19:00:43', 1, 1);
INSERT INTO `sys_menu` VALUES (1161476427667103745, 'bulletin', 'ca', '[0],[ca],', '轮播图列表', '', '/bulletin', 1, 2, 'Y', NULL, 'ENABLE', NULL, NULL, '2019-08-14 11:15:34', '2019-12-10 14:35:56', 1, 1178634832995377153);
INSERT INTO `sys_menu` VALUES (1161479110171951105, 'bul_list', 'bulletin', '[0],[ca],[bulletin],', '列表', '', '/bulletin/list', NULL, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-08-14 11:26:14', '2019-12-10 14:35:56', 1, 1178634832995377153);
INSERT INTO `sys_menu` VALUES (1161480182831738882, 'bul_add', 'bulletin', '[0],[ca],[bulletin],', '添加', '', '/bulletin/add', NULL, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-08-14 11:30:30', '2019-12-10 14:35:56', 1, 1178634832995377153);
INSERT INTO `sys_menu` VALUES (1161517839653666818, 'bul_delete', 'bulletin', '[0],[ca],[bulletin],', '删除', '', '/bulletin/delete', NULL, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-08-14 14:00:08', '2019-12-10 14:35:56', 1, 1178634832995377153);
INSERT INTO `sys_menu` VALUES (1161885547658403860, 'platform_article', 'article', '[0],[article],', '简介文章', '', '/article', 1300, 2, 'Y', NULL, 'ENABLE', NULL, NULL, '2019-08-15 17:03:39', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1161885547658403861, 'platform_article_list', 'platform_article', '[0],[article],[platform_article],', '列表', '', '/article/list', 1000, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-08-15 17:03:39', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1161885547658403862, 'platform_article_add', 'platform_article', '[0],[article],[platform_article],', '添加', '', '/article/add', 1200, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-08-15 17:03:39', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1161885547658403863, 'platform_article_detail', 'platform_article', '[0],[article],[platform_article],', '详情', '', '/article/detail', 1300, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-08-15 17:03:39', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1161885547658403864, 'platform_article_edit', 'platform_article', '[0],[article],[platform_article],', '编辑', '', '/article/edit', 1400, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-08-15 17:03:39', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1161885547658403865, 'detect_delete', 'platform_article', '[0],[article],[platform_article],', '删除', '', '/article/delete', 1500, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-08-15 17:03:39', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1162169504748765186, 'common', '0', '[0],', '公共参数', 'layui-icon layui-icon-tips', '#', 2800, 1, 'Y', NULL, 'ENABLE', NULL, NULL, '2019-08-16 09:09:37', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1162169504748765187, 'com_config', 'common', '[0],[common],', '公共参数', '', '/com_config', 1400, 2, 'Y', NULL, 'ENABLE', NULL, NULL, '2019-08-16 09:21:30', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1162169504748765188, 'com_config_list', 'com_config', '[0],[common],[com_config],', '列表', '', '/com_config/comList', 1000, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-08-16 09:21:30', '2019-08-16 09:29:28', 1, 1);
INSERT INTO `sys_menu` VALUES (1162169504748765189, 'com_config_add', 'com_config', '[0],[common],[com_config],', '添加', '', '/com_config/add', 1200, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-08-16 09:21:30', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1162169504748765190, 'com_config_detail', 'com_config', '[0],[common],[com_config],', '详情', '', '/com_config/detail', 1300, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-08-16 09:21:30', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1162169504748765191, 'com_config_edit', 'com_config', '[0],[common],[com_config],', '编辑', '', '/com_config/edit', 1400, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-08-16 09:21:30', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1162169504748765192, 'detect_delete', 'com_config', '[0],[common],[com_config],', '删除', '', '/com_config/delete', 1500, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-08-16 09:21:30', '2019-08-16 09:37:37', 1, 1);
INSERT INTO `sys_menu` VALUES (1168855402156584961, 'user_mgr', '0', '[0],', '用户管理', 'layui-icon layui-icon-tree', '#', 3050, 1, 'Y', NULL, 'ENABLE', NULL, NULL, '2019-09-03 19:56:59', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1168855402156584968, 'appVersion', 'contract', '[0],[contract],', '版本号设置', '', '/appVersion', 1300, 2, 'Y', NULL, 'ENABLE', NULL, NULL, '2019-09-04 19:01:59', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1168855402156584969, 'appVersion_list', 'appVersion', '[0],[contract],[appVersion],', '列表', '', '/appVersion/list', 1000, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-09-04 19:01:59', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1168855402156584970, 'appVersion_add', 'appVersion', '[0],[contract],[appVersion],', '添加', '', '/appVersion/add', 1200, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-09-04 19:01:59', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1168855402156584971, 'appVersion_detail', 'appVersion', '[0],[contract],[appVersion],', '详情', '', '/appVersion/detail', 1300, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-09-04 19:01:59', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1168855402156584972, 'appVersion_edit', 'appVersion', '[0],[contract],[appVersion],', '编辑', '', '/appVersion/edit', 1400, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-09-04 19:02:00', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1168855402156584973, 'appVersion_delete', 'appVersion', '[0],[contract],[appVersion],', '删除', '', '/appVersion/delete', 1500, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-09-04 19:02:00', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1169210450258558978, 'news_mgr', '0', '[0],', '公告管理', 'layui-icon layui-icon-notice', '#', 2750, 1, 'Y', NULL, 'ENABLE', NULL, NULL, '2019-09-04 19:27:49', '2019-09-04 19:27:57', 1, 1);
INSERT INTO `sys_menu` VALUES (1169210450258558979, 'news', 'news_mgr', '[0],[news_mgr],', '公告管理', '', '/news', 1200, 2, 'Y', NULL, 'ENABLE', NULL, NULL, '2019-09-04 19:28:25', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1169210450258558980, 'news_list', 'news', '[0],[news_mgr],[news],', '列表', '', '/news/list', 1000, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-09-04 19:28:25', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1169210450258558981, 'news_add', 'news', '[0],[news_mgr],[news],', '添加', '', '/news/add', 1200, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-09-04 19:28:25', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1169210450258558982, 'news_detail', 'news', '[0],[news_mgr],[news],', '详情', '', '/news/detail', 1300, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-09-04 19:28:25', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1169210450258558983, 'news_edit', 'news', '[0],[news_mgr],[news],', '编辑', '', '/news/edit', 1400, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-09-04 19:28:25', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1169210450258558984, 'news_delete', 'news', '[0],[news_mgr],[news],', '删除', '', '/news/delete', 1500, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-09-04 19:28:25', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1182481487490396174, 'declares', 'article', '[0],[article],', '用户协议', '', '/declares', 1100, 2, 'Y', NULL, 'ENABLE', NULL, NULL, '2019-10-22 10:23:50', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1182481487490396175, 'declares_list', 'declares', '[0],[article],[declares],', '列表', '', '/declares/list', 1000, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-10-22 10:23:51', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1182481487490396176, 'declares_add', 'declares', '[0],[article],[declares],', '添加', '', '/declares/add', 1200, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-10-22 10:23:51', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1182481487490396177, 'declares_detail', 'declares', '[0],[article],[declares],', '详情', '', '/declares/detail', 1300, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-10-22 10:23:51', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1182481487490396178, 'declares_edit', 'declares', '[0],[article],[declares],', '编辑', '', '/declares/edit', 1400, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-10-22 10:23:51', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1182481487490396179, 'declares_delete', 'declares', '[0],[article],[declares],', '删除', '', '/declares/delete', 1500, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-10-22 10:23:51', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1182481487490396192, 'checkIn', 'user_mgr', '[0],[user_mgr],', '签到', '', '/checkIn', 1300, 2, 'Y', NULL, 'ENABLE', NULL, NULL, '2019-12-09 16:28:49', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1182481487490396193, 'checkIn_list', 'checkIn', '[0],[user_mgr],[checkIn],', '列表', '', '/checkIn/list', 1000, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-09 16:28:49', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1182481487490396194, 'checkIn_add', 'checkIn', '[0],[user_mgr],[checkIn],', '添加', '', '/checkIn/add', 1200, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-09 16:28:49', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1182481487490396195, 'checkIn_detail', 'checkIn', '[0],[user_mgr],[checkIn],', '详情', '', '/checkIn/detail', 1300, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-09 16:28:49', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1182481487490396196, 'checkIn_edit', 'checkIn', '[0],[user_mgr],[checkIn],', '编辑', '', '/checkIn/edit', 1400, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-09 16:28:49', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1182481487490396197, 'checkIn_delete', 'checkIn', '[0],[user_mgr],[checkIn],', '删除', '', '/checkIn/delete', 1500, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-09 16:28:49', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663105, 'finance_mgr', '0', '[0],', '财务管理', 'layui-icon layui-icon-rmb', '#', 3100, 1, 'Y', NULL, 'ENABLE', NULL, NULL, '2019-12-09 17:05:30', NULL, 1178634832995377153, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663112, 'cashflow', 'finance_mgr', '[0],[finance_mgr],', '流水记录', '', '/cashflow', 1100, 2, 'Y', NULL, 'ENABLE', NULL, NULL, '2019-12-09 17:11:51', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663113, 'cashflow_list', 'cashflow', '[0],[finance_mgr],[cashflow],', '列表', '', '/cashflow/list', 1000, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-09 17:11:51', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663114, 'cashflow_add', 'cashflow', '[0],[finance_mgr],[cashflow],', '添加', '', '/cashflow/add', 1200, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-09 17:11:51', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663115, 'cashflow_detail', 'cashflow', '[0],[finance_mgr],[cashflow],', '详情', '', '/cashflow/detail', 1300, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-09 17:11:51', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663116, 'cashflow_edit', 'cashflow', '[0],[finance_mgr],[cashflow],', '编辑', '', '/cashflow/edit', 1400, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-09 17:11:51', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663117, 'cashflow_delete', 'cashflow', '[0],[finance_mgr],[cashflow],', '删除', '', '/cashflow/delete', 1500, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-09 17:11:51', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663124, 'region', 'common', '[0],[common],', '地区', '', '/region', 1400, 2, 'Y', NULL, 'ENABLE', NULL, NULL, '2019-12-09 21:08:48', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663125, 'region_list', 'region', '[0],[common],[region],', '列表', '', '/region/list', 1000, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-09 21:08:48', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663126, 'region_add', 'region', '[0],[common],[region],', '添加', '', '/region/add', 1200, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-09 21:08:48', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663127, 'region_detail', 'region', '[0],[common],[region],', '详情', '', '/region/detail', 1300, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-09 21:08:48', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663128, 'region_edit', 'region', '[0],[common],[region],', '编辑', '', '/region/edit', 1400, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-09 21:08:48', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663129, 'region_delete', 'region', '[0],[common],[region],', '删除', '', '/region/delete', 1500, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-09 21:08:48', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663136, 'business', 'article', '[0],[article],', '行业资讯', '', '/business', 1500, 2, 'Y', NULL, 'ENABLE', NULL, NULL, '2019-12-10 14:09:31', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663137, 'business_list', 'business', '[0],[article],[business],', '列表', '', '/business/list', 1000, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-10 14:09:31', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663138, 'business_add', 'business', '[0],[article],[business],', '添加', '', '/business/add', 1200, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-10 14:09:31', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663139, 'business_detail', 'business', '[0],[article],[business],', '详情', '', '/business/detail', 1300, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-10 14:09:31', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663140, 'business_edit', 'business', '[0],[article],[business],', '编辑', '', '/business/edit', 1400, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-10 14:09:31', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663141, 'business_delete', 'business', '[0],[article],[business],', '删除', '', '/business/delete', 1500, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-10 14:09:31', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663142, 'media', 'ca', '[0],[ca],', '视频和音频', '', '/media', 1200, 2, 'Y', NULL, 'ENABLE', NULL, NULL, '2019-12-10 14:44:40', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663143, 'media_list', 'media', '[0],[ca],[media],', '列表', '', '/media/list', 1000, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-10 14:44:40', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663144, 'media_add', 'media', '[0],[ca],[media],', '添加', '', '/media/add', 1200, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-10 14:44:40', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663145, 'media_detail', 'media', '[0],[ca],[media],', '详情', '', '/media/detail', 1300, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-10 14:44:40', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663146, 'media_edit', 'media', '[0],[ca],[media],', '编辑', '', '/media/edit', 1400, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-10 14:44:40', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663147, 'media_delete', 'media', '[0],[ca],[media],', '删除', '', '/media/delete', 1500, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-10 14:44:40', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663148, 'withdraw', 'finance_mgr', '[0],[finance_mgr],', '提币信息', '', '/withdraw', 1400, 2, 'Y', NULL, 'ENABLE', NULL, NULL, '2019-12-10 20:05:52', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663149, 'withdraw_list', 'withdraw', '[0],[finance_mgr],[withdraw],', '列表', '', '/withdraw/list', 1000, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-10 20:05:52', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663150, 'withdraw_add', 'withdraw', '[0],[finance_mgr],[withdraw],', '添加', '', '/withdraw/add', 1200, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-10 20:05:52', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663151, 'withdraw_detail', 'withdraw', '[0],[finance_mgr],[withdraw],', '详情', '', '/withdraw/detail', 1300, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-10 20:05:52', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663152, 'withdraw_edit', 'withdraw', '[0],[finance_mgr],[withdraw],', '编辑', '', '/withdraw/edit', 1400, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-10 20:05:52', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1203963870223663153, 'withdraw_delete', 'withdraw', '[0],[finance_mgr],[withdraw],', '删除', '', '/withdraw/delete', 1500, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-10 20:05:52', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1204649071379611692, 'member', 'user_mgr', '[0],[user_mgr],', '用户信息', '', '/member', 1100, 2, 'Y', NULL, 'ENABLE', NULL, NULL, '2019-12-27 14:57:21', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1204649071379611693, 'member_list', 'member', '[0],[user_mgr],[member],', '列表', '', '/member/list', 1000, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-27 14:57:21', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1204649071379611694, 'member_add', 'member', '[0],[user_mgr],[member],', '添加', '', '/member/add', 1200, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-27 14:57:21', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1204649071379611695, 'member_detail', 'member', '[0],[user_mgr],[member],', '详情', '', '/member/detail', 1300, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-27 14:57:21', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1204649071379611696, 'member_edit', 'member', '[0],[user_mgr],[member],', '编辑', '', '/member/edit', 1400, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-27 14:57:22', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1204649071379611697, 'member_delete', 'member', '[0],[user_mgr],[member],', '删除', '', '/member/delete', 1500, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-27 14:57:22', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1204649071379611698, 'wallet', 'finance_mgr', '[0],[finance_mgr],', '账户信息', '', '/wallet', 1300, 2, 'Y', NULL, 'ENABLE', NULL, NULL, '2019-12-30 11:32:46', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1204649071379611699, 'wallet_list', 'wallet', '[0],[finance_mgr],[wallet],', '列表', '', '/wallet/list', 1000, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-30 11:32:46', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1204649071379611700, 'wallet_add', 'wallet', '[0],[finance_mgr],[wallet],', '添加', '', '/wallet/add', 1200, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-30 11:32:46', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1204649071379611701, 'wallet_detail', 'wallet', '[0],[finance_mgr],[wallet],', '详情', '', '/wallet/detail', 1300, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-30 11:32:46', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1204649071379611702, 'wallet_edit', 'wallet', '[0],[finance_mgr],[wallet],', '编辑', '', '/wallet/edit', 1400, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-30 11:32:46', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1204649071379611703, 'wallet_delete', 'wallet', '[0],[finance_mgr],[wallet],', '删除', '', '/wallet/delete', 1500, 3, 'N', NULL, 'ENABLE', NULL, NULL, '2019-12-30 11:32:46', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1211601311612944386, 'home_mgr', '0', '[0],', '首页', 'layui-icon layui-icon-home', '/member/home', 1, 1, 'Y', NULL, 'ENABLE', NULL, NULL, '2019-12-30 18:53:58', '2019-12-31 09:31:09', 1178634832995377153, 1178634832995377153);

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` bigint(20) NOT NULL COMMENT '主键',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '内容',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '通知表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (6, '欢迎', 'hi，Guns旗舰版发布了！', '2017-01-11 08:53:20', 1, '2018-12-28 23:24:48', 1);
INSERT INTO `sys_notice` VALUES (8, '你好', '你好，世界！', '2017-05-10 19:28:57', 1, '2018-12-28 23:28:26', 1);

-- ----------------------------
-- Table structure for sys_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_operation_log`;
CREATE TABLE `sys_operation_log`  (
  `operation_log_id` bigint(20) NOT NULL COMMENT '主键',
  `log_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '日志类型(字典)',
  `log_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '日志名称',
  `user_id` bigint(65) NULL DEFAULT NULL COMMENT '用户id',
  `class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '类名称',
  `method` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '方法名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `succeed` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否成功(字典)',
  `message` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '备注',
  PRIMARY KEY (`operation_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '操作日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_operation_log
-- ----------------------------
INSERT INTO `sys_operation_log` VALUES (1212937829736763394, '业务日志', '删除菜单', 1178634832995377153, 'cn.stylefeng.guns.modular.system.controller.MenuController', 'remove', '2020-01-03 11:24:49', '成功', '菜单名称=代理商管理');
INSERT INTO `sys_operation_log` VALUES (1212937880928243713, '业务日志', '删除菜单', 1178634832995377153, 'cn.stylefeng.guns.modular.system.controller.MenuController', 'remove', '2020-01-03 11:25:01', '成功', '菜单名称=算力套餐');
INSERT INTO `sys_operation_log` VALUES (1212937955918204929, '业务日志', '删除菜单', 1178634832995377153, 'cn.stylefeng.guns.modular.system.controller.MenuController', 'remove', '2020-01-03 11:25:19', '成功', '菜单名称=积分等级设置');
INSERT INTO `sys_operation_log` VALUES (1212941633874010113, '业务日志', '删除菜单', 1178634832995377153, 'cn.stylefeng.guns.modular.system.controller.MenuController', 'remove', '2020-01-03 11:39:56', '成功', '菜单名称=会员等级标准');
INSERT INTO `sys_operation_log` VALUES (1212941674789445634, '业务日志', '删除菜单', 1178634832995377153, 'cn.stylefeng.guns.modular.system.controller.MenuController', 'remove', '2020-01-03 11:40:05', '成功', '菜单名称=代理标准设置');
INSERT INTO `sys_operation_log` VALUES (1212941726756872194, '业务日志', '删除菜单', 1178634832995377153, 'cn.stylefeng.guns.modular.system.controller.MenuController', 'remove', '2020-01-03 11:40:18', '成功', '菜单名称=核心机制设置');

-- ----------------------------
-- Table structure for sys_relation
-- ----------------------------
DROP TABLE IF EXISTS `sys_relation`;
CREATE TABLE `sys_relation`  (
  `relation_id` bigint(20) NOT NULL COMMENT '主键',
  `menu_id` bigint(20) NULL DEFAULT NULL COMMENT '菜单id',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`relation_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_relation
-- ----------------------------
INSERT INTO `sys_relation` VALUES (1071348922291826689, 105, 5);
INSERT INTO `sys_relation` VALUES (1071348922308603906, 106, 5);
INSERT INTO `sys_relation` VALUES (1071348922316992514, 107, 5);
INSERT INTO `sys_relation` VALUES (1071348922321186818, 108, 5);
INSERT INTO `sys_relation` VALUES (1071348922329575426, 109, 5);
INSERT INTO `sys_relation` VALUES (1071348922337964034, 110, 5);
INSERT INTO `sys_relation` VALUES (1071348922342158337, 111, 5);
INSERT INTO `sys_relation` VALUES (1071348922350546946, 112, 5);
INSERT INTO `sys_relation` VALUES (1071348922354741249, 113, 5);
INSERT INTO `sys_relation` VALUES (1071348922363129858, 165, 5);
INSERT INTO `sys_relation` VALUES (1071348922371518465, 166, 5);
INSERT INTO `sys_relation` VALUES (1071348922375712770, 167, 5);
INSERT INTO `sys_relation` VALUES (1071348922384101377, 114, 5);
INSERT INTO `sys_relation` VALUES (1071348922388295681, 115, 5);
INSERT INTO `sys_relation` VALUES (1071348922396684289, 116, 5);
INSERT INTO `sys_relation` VALUES (1071348922405072897, 117, 5);
INSERT INTO `sys_relation` VALUES (1071348922413461505, 118, 5);
INSERT INTO `sys_relation` VALUES (1071348922417655810, 162, 5);
INSERT INTO `sys_relation` VALUES (1071348922426044418, 163, 5);
INSERT INTO `sys_relation` VALUES (1071348922430238722, 164, 5);
INSERT INTO `sys_relation` VALUES (1071348922430238723, 119, 5);
INSERT INTO `sys_relation` VALUES (1071348922447015937, 120, 5);
INSERT INTO `sys_relation` VALUES (1071348922451210242, 121, 5);
INSERT INTO `sys_relation` VALUES (1071348922459598850, 122, 5);
INSERT INTO `sys_relation` VALUES (1071348922463793154, 150, 5);
INSERT INTO `sys_relation` VALUES (1071348922472181762, 151, 5);
INSERT INTO `sys_relation` VALUES (1071348922476376065, 128, 5);
INSERT INTO `sys_relation` VALUES (1071348922480570369, 134, 5);
INSERT INTO `sys_relation` VALUES (1071348922488958977, 158, 5);
INSERT INTO `sys_relation` VALUES (1071348922497347586, 159, 5);
INSERT INTO `sys_relation` VALUES (1071348922501541890, 130, 5);
INSERT INTO `sys_relation` VALUES (1071348922501541891, 131, 5);
INSERT INTO `sys_relation` VALUES (1071348922518319106, 135, 5);
INSERT INTO `sys_relation` VALUES (1071348922526707713, 136, 5);
INSERT INTO `sys_relation` VALUES (1071348922530902017, 137, 5);
INSERT INTO `sys_relation` VALUES (1071348922535096321, 152, 5);
INSERT INTO `sys_relation` VALUES (1071348922543484930, 153, 5);
INSERT INTO `sys_relation` VALUES (1071348922547679233, 154, 5);
INSERT INTO `sys_relation` VALUES (1071348922556067841, 132, 5);
INSERT INTO `sys_relation` VALUES (1071348922560262146, 138, 5);
INSERT INTO `sys_relation` VALUES (1071348922564456450, 139, 5);
INSERT INTO `sys_relation` VALUES (1071348922568650754, 140, 5);
INSERT INTO `sys_relation` VALUES (1071348922577039361, 155, 5);
INSERT INTO `sys_relation` VALUES (1071348922577039362, 156, 5);
INSERT INTO `sys_relation` VALUES (1071348922577039363, 157, 5);
INSERT INTO `sys_relation` VALUES (1071348922602205185, 133, 5);
INSERT INTO `sys_relation` VALUES (1071348922610593794, 160, 5);
INSERT INTO `sys_relation` VALUES (1071348922610593795, 161, 5);
INSERT INTO `sys_relation` VALUES (1071348922618982402, 141, 5);
INSERT INTO `sys_relation` VALUES (1071348922627371009, 142, 5);
INSERT INTO `sys_relation` VALUES (1071348922631565313, 143, 5);
INSERT INTO `sys_relation` VALUES (1071348922639953922, 144, 5);
INSERT INTO `sys_relation` VALUES (1211821882594512898, 105, 1);
INSERT INTO `sys_relation` VALUES (1211821882615484417, 106, 1);
INSERT INTO `sys_relation` VALUES (1211821882636455938, 107, 1);
INSERT INTO `sys_relation` VALUES (1211821882653233153, 108, 1);
INSERT INTO `sys_relation` VALUES (1211821882665816065, 109, 1);
INSERT INTO `sys_relation` VALUES (1211821882674204673, 110, 1);
INSERT INTO `sys_relation` VALUES (1211821882690981890, 111, 1);
INSERT INTO `sys_relation` VALUES (1211821882707759105, 112, 1);
INSERT INTO `sys_relation` VALUES (1211821882720342017, 113, 1);
INSERT INTO `sys_relation` VALUES (1211821882732924929, 165, 1);
INSERT INTO `sys_relation` VALUES (1211821882745507842, 166, 1);
INSERT INTO `sys_relation` VALUES (1211821882758090754, 167, 1);
INSERT INTO `sys_relation` VALUES (1211821882766479362, 114, 1);
INSERT INTO `sys_relation` VALUES (1211821882783256577, 115, 1);
INSERT INTO `sys_relation` VALUES (1211821882804228098, 116, 1);
INSERT INTO `sys_relation` VALUES (1211821882808422402, 117, 1);
INSERT INTO `sys_relation` VALUES (1211821882825199618, 118, 1);
INSERT INTO `sys_relation` VALUES (1211821882837782530, 162, 1);
INSERT INTO `sys_relation` VALUES (1211821882850365442, 163, 1);
INSERT INTO `sys_relation` VALUES (1211821882858754050, 164, 1);
INSERT INTO `sys_relation` VALUES (1211821882875531265, 119, 1);
INSERT INTO `sys_relation` VALUES (1211821882888114178, 120, 1);
INSERT INTO `sys_relation` VALUES (1211821882892308482, 121, 1);
INSERT INTO `sys_relation` VALUES (1211821882909085697, 122, 1);
INSERT INTO `sys_relation` VALUES (1211821882921668610, 150, 1);
INSERT INTO `sys_relation` VALUES (1211821882934251522, 151, 1);
INSERT INTO `sys_relation` VALUES (1211821882942640129, 128, 1);
INSERT INTO `sys_relation` VALUES (1211821882959417345, 134, 1);
INSERT INTO `sys_relation` VALUES (1211821882967805953, 158, 1);
INSERT INTO `sys_relation` VALUES (1211821882980388865, 159, 1);
INSERT INTO `sys_relation` VALUES (1211821882997166081, 131, 1);
INSERT INTO `sys_relation` VALUES (1211821883005554690, 135, 1);
INSERT INTO `sys_relation` VALUES (1211821883022331906, 136, 1);
INSERT INTO `sys_relation` VALUES (1211821883026526209, 137, 1);
INSERT INTO `sys_relation` VALUES (1211821883043303425, 152, 1);
INSERT INTO `sys_relation` VALUES (1211821883060080641, 153, 1);
INSERT INTO `sys_relation` VALUES (1211821883068469250, 154, 1);
INSERT INTO `sys_relation` VALUES (1211821883081052162, 132, 1);
INSERT INTO `sys_relation` VALUES (1211821883093635074, 138, 1);
INSERT INTO `sys_relation` VALUES (1211821883106217985, 139, 1);
INSERT INTO `sys_relation` VALUES (1211821883114606594, 140, 1);
INSERT INTO `sys_relation` VALUES (1211821883127189506, 155, 1);
INSERT INTO `sys_relation` VALUES (1211821883143966722, 156, 1);
INSERT INTO `sys_relation` VALUES (1211821883152355330, 157, 1);
INSERT INTO `sys_relation` VALUES (1211821883164938242, 133, 1);
INSERT INTO `sys_relation` VALUES (1211821883173326850, 160, 1);
INSERT INTO `sys_relation` VALUES (1211821883181715457, 161, 1);
INSERT INTO `sys_relation` VALUES (1211821883194298369, 1161083318982619138, 1);
INSERT INTO `sys_relation` VALUES (1211821883211075586, 1161885547658403860, 1);
INSERT INTO `sys_relation` VALUES (1211821883223658498, 1161885547658403861, 1);
INSERT INTO `sys_relation` VALUES (1211821883232047106, 1161885547658403862, 1);
INSERT INTO `sys_relation` VALUES (1211821883244630017, 1161885547658403863, 1);
INSERT INTO `sys_relation` VALUES (1211821883261407233, 1161885547658403864, 1);
INSERT INTO `sys_relation` VALUES (1211821883278184449, 1161885547658403865, 1);
INSERT INTO `sys_relation` VALUES (1211821883290767362, 1182481487490396174, 1);
INSERT INTO `sys_relation` VALUES (1211821883303350273, 1182481487490396175, 1);
INSERT INTO `sys_relation` VALUES (1211821883320127490, 1182481487490396176, 1);
INSERT INTO `sys_relation` VALUES (1211821883345293314, 1182481487490396177, 1);
INSERT INTO `sys_relation` VALUES (1211821883357876226, 1182481487490396178, 1);
INSERT INTO `sys_relation` VALUES (1211821883378847746, 1182481487490396179, 1);
INSERT INTO `sys_relation` VALUES (1211821883395624961, 1203963870223663136, 1);
INSERT INTO `sys_relation` VALUES (1211821883404013570, 1203963870223663137, 1);
INSERT INTO `sys_relation` VALUES (1211821883420790785, 1203963870223663138, 1);
INSERT INTO `sys_relation` VALUES (1211821883437568002, 1203963870223663139, 1);
INSERT INTO `sys_relation` VALUES (1211821883445956609, 1203963870223663140, 1);
INSERT INTO `sys_relation` VALUES (1211821883462733825, 1203963870223663141, 1);
INSERT INTO `sys_relation` VALUES (1211821883475316737, 1161287414551289858, 1);
INSERT INTO `sys_relation` VALUES (1211821883492093954, 1161476427667103745, 1);
INSERT INTO `sys_relation` VALUES (1211821883504676866, 1150966441220452353, 1);
INSERT INTO `sys_relation` VALUES (1211821883513065474, 1150976468895371265, 1);
INSERT INTO `sys_relation` VALUES (1211821883525648385, 1161479110171951105, 1);
INSERT INTO `sys_relation` VALUES (1211821883542425602, 1161480182831738882, 1);
INSERT INTO `sys_relation` VALUES (1211821883555008513, 1161517839653666818, 1);
INSERT INTO `sys_relation` VALUES (1211821883563397121, 1203963870223663142, 1);
INSERT INTO `sys_relation` VALUES (1211821883575980034, 1203963870223663143, 1);
INSERT INTO `sys_relation` VALUES (1211821883592757250, 1203963870223663144, 1);
INSERT INTO `sys_relation` VALUES (1211821883601145858, 1203963870223663145, 1);
INSERT INTO `sys_relation` VALUES (1211821883617923074, 1203963870223663146, 1);
INSERT INTO `sys_relation` VALUES (1211821883630505985, 1203963870223663147, 1);
INSERT INTO `sys_relation` VALUES (1211821883647283202, 1161287661230891010, 1);
INSERT INTO `sys_relation` VALUES (1211821883685031938, 1161287661230891029, 1);
INSERT INTO `sys_relation` VALUES (1211821883697614849, 1150950637493944321, 1);
INSERT INTO `sys_relation` VALUES (1211821883710197762, 1150950921758703618, 1);
INSERT INTO `sys_relation` VALUES (1211821883726974978, 1150951184716398593, 1);
INSERT INTO `sys_relation` VALUES (1211821883739557889, 1150951353369362434, 1);
INSERT INTO `sys_relation` VALUES (1211821883752140802, 1150951627794284545, 1);
INSERT INTO `sys_relation` VALUES (1211821883764723714, 1150963764302426114, 1);
INSERT INTO `sys_relation` VALUES (1211821883773112322, 1168855402156584968, 1);
INSERT INTO `sys_relation` VALUES (1211821883785695234, 1168855402156584969, 1);
INSERT INTO `sys_relation` VALUES (1211821883794083841, 1168855402156584970, 1);
INSERT INTO `sys_relation` VALUES (1211821883802472450, 1168855402156584971, 1);
INSERT INTO `sys_relation` VALUES (1211821883815055361, 1168855402156584972, 1);
INSERT INTO `sys_relation` VALUES (1211821883827638273, 1168855402156584973, 1);
INSERT INTO `sys_relation` VALUES (1211821883836026881, 1162169504748765186, 1);
INSERT INTO `sys_relation` VALUES (1211821883852804098, 1162169504748765187, 1);
INSERT INTO `sys_relation` VALUES (1211821883861192706, 1162169504748765188, 1);
INSERT INTO `sys_relation` VALUES (1211821883873775617, 1162169504748765189, 1);
INSERT INTO `sys_relation` VALUES (1211821883882164226, 1162169504748765190, 1);
INSERT INTO `sys_relation` VALUES (1211821883886358530, 1162169504748765191, 1);
INSERT INTO `sys_relation` VALUES (1211821883898941442, 1162169504748765192, 1);
INSERT INTO `sys_relation` VALUES (1211821883915718657, 1203963870223663124, 1);
INSERT INTO `sys_relation` VALUES (1211821883928301570, 1203963870223663125, 1);
INSERT INTO `sys_relation` VALUES (1211821883940884481, 1203963870223663126, 1);
INSERT INTO `sys_relation` VALUES (1211821883949273089, 1203963870223663127, 1);
INSERT INTO `sys_relation` VALUES (1211821883974438914, 1203963870223663128, 1);
INSERT INTO `sys_relation` VALUES (1211821883991216130, 1203963870223663129, 1);
INSERT INTO `sys_relation` VALUES (1211821884406452226, 1168855402156584961, 1);
INSERT INTO `sys_relation` VALUES (1211821884414840833, 1182481487490396192, 1);
INSERT INTO `sys_relation` VALUES (1211821884431618049, 1182481487490396193, 1);
INSERT INTO `sys_relation` VALUES (1211821884440006657, 1182481487490396194, 1);
INSERT INTO `sys_relation` VALUES (1211821884456783873, 1182481487490396195, 1);
INSERT INTO `sys_relation` VALUES (1211821884469366786, 1182481487490396196, 1);
INSERT INTO `sys_relation` VALUES (1211821884477755393, 1182481487490396197, 1);
INSERT INTO `sys_relation` VALUES (1211821884481949698, 1204649071379611692, 1);
INSERT INTO `sys_relation` VALUES (1211821884494532610, 1204649071379611693, 1);
INSERT INTO `sys_relation` VALUES (1211821884511309825, 1204649071379611694, 1);
INSERT INTO `sys_relation` VALUES (1211821884523892737, 1204649071379611695, 1);
INSERT INTO `sys_relation` VALUES (1211821884536475649, 1204649071379611696, 1);
INSERT INTO `sys_relation` VALUES (1211821884553252866, 1204649071379611697, 1);
INSERT INTO `sys_relation` VALUES (1211821884561641474, 1169210450258558978, 1);
INSERT INTO `sys_relation` VALUES (1211821884570030081, 1169210450258558979, 1);
INSERT INTO `sys_relation` VALUES (1211821884582612993, 1169210450258558980, 1);
INSERT INTO `sys_relation` VALUES (1211821884595195906, 1169210450258558981, 1);
INSERT INTO `sys_relation` VALUES (1211821884603584514, 1169210450258558982, 1);
INSERT INTO `sys_relation` VALUES (1211821884616167426, 1169210450258558983, 1);
INSERT INTO `sys_relation` VALUES (1211821884624556034, 1169210450258558984, 1);
INSERT INTO `sys_relation` VALUES (1211821884632944641, 1203963870223663105, 1);
INSERT INTO `sys_relation` VALUES (1211821884649721858, 1203963870223663112, 1);
INSERT INTO `sys_relation` VALUES (1211821884653916161, 1203963870223663113, 1);
INSERT INTO `sys_relation` VALUES (1211821884670693378, 1203963870223663114, 1);
INSERT INTO `sys_relation` VALUES (1211821884679081985, 1203963870223663115, 1);
INSERT INTO `sys_relation` VALUES (1211821884687470594, 1203963870223663116, 1);
INSERT INTO `sys_relation` VALUES (1211821884704247809, 1203963870223663117, 1);
INSERT INTO `sys_relation` VALUES (1211821884712636418, 1203963870223663148, 1);
INSERT INTO `sys_relation` VALUES (1211821884716830721, 1203963870223663149, 1);
INSERT INTO `sys_relation` VALUES (1211821884733607937, 1203963870223663150, 1);
INSERT INTO `sys_relation` VALUES (1211821884737802241, 1203963870223663151, 1);
INSERT INTO `sys_relation` VALUES (1211821884754579457, 1203963870223663152, 1);
INSERT INTO `sys_relation` VALUES (1211821884758773761, 1203963870223663153, 1);
INSERT INTO `sys_relation` VALUES (1211821884775550977, 1204649071379611698, 1);
INSERT INTO `sys_relation` VALUES (1211821884783939585, 1204649071379611699, 1);
INSERT INTO `sys_relation` VALUES (1211821884792328194, 1204649071379611700, 1);
INSERT INTO `sys_relation` VALUES (1211821884804911106, 1204649071379611701, 1);
INSERT INTO `sys_relation` VALUES (1211821884817494017, 1204649071379611702, 1);
INSERT INTO `sys_relation` VALUES (1211821884830076929, 1204649071379611703, 1);
INSERT INTO `sys_relation` VALUES (1211821884997849090, 1211601311612944386, 1);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL COMMENT '主键id',
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '父角色id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '角色名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '提示',
  `sort` int(11) NULL DEFAULT NULL COMMENT '序号',
  `version` int(11) NULL DEFAULT NULL COMMENT '乐观锁',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, 0, '超级管理员', 'administrator', 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES (5, 1, '临时', 'temp', 2, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL COMMENT '主键id',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '头像',
  `account` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'md5密码盐',
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '名字',
  `birthday` datetime(0) NULL DEFAULT NULL COMMENT '生日',
  `sex` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '性别(字典)',
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '电话',
  `role_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '角色id(多个逗号隔开)',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门id(多个逗号隔开)',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '状态(字典)',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  `version` int(11) NULL DEFAULT NULL COMMENT '乐观锁',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '管理员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, '1', 'admin', 'c70f66db3549bac8e8150617e80a18f5', 'hsid8', 'root', '2018-11-16 00:00:00', 'M', 'sn93@qq.com', '18200000000', '1', 27, 'ENABLE', '2016-01-29 08:49:53', NULL, '2018-12-28 22:52:24', 24, 25);
INSERT INTO `sys_user` VALUES (13, '1', 'root', 'c70f66db3549bac8e8150617e80a18f5', 'hsid8', 'root', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (1178634832995377153, NULL, 'root', 'c70f66db3549bac8e8150617e80a18f5', 'hsid8', 'root', NULL, NULL, NULL, '', '1', 0, 'ENABLE', '2019-09-30 19:36:57', 1, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tmp_test
-- ----------------------------
DROP TABLE IF EXISTS `tmp_test`;
CREATE TABLE `tmp_test`  (
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `del` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '删除标志',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` bigint(20) NULL DEFAULT NULL COMMENT '更新人'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'test' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
